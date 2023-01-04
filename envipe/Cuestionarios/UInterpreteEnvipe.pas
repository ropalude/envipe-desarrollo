unit UInterpreteEnvipe;

interface

uses
	DB, SysUtils, Dialogs, XConstantes, UInterprete, RInterpreteCuestionario, UStrHashMap,
	UDaoFactory, Forms, UContenedorMaestro, UInterpreteFactory, Classes;

type
  TInterpreteEnvipe = class(TInterpreteFactory)
   public
    //heredados
    function lanzaInterprete(indiceCuestionario: TObject): boolean; override;
    procedure crearInterprete; override;
    procedure liberaInterprete; override;
    destructor destroy; virtual;
    //Estaticos
    class function getInstance: TInterpreteEnvipe; static;
   private
    //especificos
    function actualizarRespuesta(idKey: String; var cuestionario: TCuestionariosEnvipe): String;
    function getParametrosCapturadores(var cuestionario: TCuestionariosEnvipe; inicial: boolean = False): String;
    procedure fillDatos;
  end;

implementation

uses
	UCadenas, UTipos, ULibrerias, UGenerales, TLoggerUnit, CTemas,
	UDml, CInterpreteCuestionario, RLibrerias, RBd, //TInterpreteTransaccion,
  RUtileriasEnvipe, CUtileriasEnvipe;

class function TInterpreteEnvipe.getInstance(): TInterpreteEnvipe;
begin
	result:= TInterpreteEnvipe(TInterpreteFactory.getInstance(TInterpreteEnvipe));
end;

function TInterpreteEnvipe.getParametrosCapturadores(var cuestionario: TCuestionariosEnvipe; inicial: boolean = False): String;
var
	paramsCapturador, idKey, idBasico: string;
	params                           : TStrHashMap;
	datosTabla                       : TDatosTabla;
  parametros                       : TDatosMuestra;
