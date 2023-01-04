unit TSupervision;

interface
uses
  UBaseTnx, ZDataset, XConstantes, SysUtils, UStrHashMap, CBD, RBD, TMovimientos, TVisitas, TVisitasEnvipe;
type
  TTransaccion= class(TMovimiento)
    function execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean; override;
public
  end;

implementation
uses
	UDaoFactory, UCadenas, DB, ULibrerias, CLevantamiento;

function TTransaccion.execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean;
begin
    try
      case accion of
        MODIFICAR:
          result:= TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session)> 0;
      end; // case
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.execute]');
    end;
end;

end.
