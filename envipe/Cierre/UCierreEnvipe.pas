unit UCierreEnvipe;

interface
uses UCierre, DB;

type
	TCierreEnvipe = class(TCierre)
		 function doCierreEspecifico:boolean; override;
     function doCierreParcial: Boolean; override;
	end;

implementation
uses UStrHashMap,SysUtils,UDaoFactory, Ulibrerias, UISelect, CLevantamiento, UCadenas,
     CEstatusEnvipe, XConstantes;

function TCierreEnvipe.doCierreEspecifico: boolean;
var
	params    : TStrHashMap;
	datasetAux: TDataset;
begin
	try
		try
			params:=TStrHashMap.Create;
      params.put('condicion', 'tr_movimientos.id_estatus not in ('+ estatusEnvipe.ELIMINADO_REINICIO+ ','+ estatusEnvipe.FINALIZADO+','+ estatusEnvipe.LIBERADO_DE_CAMPO+')'
      + ' and tr_envipe_muestras.cod_res_viv not in (' + comillas('01')+ ','+ comillas('02') +')');
			dataSetAux:= TDaoFactory.getInstance().findViewCriteria('VistaCierre', 'faltantesCierre', params);
			result:=dataSetAux.FieldByName('TOTAL').AsString= '0';
		except
			on e: exception do
				managerException('[TCierreEnvipe.doCierreEspecifico]',e);
		end;//try-except
	finally
		if Assigned(params) then
			freeandnil(params);
		 TUISelect.freeDataSet(dataSetAux);
	end; //try-finally
end;

function TCierreEnvipe.doCierreParcial: Boolean;
begin
  try
    result:= True;
  except
    on e: exception do
				managerException('[TCierreEnvipe.doCierreParcial]',e);
  end;//try-except
end;
end.