begin
	try
		params:= TStrHashMap.Create;
		try
			idKey:= '';
      parametros:= cuestionario.parametros;
      params.put('id_cuestionario', inttostr(ord(cuestionario.tipoCues)));
  		if not inicial then begin
        params.put('id_muestra', parametros.ID_MUESTRA);
        params.put('bpcod', parametros.param_bpcod);
        params.put('nd_tipo', parametros.param_modulo);
        idKey   := TDaoFactory.getInstance.toField(cuestionario.tabla, 'obtenerId', params, 'id_key');
        idKey   := defaultValue(idKey, TDaoFactory.getInstance().getIdKey);
		  end // if not inicial
      else
        idKey:= TDaoFactory.getInstance.getIdKey;
      paramsCapturador:= 'xml='+ chr(39)+ TDaoFactory.getInstance.toField('TrCuestionarios', 'cuestionario', params, 'qfile_nombre')+ chr(39)+ '&bdfile='+ RUTAS.RUTA+ BDFILE+ SP;
			if isEmpty(parametros.ID_MUESTRA) then
				parametros.ID_MUESTRA:= '1';
			case cuestionario.tipoCues of
				VIVIENDA:	begin
          paramsCapturador:= paramsCapturador+
          //'id_envipe2021_vvda='+ idKey+ SP+
          'id_muestra='+ parametros.ID_MUESTRA+ SP+
          'upm='+ parametros.UPM+ SP+
          'prog='+ parametros.PROG+ SP+
          'viv_sel='+ parametros.VIV_SEL+ SP+
          'iktan_seed='+ USUARIO.SEMILLA;
          //'p_ent='+ parametros.ENT;
          if not isEmpty(altoContraste) then
            paramsCapturador:= paramsCapturador+ SP+ altoContraste;
          if not assigned(cuestionario.datosTabla) then begin
            SetLength(cuestionario.datosTabla, 2);
            cuestionario.datosTabla[0].NAME         := 'tr_envipe2023_vvda';
            cuestionario.datosTabla[0].WEB_NAME     := 'tr_envipe2023_vvda';
            cuestionario.datosTabla[0].ID_KEY       := 'id_muestra';

            cuestionario.datosTabla[1].NAME         := 'tr_envipe2023_vvda_obs';
            cuestionario.datosTabla[1].WEB_NAME     := 'tr_envipe2023_vvda_obs';
            cuestionario.datosTabla[1].ID_KEY       := 'id_envipe2023_vvda_obs';
            cuestionario.datosTabla[1].GENERAR_ID   := T;
            cuestionario.datosTabla[1].UNIQUE_FIELDS:= 'id_envipe2023_vvda_obs,id_muestra';
          end; // if
        end; // VIVIENDA
				SOCIO: begin
          paramsCapturador:= paramsCapturador+
          //'id_envipe2021_sdg='+ idKey+ SP+
          'id_muestra='+ parametros.ID_MUESTRA+ SP+
          'upm='+ parametros.UPM+ SP+
          'prog='+ parametros.PROG+ SP+
          'viv_sel='+ parametros.VIV_SEL+ SP+
          'hogar='+ parametros.HOGAR+ SP+
          //'p_ent='+ parametros.ENT+ SP+
          'tipo_cap='+ parametros.TIPO_CAPTURA+ SP+
          'dia_cap='+ parametros.DIA_CAPTURA+ SP+
          'mes_cap='+ parametros.MES_CAPTURA+ SP+
          'fac_eleg='+ parametros.aleatorio+ SP+
          'iktan_seed='+ USUARIO.SEMILLA;
          if not isEmpty(altoContraste) then
            paramsCapturador:= paramsCapturador+ SP+ altoContraste;
          if not assigned(cuestionario.datosTabla) then begin
            SetLength(cuestionario.datosTabla,3);
            cuestionario.datosTabla[0].NAME         := 'tr_envipe2023_sdg';
            cuestionario.datosTabla[0].WEB_NAME     := 'tr_envipe2023_sdg';
            cuestionario.datosTabla[0].ID_KEY       := 'id_muestra';

            cuestionario.datosTabla[1].NAME         := 'tr_envipe2023_sdg_int';
            cuestionario.datosTabla[1].WEB_NAME     := 'tr_envipe2023_sdg_int';
            cuestionario.datosTabla[1].ID_KEY       := 'id_envipe2023_sdg_int';
            cuestionario.datosTabla[1].GENERAR_ID   := T;
            cuestionario.datosTabla[1].UNIQUE_FIELDS:= 'id_envipe2023_sdg_int,id_muestra';

            cuestionario.datosTabla[2].NAME         := 'tr_envipe2023_sdg_obs';
            cuestionario.datosTabla[2].WEB_NAME     := 'tr_envipe2023_sdg_obs';
            cuestionario.datosTabla[2].ID_KEY       := 'id_envipe2023_sdg_obs';
            cuestionario.datosTabla[2].GENERAR_ID   := T;
            cuestionario.datosTabla[2].UNIQUE_FIELDS:= 'id_envipe2023_sdg_obs,id_muestra';
          end; // if
        end; // SOCIO
        PRINCIPAL: begin
          paramsCapturador:= paramsCapturador+
          //'id_envipe2021_eleg='+ idKey+ SP+
          'id_muestra='+ parametros.ID_MUESTRA+ SP+
          'upm='+ parametros.UPM+ SP+
          'prog='+ parametros.PROG+ SP+
          'viv_sel='+ parametros.VIV_SEL+ SP+
          'hogar='+ parametros.HOGAR+ SP+
          'num_ren='+ parametros.NUM_REN_SEL+ SP+
          'iktan_seed='+ USUARIO.SEMILLA;
          //'p_ent='+parametros.ENT+ SP+
          //'p_mun='+parametros.MUN;
          if not isEmpty(altoContraste) then
            paramsCapturador:= paramsCapturador+ SP+ altoContraste;
          if not assigned(cuestionario.datosTabla) then begin
            SetLength(cuestionario.datosTabla,9);
            cuestionario.datosTabla[0].NAME         := 'tr_envipe2023_eleg';
            cuestionario.datosTabla[0].WEB_NAME     := 'tr_envipe2023_eleg';
            cuestionario.datosTabla[0].ID_KEY       := 'id_muestra';

            cuestionario.datosTabla[1].NAME         := 'tr_envipe2023_eleg_ap4_8';
            cuestionario.datosTabla[1].WEB_NAME     := 'tr_envipe2023_eleg_ap4_8';
            cuestionario.datosTabla[1].ID_KEY       := 'id_envipe2023_eleg_ap4_8';
            cuestionario.datosTabla[1].GENERAR_ID   := T;
            cuestionario.datosTabla[1].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap4_8,id_muestra';

            cuestionario.datosTabla[2].NAME         := 'tr_envipe2023_eleg_ap5_3';
            cuestionario.datosTabla[2].WEB_NAME     := 'tr_envipe2023_eleg_ap5_3';
            cuestionario.datosTabla[2].ID_KEY       := 'id_envipe2023_eleg_ap5_3';
            cuestionario.datosTabla[2].GENERAR_ID   := T;
            cuestionario.datosTabla[2].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap5_3,id_muestra';

            cuestionario.datosTabla[3].NAME         := 'tr_envipe2023_eleg_ap6_10';
            cuestionario.datosTabla[3].WEB_NAME     := 'tr_envipe2023_eleg_ap6_10';
            cuestionario.datosTabla[3].ID_KEY       := 'id_envipe2023_eleg_ap6_10';
            cuestionario.datosTabla[3].GENERAR_ID   := T;
            cuestionario.datosTabla[3].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap6_10,id_muestra';

            cuestionario.datosTabla[4].NAME         := 'tr_envipe2023_eleg_ap6_15';
            cuestionario.datosTabla[4].WEB_NAME     := 'tr_envipe2023_eleg_ap6_15';
            cuestionario.datosTabla[4].ID_KEY       := 'id_envipe2023_eleg_ap6_15';
            cuestionario.datosTabla[4].GENERAR_ID   := T;
            cuestionario.datosTabla[4].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap6_15,id_muestra';

            cuestionario.datosTabla[5].NAME         := 'tr_envipe2023_eleg_ap6_20';
            cuestionario.datosTabla[5].WEB_NAME     := 'tr_envipe2023_eleg_ap6_20';
            cuestionario.datosTabla[5].ID_KEY       := 'id_envipe2023_eleg_ap6_20';
            cuestionario.datosTabla[5].GENERAR_ID   := T;
            cuestionario.datosTabla[5].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap6_20,id_muestra';

            cuestionario.datosTabla[6].NAME         := 'tr_envipe2023_eleg_ap6_4';
            cuestionario.datosTabla[6].WEB_NAME     := 'tr_envipe2023_eleg_ap6_4';
            cuestionario.datosTabla[6].ID_KEY       := 'id_envipe2023_eleg_ap6_4';
            cuestionario.datosTabla[6].GENERAR_ID   := T;
            cuestionario.datosTabla[6].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap6_4,id_muestra';

            cuestionario.datosTabla[7].NAME         := 'tr_envipe2023_eleg_ap7_3';
            cuestionario.datosTabla[7].WEB_NAME     := 'tr_envipe2023_eleg_ap7_3';
            cuestionario.datosTabla[7].ID_KEY       := 'id_envipe2023_eleg_ap7_3';
            cuestionario.datosTabla[7].GENERAR_ID   := T;
            cuestionario.datosTabla[7].UNIQUE_FIELDS:= 'id_envipe2023_eleg_ap7_3,id_muestra';

            cuestionario.datosTabla[8].NAME         := 'tr_envipe2023_eleg_obs';
            cuestionario.datosTabla[8].WEB_NAME     := 'tr_envipe2023_eleg_obs';
            cuestionario.datosTabla[8].ID_KEY       := 'id_envipe2023_eleg_obs';
            cuestionario.datosTabla[8].GENERAR_ID   := T;
            cuestionario.datosTabla[8].UNIQUE_FIELDS:= 'id_envipe2023_eleg_obs,id_muestra';
          end; // if
        end; // PRINCIPAL
        VICTIMIZACION: begin
          paramsCapturador:= paramsCapturador+
          //'id_envipe2021_modulo='+ idKey+ SP+
          'id_muestra='+ parametros.ID_MUESTRA+ SP+
          'upm='+ parametros.UPM+ SP+
          'prog='+ parametros.PROG+ SP+
          'viv_sel='+ parametros.VIV_SEL+ SP+
          'hogar='+ parametros.HOGAR+ SP+
          'num_ren='+ parametros.param_r_sel+ SP+
          'bpcod='+ parametros.param_bpcod+ SP+
          'nd_tipo='+ parametros.param_modulo+ SP+
          'td_tipo='+ parametros.param_modulo_de+ SP+
          'bpcod_opc='+ parametros.DELITO+ SP+
          'resul_hogar='+ parametros.param_resul_h+ SP+
          'ultimo_delito='+ parametros.param_p_p_1_36+ SP+
          'id_del='+ parametros.UPM+ parametros.VIV_SEL+ parametros.HOGAR+ parametros.param_r_sel+ parametros.param_bpcod+ parametros.param_modulo+parametros.DELITO+ SP+
          'ent='+ parametros.ENT+ SP+
          'mun='+ parametros.MUN+ SP+
          'loc='+ parametros.LOC+ SP+
          'ageb_n='+ parametros.AGEB_N+ SP+
          'ageb_an='+ parametros.AGEB_AN+ SP+
          'iktan_seed='+ USUARIO.SEMILLA;
          //'r_sel='+ parametros.param_r_sel+ SP+
          //'modulo='+ parametros.param_modulo+ SP+
          //'modulo_de='+ parametros.param_modulo_de+ SP+
