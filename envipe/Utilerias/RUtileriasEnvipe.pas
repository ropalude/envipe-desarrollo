unit RUtileriasEnvipe;

interface
type
	TDatosMuestra= record
		ID_MUESTRA               : String;
		HOGAR                    : String;
    FOLIO                    : string;
		UPM                      : String;
		VIV_SEL                  : String;
		ID_ENVIPE2023_MUESTRA    : String;
		SUP_PARAM                : string;
		NR_PARAM                 : string;
		ID_MOVIMIENTO            : string;
		ID_ESTATUS               : string;
    SEMANA_ACTUAL            : string;
    MUN                      : string;
    LOC                      : string;
    AGEB_N                   : string;
    AGEB_AN                  : string;
    ENT                      : string;
    PROG                     : string;
    PROG_VIV                 : string;
    COD_RES_VIV              : string;
    ID_TR_PERIODO            : string;
    TOTAL_HOGARES            : string;

    //PARAMETROS
    ENT_PARAM                : string;
    mun_param                : String;
    loc_param                : String;
    ageb_param               : String;
    upm_param                : String;
    viv_sel_param            : String;
    ALEATORIO                : String;
    TIPO_CAPTURA             : string;
    DIA_CAPTURA              : string;
    MES_CAPTURA              : string;
    NUM_REN_SEL              : string;
    DELITO                   : string;

    param_bpcod              : String;
    param_nd_tipo            : String;
    param_td_tipo            : String;
    param_ent                : String;
    param_mun                : String;
    param_loc                : String;
    param_ageb_n             : String;
    param_ageb_an            : String;
    param_upm                : String;
    param_viv_sel            : String;
    param_t_inst             : String;
    param_hogar              : String;
    param_modulo             : String;
    param_modulo_de          : String;
    param_numentrevistador   : String;
    para_numjefeentrevistador: String;
    param_r_sel              : String;
    param_id_tr_muestra_modul: String;
    param_resul_h            : String;
    param_p_p_1_36           : String;

    ASIGNADO                 : Boolean;

	end;
implementation

end.
