unit UEnviosEnvipe;

interface

uses
  IEnvios, Sysutils, Db, UStrHashMap;

type
	TEnviosEnvipe = class(IEnviosComun)
	  procedure construirSentenciasGenerales(); override;
	  procedure contruirUpsert;
    procedure modificaProcesoVec(modulo, idXml, valorProcesoVec: string; params: TStrHashMap);
    procedure marcaVerificados;
    procedure desmarcaVerificados;
  end;

implementation

uses
  ULibrerias, TEnviosEnvipe, UDaoFactory, XConstantes, CEstatusEnvipe;

const
  emDISPONIBLE  : integer = 0;
  emENVIADO     : integer = 1;

procedure TEnviosEnvipe.construirSentenciasGenerales();
begin
  try
    try
      // Se generan todos los upserts de muestras finalizadas y las que van a verificacion, se marcan REGISTRO_ENVIO de finalizadas
      contruirUpsert;
      // En caso de que una muestra ya no este en verificacion y tenga el PORCESO_VEC con uno este se cambia a vacio
      desmarcaVerificados;
      // Se marca con UNO el campo PROCESO_VEC de las muestras que van a verificacion
      marcaVerificados;
    except
      on e: exception do begin
        managerException('[UEnviosEnvipe.construirSentenciasGenerales]', e);
        raise;
      end;
    end; // try-except
  finally
    ID_GENERICO := '';
  end;
end;


procedure TEnviosEnvipe.contruirUpsert;
var
  muestras  : TDataSet;
  params    : TStrHashMap;
  transac   : TTransaccion;
begin
  try
    //aqui se verifica si la vivienda ya esta finalizada para generar los upsert
    try
    params  := TStrHashMap.Create;
    transac := TTransaccion.Create;
    params.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
    muestras:= TDaoFactory.getInstance.findViewCriteria('VistaCuestionarios', 'muestrasCuestionarios',params);
    if muestras.RecordCount > 0 then begin
      while not muestras.Eof do begin
        ID_GENERICO := muestras.FieldByName('ID_MUESTRA').AsString;
        params.put('id_muestra',            ID_GENERICO);
        params.put('id_envipe2023_muestra', muestras.FieldByName('id_envipe2023_muestra').AsString);
        params.put('vivienda',              muestras.FieldByName('VIVIENDA').AsString);
        params.put('sociodemografico',      muestras.FieldByName('SOCIODEMOGRAFICO').AsString);
        params.put('principal',             muestras.FieldByName('PRINCIPAL').AsString);
        params.put('victimizacion',         muestras.FieldByName('VICTIMIZACION').AsString);
        transac.execute(BITACORA, params);
        muestras.Next;
      end; // while
    end; // if muestras
    except
      on e: exception do begin
        managerException('[UEnviosEnvipe.contruirUpsert] ', e);
        raise;
      end;
    end; // try - except
  finally
    FreeAndNil(params);
    FreeAndNil(transac);
  end; // try- finally
end;

procedure TEnviosEnvipe.modificaProcesoVec(modulo, idXml, valorProcesoVec: string; params: TStrHashMap);
var
  muestras: TDataSet;
  transac : TTransaccion;
begin
  try
    try
      transac := TTransaccion.Create;
      muestras:= TDaoFactory.getInstance.findViewCriteria(modulo, idXml, params);
      params.put('p_ver', valorProcesoVec);
      while not muestras.Eof do begin
        ID_GENERICO := muestras.FieldByName('ID_MUESTRA').AsString;
        params.put('id_muestra', muestras.FieldByName('ID_MUESTRA').AsString);
        transac.execute(MODIFICAR, params);
        muestras.Next;
      end; // while
    except
      on e: exception do begin
        managerException('[UEnviosEnvipe.modificaProcesoVec] ', e);
        raise;
      end;
    end; // try - except
  finally
    FreeAndNil(transac);
    FreeAndNil(muestras);
  end; // try - finally
end;

procedure TEnviosEnvipe.desmarcaVerificados;
var
  params  : TStrHashMap;
begin
  try
    try
      params  := TStrHashMap.Create;
      modificaProcesoVec('TrEnvipeMuestras', 'verificacionDisponible', IntToStr(emDISPONIBLE), params);
    except
      on e: exception do begin
        managerException('[UEnviosEnvipe.desmarcaVerificados] ', e);
        raise;
      end;
    end; // try - except
  finally
    FreeAndNil(params);
  end;
end;

procedure TEnviosEnvipe.marcaVerificados;
var
  params  : TStrHashMap;
begin
  try
    try
      params  := TStrHashMap.Create;
      modificaProcesoVec('TrEnvipeMuestras', 'verificacionSinMarca', IntToStr(emENVIADO), params);
    except
      on e: exception do begin
        managerException('[UEnviosEnvipe.marcaVerificados] ', e);
        raise;
      end;
    end; // try - except
  finally
    FreeAndNil(params);
  end;
end;

end.
