unit TEnviosEnvipe;

interface
uses
  SysUtils, UBaseTnx, CBD, ZDataset, XConstantes, UStrHashMap, DB, Classes, RInterpreteCuestionario;

type
	TTransaccion= class(IBasetnx)
    private
      procedure verificarLlaves(session: TZQuery);
      procedure actualizarCuestionario(var session: TZQuery; tablas: TCuestionariosEnvipe; parametros: TStrHashMap);
      function generarCondicion(const datos: TDataSet): String;
      procedure lanzarGeneradores(var session: TZQuery; params: TStrHashMap);
      procedure grabaCuestionario(var session: TZQuery; tablas: TCuestionariosEnvipe; params: TStrHashMap; semaforo: string; registro: string);
    public
      function execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean; override;
  end;
implementation
uses
  UDaoFactory, CInterpreteCuestionario, UCadenas, ULibrerias, CEstatusEnvipe;

function TTransaccion.execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean;
begin
	try
    case accion of
      BITACORA: begin
        verificarLlaves(session);
        lanzarGeneradores(session, parametros);
      end; // BITACORA
      MODIFICAR:
        TDaoFactory.getInstance.update('TrEnvipeMuestras', 'procesoVerMuestra', parametros, bitacoraEspecifica, session);
    end; // case
  except
    on e: Exception do
    raise ;
  end; // try-except
end;

procedure TTransaccion.verificarLlaves(session: TZQuery);
var
  parametros: TStrHashMap;
begin
  try
    try
      parametros:= TStrHashMap.Create;
      actualizarCuestionario(session, concentradoCuestionarios.CUES_VIVIENDA , parametros);
      actualizarCuestionario(session, concentradoCuestionarios.CUES_SOCIO , parametros);
      actualizarCuestionario(session, concentradoCuestionarios.CUES_PRINCIPAL , parametros);
      actualizarCuestionario(session, concentradoCuestionarios.CUES_VICTIMIZACION , parametros);
      //actualizarCuestionario(session, concentradoCuestionarios.CUES_DESPLAZAMIENTO , parametros);
    except
      on e: exception do begin
        managerException('[TEnviosEnvipe.verificarLlaves] ', e);
        raise;
      end;
    end; // try-except
  finally
    FreeAndNil(parametros);
  end; // try-finally
end;

procedure TTransaccion.actualizarCuestionario(var session: TZQuery; tablas: TCuestionariosEnvipe; parametros: TStrHashMap);
var
  i        : integer;
  datos    : TDataSet;
  idKey    : String;
begin
  try
    for i:= 0 to Length(tablas.datosTabla)- 1 do begin
      parametros.put('tabla', tablas.datosTabla[i].WEB_NAME);
      if tablas.datosTabla[i].GENERAR_ID then begin
        parametros.put('campos', tablas.datosTabla[i].UNIQUE_FIELDS);
        parametros.put('id_key', tablas.datosTabla[i].ID_KEY);
        try
          datos:= TDaoFactory.getInstance.findViewCriteria('TrCuestionariosEnvios', 'tablaSinIds', parametros);
          if datos.RecordCount> 0 then
            while not datos.Eof do begin
              parametros.put('valor', TDaoFactory.getInstance.getIdKey);
              parametros.put('condicion', generarCondicion(datos));
              TDaoFactory.getInstance().update('TrCuestionariosEnvios', 'actualizaId', parametros, bitacoraGeneral, session);
              datos.Next;
            end; // while
        finally
          FreeAndNil(datos);
        end; // try-finally
      end; // if
    end; // for
  except
    on e: exception do begin
      managerException('[TEnviosEnvipe.actualizarCuestionario] ', e);
      raise;
    end; // on except
  end;
end;

function TTransaccion.generarCondicion(const datos: TDataSet): String;
var
  i                      : integer;
  campo, valor, condicion: String;
