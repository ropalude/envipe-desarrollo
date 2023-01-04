unit TVictimizacion;

interface
uses
  UBaseTnx, ZDataset, XConstantes, SysUtils, UStrHashMap, RBD;

type
  TTransaccionVic= class(IBaseTnx)
    function execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean; override;
  end;

implementation

uses
	UDaoFactory, Cbd, UCadenas;

function TTransaccionVic.execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean;
var
  idDel : string;
begin
	try
    case accion of
      AGREGAR: begin
   		  result:= TDaoFactory.getInstance.insert('TrEnvipeVictimizaciones', 'row', params, bitacoraEspecifica,session) <> '-1';
        Result := TDaoFactory.getInstance.update('TrCuestionariosEnvipeEnvios', 'cambioTotalDelitos', params, bitacoraEspecifica,session) > 0;
      end;
      MODIFICAR: begin
				result:= TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'row', params, bitacoraEspecifica,session) > 0;
        Result := TDaoFactory.getInstance.update('TrCuestionariosEnvipeEnvios', 'cambioTotalDelitos', params, bitacoraEspecifica,session) > 0;
      end;
      BITACORA:
        result:= TDaoFactory.getInstance.insert('TrEnvipeVicJustifica', 'row', params, bitacoraEspecifica,session) <> '-1';
      ELIMINAR : begin
				result := TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'row', params, bitacoraEspecifica,session) > 0;
        {** Verificar el total de cuestionarios borrados lógicamente de la tabla del módulo de victimización. Feb. 2022 **}
        params.put('cuestBorrado', TDaoFactory.getInstance().toField('TrEnvipeVictimizaciones', 'cuestBorradoLogicamente',params, 'total'));
        idDel := ifThenStrng(isEmpty(params.get('cuestBorrado')), params.get('id_del')+'_0', params.get('id_del') + '_' + params.get('cuestBorrado'));
        params.put('id_del', idDel);
        Result := TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'victimizacionEliminado', params, bitacoraEspecifica,session) > 0;
        //Corrección para eliminar lógicamente los registros del cuestionario en las tablas dependientes del modulo. Marzo 2022
        Result := TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'updateDependientes', params, bitacoraEspecifica,session) > 0;
        params.put('tabla_dep', 'tr_envipe2023_modulo_obs');
        Result := TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'updateDependientes', params, bitacoraEspecifica,session) > 0;
        {*****************************************************}
        //Result := TDaoFactory.getInstance.update('TrCuestionariosEnvipeEnvios', 'victimizacionEliminado', params, bitacoraEspecifica,session) > 0;
        Result := TDaoFactory.getInstance.update('TrCuestionariosEnvipeEnvios', 'cambioTotalDelitos', params, bitacoraEspecifica,session) > 0;
      end;
      COMPLEMENTO:
        result:= TDaoFactory.getInstance.update('TrEnvipeVicJustifica', 'idVictimizacion', params, bitacoraEspecifica, session)>0;
    end; // case
  except
    on e: exception do
      raise;
  end; // try-except
end;

end.
