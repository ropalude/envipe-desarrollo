unit REstatusEnvipe;

interface
type

	TBotonSemaforo = (VACIO, C_VIS_VIV, C_VIV, C_HOG, C_VER, C_VIS_HOG, C_SDG, C_SEL, C_PRI, C_VIC, C_DES, C_VIC_, C_VIC_1_, C_VIC_2_, C_VIC_3_, C_VIC_4_ ,C_VIC_5_);

  TSemaforos= record
		SIN_INICIAR          : String;
		PARCIAL              : String;
		FINALIZADO           : String;
		NO_APLICA            : String;
	end;

	TMovilEstatus=record
		DISPONIBLE                      : String;
		ASIGNADO                        : String;
		LIBERADO_DE_CAMPO               : String;
		EN_CAPTURA                      : String;
    SEGUIMIENTO                     : String;
    VISTO_BUENO_SUPERVISOR          : String;
    CITA_CONCERTADA                 : String;
    SIN_CONTACTO_INICIAL            : String;
    BASICO_INCOMPLETO_CON_CITA      : String;
    FALTA_DEPORTES                  : String;
    DEPORTES_INCOMPLETO_CON_CITA    : String;
    EXPLOTACION                     : String;
    BASICO_COMPLETO_EN_OTRO_PERIODO : String;
    VALIDA_BASICO_SUPERVISOR        : String;
    VALIDA_DEPORTES_SUPERVISOR      : String;
    VALIDA_AMBOS_SUPERVISOR         : String;
    EN_REVISION                     : string;
    EN_VERIFICACION                 : string;
    VIVIENDA_INCOMPLETO             : string;
    VIVIENDA_COMPLETO               : string;
    SOCIO_COMPLETO                  : string;
    SOCIO_INCOMPLETO                : string;
    PRINCIPAL_INCOMPLETO            : string;
    PRINCIPAL_COMPLETO              : string;
    VICTIMIZACION_COMPLETO          : string;
    VICTIMIZACION_INCOMPLETO        : string;
    DESPLAZAMIENTO_INCOMPLETO       : string;
    DESPLAZAMIENTO_COMPLETO         : string;
    FINALIZADO                      : string;
    ELIMINADO_REINICIO              : string;
    RETORNO_A_CAMPO_DE_CAPTURA      : string;
	end;

  TTiposSemaforos= record
		VISITAS_VIVIENDA: String;
    VIVIENDA        : string;
    HOGAR           : string;
    VERIFICACION    : String;
    VISITAS_HOGAR   : String;
		SOCIODEMOGRAFICO: String;
    SELECCIONADO    : string;
    PRINCIPAL       : string;
    VICTIMIZACION   : string;
    VICTIMIZACIONES : string;
    SUPERVISION     : string;
    VERIFICACION_SP : string;
    DESPLAZAMIENTO  : string;
	end;

implementation

end.