begin
  try
    condicion:= '';
    for i:= 0 to datos.FieldCount - 1 do begin
      valor:= datos.FieldByName(datos.Fields[I].FieldName).AsString;
      campo:= datos.Fields[I].FieldName;
      if isEmpty(valor) then
        condicion:= condicion + '(' + campo  + '= '''' or ' + campo + ' is null)'
      else
        case datos.fields[I].DataType of
          ftWideString, ftString:
            condicion:= condicion + campo + '='+ comillas(valor);
          else
            condicion:= condicion + campo + '='+ valor;
        end; // case
      condicion:= condicion+ ' and ';
    end; // for
    result:= copy(condicion, 0, length(condicion)- 5);
  except
    on e: exception do begin
      managerException('[TEnviosEnvipe.generarCondicion] ', e);
      raise;
    end; // on except
  end;
end;

procedure TTransaccion.lanzarGeneradores(var session: TZQuery; params: TStrHashMap);
begin
  try
    if StrToBoolDef(params.get('vivienda'), F) then
      grabaCuestionario(session, concentradoCuestionarios.CUES_VIVIENDA, params, semaforo.VIVIENDA, 'registro_envio_1');
    if StrToBoolDef(params.get('sociodemografico'), F) then
      grabaCuestionario(session, concentradoCuestionarios.CUES_SOCIO, params, semaforo.SOCIODEMOGRAFICO, 'registro_envio_2');
    if StrToBoolDef(params.get('principal'), F) then
      grabaCuestionario(session, concentradoCuestionarios.CUES_PRINCIPAL, params, semaforo.PRINCIPAL, 'registro_envio_3');
    if StrToBoolDef(params.get('victimizacion'), F) then
      grabaCuestionario(session, concentradoCuestionarios.CUES_VICTIMIZACION, params, semaforo.VICTIMIZACION, 'registro_envio_4');
    //if StrToBoolDef(params.get('desplazamiento'), F) then
    //  grabaCuestionario(session, concentradoCuestionarios.CUES_DESPLAZAMIENTO, params, semaforo.DESPLAZAMIENTO, 'registro_envio_5');
  except
    on e: exception do begin
      managerException('[TEnviosEnvipe.lanzarGeneradores] ', e);
      raise;
    end; // on except
  end;
end;

procedure TTransaccion.grabaCuestionario(var session: TZQuery; tablas: TCuestionariosEnvipe; params: TStrHashMap; semaforo: string; registro: string);
var
  I                : Integer;
  estatus          : string;
  cResViv, cResHog : String;
  actualizaRegistro: boolean;
begin
  try
    actualizaRegistro:= false;
    for I := 0 to Length(tablas.datosTabla) - 1 do begin
      params.put('cuestionario', tablas.datosTabla[I].WEB_NAME);
      TDaoFactory.getInstance().generarUpsert('VistaCuestionarios', 'allCuestionario', params, tablas.datosTabla[I], session);
    end; // for I
    params.put('semaforo', semaforo);
    params.put('campo', registro);
    estatus:= TDaoFactory.getInstance.toField('EstatusSemaforos', 'getSemaforo', params, semaforo);

    // se pone el registro envio si esta finalizado el semaforo; o para el caso de vivienda el cod 13.1; o para el sdg el cod 06
    //TrEnvipeVvda statusByMuestra c_res
    if tablas.tipoCues= VIVIENDA then begin
      cResViv:= TDaoFactory.getInstance().toField('TrEnvipeVvda', 'statusByMuestra', params, 'C_RES');
      if (cResViv= '13.1') then
        actualizaRegistro:= true;
      // vivienda con code 06 en el Sociodemografico y semaforo gris
      cResHog:= TDaoFactory.getInstance().toField('TrEnvipeSdg', 'statusByMuestra', params, 'C_RES');
      if (cResHog= '06') and (estatus= estatusSemaforos.NO_APLICA) then
        actualizaRegistro:= true;
    end; // if vivienda

    if tablas.tipoCues= SOCIO then begin
      cResHog:= TDaoFactory.getInstance().toField('TrEnvipeSdg', 'statusByMuestra', params, 'C_RES');
      if (cResHog= '06') then
        actualizaRegistro:= true;
    end; // if socio

    if (estatus = estatusSemaforos.FINALIZADO) or (actualizaRegistro) then begin
      params.put('registro', FormatDateTime(secuencias.SECUENCIA, now));
      TDaoFactory.getInstance.update('TrEnvipeMuestras', 'registroEnvio', params, bitacoraEspecifica, session);
    end; // if estatus
  except
    on e: exception do begin
      managerException('[TEnviosEnvipe.actualizarCuestionario] ', e);
      raise;
    end; // on except
  end; // try-except
end;

end.
