unit TDuplicarHogares;

interface

uses
  TMovimientos, XConstantes, ZDataset, UStrHashMap, Classes, SysUtils, CBD;

type

	TTDuplicarHogares= class(TMovimiento)
    protected
			idTcMuestra: String;
			fHogar     : String;
		public
      idMuestra          : String;
      idEnvipe2023Muestra: String;
      constructor create(pIdTcMuestra,pHogar: String);
			function execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean; override;
      function duplicarHogar(session: TZQuery; var params: TStrHashMap; modulo: string; idKey: String= ''): String;
	end;

implementation

uses
  UDaoFactory, CEstatusEnvipe, UCadenas;

constructor TTDuplicarHogares.create(pIdTcMuestra,pHogar: String);
begin
	idTcMuestra:= pIdTcMuestra;
	fHogar     := pHogar;
end;

function TTDuplicarHogares.execute(accion: TAccion; session: TZQuery; params: TStrHashMap): boolean;
begin
  try
    case accion of
      DUPLICAR: begin
        session.SQL.Clear;
        idMuestra          := duplicarHogar(session, params, 'TcMuestras');
        session.SQL.Clear;
        inherited execute(accion, session, params, true, idMuestra);
        session.SQL.Clear;
        idEnvipe2023Muestra:= duplicarHogar(session, params, 'TrEnvipeMuestras', idMuestra);
        result             := (idMuestra<> '-1') and (idEnvipe2023Muestra<> '-1');
      end; // AGREGAR
    end; // case
  except
    on e: exception do
      raise Exception.Create(e.Message+ '[TTDuplicarHogares.execute]');
  end; // try-except
end;

function TTDuplicarHogares.duplicarHogar(session: TZQuery; var params: TStrHashMap; modulo: string; idKey: String= ''): String;
var
  muestraHogar, interior: TStringList;
  i                     : Integer;
  idMuestra             : String;
  idMovimiento          : String;
begin
  try
    try
      muestraHogar:= TStringList.Create;
      muestraHogar.Delimiter:= '|';
      muestraHogar.StrictDelimiter := True;
      if modulo = 'TrEnvipeMuestras' then begin
        idMuestra:= idTcMuestra;
        params.put('id_muestra', idMuestra);
      end;
      muestraHogar.DelimitedText:= TDaoFactory.getInstance().toValuesString(modulo, 'row', params);
      interior:= TStringList.Create;
      for i := 0 to muestraHogar.Count - 1 do begin
			 interior.Clear;
			 interior.Delimiter:='~';
       interior.StrictDelimiter := True;
			 interior.DelimitedText:=muestraHogar[i];
       if (interior.Count=2) then begin
          if(lowercase(interior[0]) = 'colonia')    then
            params.put(lowercase(interior[0]), Copy(interior[1],0,79))
          else begin
				    params.put(lowercase(interior[0]), interior[1]);
          end;
       end;
      end; // for
      idMovimiento:= params.get('id_movimiento');
      params.put('id_movimiento', '');
			params.put('id_muestra', idMuestra);
			params.put('hogar',fhogar);
      if(isEmpty(idKey)) then
  		  result:= TDaoFactory.getInstance().insert(modulo,'duplicarEnvipe',params, bitacoraEspecifica, session, true)
      else begin
        params.put('id_muestra', idKey); //Se agregan los hogares adicionales.
        result:= TDaoFactory.getInstance().insert(modulo,'duplicarEnvipe',params, bitacoraEspecifica, session, true, idKey);
      end; // if-else
      params.put('id_movimiento', idMovimiento);
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TTDuplicarHogares.duplicarHogar]');
    end; // try-except
  finally
    FreeAndNil(muestraHogar);
    FreeAndNil(interior);
  end; // try-finally
end;

end.
