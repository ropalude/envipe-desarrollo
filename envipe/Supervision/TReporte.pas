unit TReporte;

interface
uses
   UBaseTnx, CBD, ZDataset, XConstantes, SysUtils, UStrHashMap, RBD, RLibrerias;

type
  TTransaccion= class(IBaseTnx)
  public
    fecha       : string;
    finalizado  : Boolean;
    function execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean; override;
  end;

implementation

uses
  UDaoFactory, UCadenas, UDml;


function TTransaccion.execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean;
var
  bitacora  : TBitacora;
  datosTabla: TDatosTabla;
begin
  try
    bitacora.tipo           := TTipoBitacora.SIN_BITACORA;
    datosTabla.NAME         :='tr_resultados_sup';
    datosTabla.WEB_NAME     :='tr_resultados_sup';
    datosTabla.ID_KEY       :='id_muestra';
    case accion of
      AGREGAR:
				result:= TDaoFactory.getInstance.insert('TrResultadosSup','row',params, bitacora,session)<> '-1';
      MODIFICAR:
        result:= TDaoFactory.getInstance.update('TrResultadosSup', 'reporte', params, bitacora, session)> 0;
    end; // case
    if finalizado then
      TDaoFactory.getInstance().generarUpsert('TrResultadosSup', 'identically', params,datosTabla, session);
  except
    on e: exception do
      raise;
  end; // try-except
end;

end.
