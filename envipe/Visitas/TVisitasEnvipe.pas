unit TVisitasEnvipe;

interface

uses TVisitas, UBaseTnx, CBD, ZDataset, XConstantes, SysUtils, UStrHashMap, UEstatus, Classes;

type
	TVisitaEnvipe= class(TVisita)
		constructor create(ptabla: String);overload;
    constructor create(pEstatus: TEstatus;ptabla,pcodRes:String);overload;
    function execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean; override;
    function verificarFiguras(var params: TStrHashMap): boolean;
    procedure verificarVisitaSupervisor(var params: TStrHashMap; session: TZQuery);
	end;
implementation

uses
	UDaoFactory, Variants,UCadenas, RLibrerias, TMovimientos,CEstatusEnvipe, RLevantamiento, DB, ULibrerias;

constructor TVisitaEnvipe.create(ptabla: String);
begin
	inherited create(ptabla);
end;

constructor TVisitaEnvipe.create(pEstatus: TEstatus; ptabla,pcodRes:String);
begin
	inherited create(pEstatus,ptabla,pcodRes);
end;

function TVisitaEnvipe.execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean;
var
	movimiento       : TMovimiento;
  idEstatus        : string;
  ds               : TDataSet;
  codResViv, campos: String;
begin
	try
		try
      campos   := '';
      codResViv:= '';
      idEstatus:= TDaoFactory.getInstance.toField('EstatusSemaforos', 'ultimoMovimiento', params, 'id_estatus');
      case accion of
      VISITA_MANUAL: begin
          result:=False;
          movimiento:= TMovimiento.create;  // crea el movimiento
          if not isEmpty(params.get('cod_res_viv')) then
            campos:= 'cod_res_viv='+ comillas(params.get('cod_res_viv'))+ ',';
          if not isEmpty(params.get('cod_neg_viv')) then
            if params.get('cod_neg_viv')<> 'null' then
              campos:= campos+ 'cod_neg_viv='+ comillas(params.get('cod_neg_viv'))+ ','
            else begin
              campos:= campos+ 'cod_neg_viv='+ params.get('cod_neg_viv')+ ',';
              params.put('cod_neg_viv', '');
            end; // if-else
          if not isEmpty(params.get('cod_neg_hog')) then
            campos:= campos+ 'cod_neg_hog='+ comillas(params.get('cod_neg_hog'))+ ',';
          if not isEmpty(params.get('cod_neg_des')) then
            campos:= campos+ 'cod_neg_des='+ comillas(params.get('cod_neg_des'))+ ',';
          params.put('campos', campos+ 'c_vis_viv='+comillas(estatusSemaforos.PARCIAL));
          TDaoFactory.getInstance().update('TrEnvipeMuestras','semaforo',params, bitacoraEspecifica,session); // cambia los semáforos
          if ((params.get('id_estatus')<> idEstatus) and (isEmpty(params.get('colectiva')))) then
            movimiento.execute(AGREGAR,session, params);   // agrega el movimiento
          inherited execute(accion, session, params); // agrega la visita
          params.put('id_movil_visita_detalle', idMovilVisitaDetalle);
          if verificarFiguras(params) then
            TDaoFactory.getInstance.insert('TrEnvipeVisitas', 'insertar', params, bitacoraEspecifica, session);
          result:=True;
        end; // case AGREGAR
        COMPLEMENTAR: begin
          inherited execute(AGREGAR, session, params); // agrega la visita cuando la inicia por cuestionario
          params.put('id_movil_visita_detalle', idMovilVisitaDetalle);
          if verificarFiguras(params) then
            TDaoFactory.getInstance.insert('TrEnvipeVisitas', 'insertar', params, bitacoraEspecifica, session);
          result:=True;
        end;
        VISITA_CERRAR: begin
          inherited execute(accion, session, params);
          verificarVisitaSupervisor(params,session);
          result:=True;
        end; // case VISITA_CERRAR
        GENERICO: begin
          {*******29 Abril 2020***************
           Actualiza el campo tr_movil_visitas.fecha_termino
          **********************************}
          if not isEmpty(params.get('actualizar_fecha')) then
            params.put('totRegistros',InttoStr(TDaoFactory.getInstance().update('TrMovilVisitas', 'row', params, bitacoraEspecifica, session)))
          else {*10 Dic. actualizar presencia del supevisor*}
            verificarVisitaSupervisor(params,session);
          result:=T;
        end; //GENERICO
      end; //CASE
		except
			on e:Exception do
				Exception.Create(e.Message+'[TVisitaEnvipe.execute]');
		end; // try-except
	finally
    session.SQL.Clear;
	  if Assigned(movimiento) then
		  freeandnil(movimiento);
	end; // finaly
end;

function TVisitaEnvipe.verificarFiguras(var params: TStrHashMap): boolean;
var
  datos     : TDataSet;
  parametros: TStrHashMap;
begin
  try
    try
      result    := F;
      parametros:= TStrHashMap.Create;
      {*******04 de Agosto 2020***************
        Vuelve a setear el num_emp cuando viene vacío en la credencial.
       **********************************}
      if isEmpty(USUARIO.NUM_EMP) then
        USUARIO.NUM_EMP:= TDaoFactory.getInstance().toField('TrMovilUsuarios', 'usuarioRegistrado',params, 'num_emp');
      params.put('num_emp', USUARIO.NUM_EMP);
      params.put('num_emp_le', USUARIO.NUM_EMP);
      datos:= TDaoFactory.getInstance.findViewCriteria('TrMovilUsuarios', 'getNumEmpENJE', parametros);
      if datos.RecordCount> 0 then begin
        params.put('num_emp_je', datos.FieldByName('num_emp_je').AsString);
        if USUARIO.ID_ROL= ROL_ENTREVISTADOR then
          params.put('num_emp_en', datos.FieldByName('num_emp_en').AsString);
        Result := T;
      end;

    except
			on e:Exception do
				Exception.Create(e.Message+'[TVisitaEnvipe.verificarFiguras]');
		end; // try-except
	finally
    FreeAndNil(datos);
    FreeAndNil(parametros);
	end; // finaly
end;

procedure TVisitaEnvipe.verificarVisitaSupervisor(var params: TStrHashMap; session: TZQuery);
begin
  try
    params.put('id_envipe2023_visita', TDaoFactory.getInstance().toField('TrEnvipeVisitas', 'ultimaVisita', params, 'id_envipe2023_visita'));
    TDaoFactory.getInstance.update('TrEnvipeVisitas', 'actualizarCampos', params, bitacoraEspecifica, session);
  except
		on e:Exception do
			Exception.Create(e.Message+'[TVisitaEnvipe.verificarVisitaSupervisor]');
  end; // try-except
end;

end.
