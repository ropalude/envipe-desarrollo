unit UUtileriasEnvipe;

interface
uses
	StdCtrls, SysUtils, DB,Classes, TVisitasEnvipe;

procedure fillDatosMuestra(datos:TDataSet;posicion:Integer; clean: Boolean = False);
function cargarObjectoVisitas(var visita : TVisitaEnvipe):boolean;
implementation

uses
 UStrHashMap, XConstantes, UDaoFactory, UCadenas, ULibrerias, RLibrerias, CBd, UGenerales,
 CUtileriasEnvipe, UAccesoSemaforos;

procedure fillDatosMuestra(datos:TDataSet;posicion:Integer; clean: Boolean = False);
var
	params: TStrHashMap;
begin
	try
		params := TStrHashMap.Create;
		try
    	datos.RecNo:=posicion;
      DATOS_MUESTRA.FOLIO            := ifThenStrng(clean, '', datos.FieldByName('FOLIO').AsString);
			DATOS_MUESTRA.ID_MUESTRA       := ifThenStrng(clean, '', datos.FieldByName('ID_MUESTRA').AsString);
			DATOS_MUESTRA.hogar            := ifThenStrng(clean, '', datos.FieldByName('HOGAR').AsString);
			DATOS_MUESTRA.UPM              := ifThenStrng(clean, '', datos.FieldByName('UPM').AsString);
			DATOS_MUESTRA.VIV_SEL          := ifThenStrng(clean, '', datos.FieldByName('VIV_SEL').AsString);
      DATOS_MUESTRA.MUN              := ifThenStrng(clean, '', datos.FieldByName('CVE_MUN').AsString);
      DATOS_MUESTRA.LOC              := ifThenStrng(clean, '', datos.FieldByName('CVE_LOC').AsString);
      DATOS_MUESTRA.AGEB_N           := ifThenStrng(clean, '', datos.FieldByName('AGEB').AsString);
      if Length(DATOS_MUESTRA.AGEB_N)= 5 then
        DATOS_MUESTRA.AGEB_AN:= DATOS_MUESTRA.AGEB_N[5]
      else if Length(DATOS_MUESTRA.AGEB_N)= 4 then
        DATOS_MUESTRA.AGEB_AN:= DATOS_MUESTRA.AGEB_N[4];
      DATOS_MUESTRA.AGEB_N := Copy(DATOS_MUESTRA.AGEB_N, 1, 3);
      DATOS_MUESTRA.ENT              := ifThenStrng(clean, '', datos.FieldByName('ENT').AsString);
      DATOS_MUESTRA.PROG             := ifThenStrng(clean, '', datos.FieldByName('PROG').AsString);
      DATOS_MUESTRA.COD_RES_VIV      := ifThenStrng(clean, '', datos.FieldByName('COD_RES_VIV').AsString);
      DATOS_MUESTRA.ALEATORIO        := ifThenStrng(clean, '', datos.FieldByName('ALEATORIO').AsString);
      DATOS_MUESTRA.TIPO_CAPTURA     := ifThenStrng(clean, '', datos.FieldByName('TIPO_SEL').AsString);
      DATOS_MUESTRA.DIA_CAPTURA      := ifThenStrng(clean, '', datos.FieldByName('DIA_CAPTURA').AsString);
      DATOS_MUESTRA.MES_CAPTURA      := ifThenStrng(clean, '', datos.FieldByName('MES_CAPTURA').AsString);
      DATOS_MUESTRA.NUM_REN_SEL      := ifThenStrng(clean, '', datos.FieldByName('NUM_REN_SEL').AsString);
      DATOS_MUESTRA.PROG_VIV         := ifThenStrng(clean, '', datos.FieldByName('PROG').AsString);
			params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
			params.put('id_tr_periodo',datos.FieldByName('ID_TR_PERIODO').AsString);
		  params.put('fecha_actual',FormatDateTime(secuencias.SECUENCIA_PERIODO, NOW));
			DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA:= ifThenStrng(clean, '', datos.FieldByName('ID_ENVIPE2023_MUESTRA').AsString);
			DATOS_MUESTRA.ID_ESTATUS           := ifThenStrng(clean, '', datos.FieldByName('ID_ESTATUS').AsString);
			DATOS_MUESTRA.ID_MOVIMIENTO        := ifThenStrng(clean, '', TDaoFactory.getInstance().toField('TcMuestras', 'row', params, 'id_movimiento'));
      DATOS_MUESTRA.ASIGNADO             := (not clean) and (accesoTipoInstalacion(params));
		  ID_GENERICO                        := ifThenStrng(clean, '', DATOS_MUESTRA.ID_MUESTRA);
      DATOS_MUESTRA.ID_TR_PERIODO        := datos.FieldByName('ID_TR_PERIODO').AsString;
      DATOS_MUESTRA.TOTAL_HOGARES        := ifThenStrng(clean, '', datos.FieldByName('NUMERO_HOGARES').AsString);

		except
			on e: exception do
				managerException('[ULevantamiento.fillDatosMuestra]', e);
		end; // Try-except
	finally
		if Assigned(params) then
			freeandnil(params);
	end;
end;

function cargarObjectoVisitas(var visita : TVisitaEnvipe):boolean;
var
	tablaPrincipal:String;
begin
	try
		result:=false;
		tablaPrincipal := 'TrEnvipeMuestras';
   	visita:= TVisitaEnvipe.create(tablaPrincipal);
		result:=true;
	except
		on  e: exception do
			managerException('[UUtileriasEnvipe.cargarObjectoVisitas]',e);
	end;
end;
end.