//          't_inst=B'+ SP+
//          'resul_hogar=A'+ SP+
          if not isEmpty(altoContraste) then
            paramsCapturador:= paramsCapturador+ SP+ altoContraste;
          if not assigned(cuestionario.datosTabla) then begin
            SetLength(cuestionario.datosTabla,3);
            cuestionario.datosTabla[0].NAME         := 'tr_envipe2023_modulo';
            cuestionario.datosTabla[0].WEB_NAME     := 'tr_envipe2023_modulo';
            cuestionario.datosTabla[0].ID_KEY       := 'id_muestra,id_del';

            cuestionario.datosTabla[1].NAME         := 'tr_envipe2023_modulo_obs';
            cuestionario.datosTabla[1].WEB_NAME     := 'tr_envipe2023_modulo_obs';
            cuestionario.datosTabla[1].ID_KEY       := 'id_envipe2023_modulo_obs';
            cuestionario.datosTabla[1].GENERAR_ID   := T;
            cuestionario.datosTabla[1].UNIQUE_FIELDS:= 'id_envipe2023_modulo_obs,id_muestra,id_del';

            // tablas particionadas NO lleva GENERAR_ID y UNIQUE_FIELDS
            cuestionario.datosTabla[2].NAME         := 'tr_envipe2023_modulo_c';
            cuestionario.datosTabla[2].WEB_NAME     := 'tr_envipe2023_modulo_c';
            cuestionario.datosTabla[2].ID_KEY       := 'id_muestra,id_del';
          end; // if
        end; // VICTIMIZACION
        {DESPLAZAMIENTO: begin
          paramsCapturador:= paramsCapturador+
          'id_envipe2020_moddes='+ idKey+ SP+
          'id_muestra='+ parametros.ID_MUESTRA+ SP+
          'upm='+ parametros.UPM+ SP+
          'prog='+ parametros.PROG+ SP+
          'viv_sel='+ parametros.VIV_SEL;
          if not isEmpty(altoContraste) then
            paramsCapturador:= paramsCapturador+ SP+ altoContraste;

          if not assigned(cuestionario.datosTabla) then begin
            SetLength(cuestionario.datosTabla,5);
            cuestionario.datosTabla[0].NAME         := 'tr_envipe2020_moddes';
            cuestionario.datosTabla[0].WEB_NAME     := 'tr_envipe2020_moddes';
            cuestionario.datosTabla[0].ID_KEY       := 'id_envipe2020_moddes';

            cuestionario.datosTabla[1].NAME         := 'tr_envipe2020_moddes_nom';
            cuestionario.datosTabla[1].WEB_NAME     := 'tr_envipe2020_moddes_nom';
            cuestionario.datosTabla[1].ID_KEY       := 'id_envipe2020_moddes_nom';
            cuestionario.datosTabla[1].GENERAR_ID   := T;
            cuestionario.datosTabla[1].UNIQUE_FIELDS:= 'id_envipe2020,id_envipe2020_moddes,id_muestra,upm,prog,viv_sel';

            cuestionario.datosTabla[2].NAME         := 'tr_envipe2020_moddes_p2_1';
            cuestionario.datosTabla[2].WEB_NAME     := 'tr_envipe2020_moddes_p2_1';
            cuestionario.datosTabla[2].ID_KEY       := 'id_envipe2020_moddes_p2_1';
            cuestionario.datosTabla[2].GENERAR_ID   := T;
            cuestionario.datosTabla[2].UNIQUE_FIELDS:= 'id_envipe2020,id_envipe2020_moddes,id_muestra,upm,prog,viv_sel';

            cuestionario.datosTabla[3].NAME         := 'tr_envipe2020_ch_cp2_1';
            cuestionario.datosTabla[3].WEB_NAME     := 'tr_envipe2020_ch_cp2_1';
            cuestionario.datosTabla[3].ID_KEY       := 'id_envipe2020_ch_cp2_1';
            cuestionario.datosTabla[3].GENERAR_ID   := T;
            cuestionario.datosTabla[3].UNIQUE_FIELDS:= 'id_envipe2020,id_envipe2020_moddes,id_muestra,upm,prog,viv_sel';

            cuestionario.datosTabla[4].NAME         := 'tr_envipe2020_moddes_obs';
            cuestionario.datosTabla[4].WEB_NAME     := 'tr_envipe2020_moddes_obs';
            cuestionario.datosTabla[4].ID_KEY       := 'id_envipe2020_moddes_obs';
            cuestionario.datosTabla[4].GENERAR_ID   := T;
            cuestionario.datosTabla[4].UNIQUE_FIELDS:= 'id_envipe2020,id_envipe2020_moddes,id_muestra,upm,prog,viv_sel';
          end; // if
        end; // DESPLAZAMIENTO  }
			end; // case
			result:= paramsCapturador;
		except
			on e: exception do begin
        managerException('UInterpreteEncig.getParametrosCapturadores', e);
        params.put('mensaje', e.message);
        Mensaje(TDml.getInstance.getMensaje('UCapturadores', 'getParametrosCapturadores001', params), mtError, [mbOK], TDml.getInstance.getTituloMensaje('UCapturadores', 'getParametrosCapturadores001', params));
        raise ;
      end; // on e
		end; // try-except
	finally
		freeAndNil(params);
	end; // try-finally
end;

function TInterpreteEnvipe.lanzaInterprete(indiceCuestionario: TObject): boolean;
var
  cuestionario: TCuestionariosEnvipe;
  params :String;
  procedure obtenerCuestionario;
  begin
    if TTipoCuestionario(indiceCuestionario)= concentradoCuestionarios.CUES_VIVIENDA.tipoCues then
      cuestionario:= concentradoCuestionarios.CUES_VIVIENDA
    else
      if TTipoCuestionario(indiceCuestionario)= concentradoCuestionarios.CUES_SOCIO.tipoCues then
        cuestionario:= concentradoCuestionarios.CUES_SOCIO
      else
        if TTipoCuestionario(indiceCuestionario)= concentradoCuestionarios.CUES_PRINCIPAL.tipoCues then
          cuestionario:= concentradoCuestionarios.CUES_PRINCIPAL
        else
          if TTipoCuestionario(indiceCuestionario)= concentradoCuestionarios.CUES_VICTIMIZACION.tipoCues then
            cuestionario:= concentradoCuestionarios.CUES_VICTIMIZACION
          else
            //if TTipoCuestionario(indiceCuestionario)= concentradoCuestionarios.CUES_DESPLAZAMIENTO.tipoCues then
            //  cuestionario:= concentradoCuestionarios.CUES_DESPLAZAMIENTO
            //else
              raise Exception.Create('[UInterpreteEncig.lanzaInterprete] el indice de cuestionario no es correcto: '+inttostr(ord(TTipoCuestionario(indiceCuestionario))));
  end;
begin
	try
		try
      obtenerCuestionario;
//      fillDatos;
  	  params:= getParametrosCapturadores(cuestionario);
	  	inherited lanzaInterprete(cuestionario.interprete, params);
  		//actualizarRespuesta(cuestionario.parametros.ID_MUESTRA, cuestionario);
		except
			on e: exception do
				begin
					managerException('UInterpreteEncig.lanzaInterprete', e);
					raise;
				end;
		end; // try-except
	finally
	end; // finally
end;

procedure TInterpreteEnvipe.fillDatos;
var
  parametros: TDatosMuestra;
begin
  parametros.ID_MUESTRA                                  := '2582827';
  parametros.hogar                                       := '1';
  parametros.upm                                         := '1';
  parametros.VIV_SEL                                     := '1';
  parametros.ENT_PARAM                                   := '02';
  parametros.SUP_PARAM                                   := '01';
  parametros.NR_PARAM                                    := '01';
  parametros.SEMANA_ACTUAL                               := '1';
  parametros.ID_ESTATUS                                  := '1';
  parametros.ID_MOVIMIENTO                               := '1';
  concentradoCuestionarios.CUES_VIVIENDA.parametros      := parametros;
  concentradoCuestionarios.CUES_SOCIO.parametros         := parametros;
  concentradoCuestionarios.CUES_PRINCIPAL.parametros     := parametros;
  concentradoCuestionarios.CUES_VICTIMIZACION.parametros := parametros;

  //concentradoCuestionarios.CUES_DESPLAZAMIENTO.parametros:= parametros;
end;

procedure TInterpreteEnvipe.crearInterprete;
var
  params: String;
  i     : Integer;
begin
  fillDatos;
	params:= getParametrosCapturadores(concentradoCuestionarios.CUES_VIVIENDA, T);
	creaInterprete(concentradoCuestionarios.CUES_VIVIENDA.interprete, params);
  params:= getParametrosCapturadores(concentradoCuestionarios.CUES_SOCIO, T);
	creaInterprete(concentradoCuestionarios.CUES_SOCIO.interprete, params);
  params:= getParametrosCapturadores(concentradoCuestionarios.CUES_PRINCIPAL, T);
	creaInterprete(concentradoCuestionarios.CUES_PRINCIPAL.interprete, params);
  params:= getParametrosCapturadores(concentradoCuestionarios.CUES_VICTIMIZACION, T);
	creaInterprete(concentradoCuestionarios.CUES_VICTIMIZACION.interprete, params);

  //params:= getParametrosCapturadores(concentradoCuestionarios.CUES_DESPLAZAMIENTO, T);
	//creaInterprete(concentradoCuestionarios.CUES_DESPLAZAMIENTO.interprete, params);
end;

procedure TInterpreteEnvipe.liberaInterprete();
begin
	try
		liberarInterprete(concentradoCuestionarios.CUES_VIVIENDA.interprete);
		liberarInterprete(concentradoCuestionarios.CUES_SOCIO.interprete);
    liberarInterprete(concentradoCuestionarios.CUES_PRINCIPAL.interprete);
    liberarInterprete(concentradoCuestionarios.CUES_VICTIMIZACION.interprete);

    //liberarInterprete(concentradoCuestionarios.CUES_DESPLAZAMIENTO.interprete);

  	managerLogInfo('[UCuestionarios.liberaInterpreteCues] se liberan cuestionarios BASICO  e INTEGRANTE');
	except
		on e:exception do
			managerException('[UCuestionarios.liberaInterpreteCues]', e);
  end;
end;

function TInterpreteEnvipe.actualizarRespuesta(idKey:String; var cuestionario: TCuestionariosEnvipe): String;
var
	params: TStrHashMap;
	//transaccion: TTransaccion;
begin
	try
		try
			// pasar a una transacción
//			params     := TStrHashMap.Create;
//			transaccion:= TTransaccion.Create(cuestionario);
//			params.put('id_muestra', idKey);
//      params.put('campos',cuestionario.reHogar+'='+comillas(TDaoFactory.getInstance.toField(cuestionario.tabla, 'row',params,cuestionario.reCuest)));
//			transaccion.execute(COMPLEMENTAR, params);
//      transaccion.execute(MODIFICAR, params);
		except
			on e: exception do begin
        managerException('[UInterpreteEncig.actualizarRespuesta]', e);
				raise;
      end; // on e
		end; // try-except
	finally
		if assigned(params) then
			freeAndNil(params);
//		if assigned(transaccion) then
//			freeAndNil(transaccion);
	end; // try-finally
end;

destructor TInterpreteEnvipe.destroy;
begin
  liberaInterprete;
  inherited destroy;
end;

end.

