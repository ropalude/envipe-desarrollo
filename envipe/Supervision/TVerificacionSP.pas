unit TVerificacionSP;

interface
uses
   UBaseTnx, CBD, ZDataset, XConstantes, SysUtils, UStrHashMap, RBD, RLibrerias;

type
  TTransaccion= class(IBaseTnx)
  public
    function execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean; override;
  end;

implementation

uses
  UDaoFactory, UCadenas, UDml;


function TTransaccion.execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean;
var
  datosTabla : TDatostabla;
  bitacora  : TBitacora;
begin
  try
    bitacora.tipo       := TTipoBitacora.SIN_BITACORA;
    datosTabla.NAME     := 'tr_envipe2019_Verificacion';
    datosTabla.WEB_NAME := 'tr_envipe2019_Verificacion';
    datosTabla.ID_KEY   := 'id_envipe2019_Verificacion';
    case accion of
      MODIFICAR: begin
        params.put('registro_captura', FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now));
        result:= TDaoFactory.getInstance.update('TrEnvipe2019Verificacion', 'actualizar', params, bitacora, session)> 0;
      end;
    end; // case
    if result then
      TDaoFactory.getInstance.generarUpsert('TrEnvipe2019Verificacion', 'identically', params, datosTabla, session);
  except
    on e: exception do
      raise;
  end; // try-except
end;

end.
