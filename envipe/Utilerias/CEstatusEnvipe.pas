unit CEstatusEnvipe;

interface
uses
  REstatusEnvipe;

var
	estatusSemaforos: TSemaforos= (
		SIN_INICIAR         : '1';  // rojo
		PARCIAL             : '2';  // amarillo
		FINALIZADO          : '3';  // verde
		NO_APLICA           : '11'; // gris
	);

	estatusEnvipe: TMovilEstatus=(
		DISPONIBLE                      : '1';
		ASIGNADO                        : '2';
		LIBERADO_DE_CAMPO               : '108';
		EN_CAPTURA                      : '6';
    SEGUIMIENTO                     : '83';
    VISTO_BUENO_SUPERVISOR          : '332';
    CITA_CONCERTADA                 : '333';
    SIN_CONTACTO_INICIAL            : '334';
    BASICO_INCOMPLETO_CON_CITA      : '335';
    FALTA_DEPORTES                  : '336';
    DEPORTES_INCOMPLETO_CON_CITA    : '337';
    EXPLOTACION                     : '338';
    BASICO_COMPLETO_EN_OTRO_PERIODO : '339';
    VALIDA_BASICO_SUPERVISOR        : '340';
    VALIDA_DEPORTES_SUPERVISOR      : '341';
    VALIDA_AMBOS_SUPERVISOR         : '342';
    EN_REVISION                     : '323';
    EN_VERIFICACION                 : '93';
    VIVIENDA_INCOMPLETO             : '343';
    VIVIENDA_COMPLETO               : '344';
    SOCIO_COMPLETO                  : '119';
    SOCIO_INCOMPLETO                : '120';
    PRINCIPAL_INCOMPLETO            : '345';
    PRINCIPAL_COMPLETO              : '346';
    VICTIMIZACION_COMPLETO          : '348';
    VICTIMIZACION_INCOMPLETO        : '347';
    DESPLAZAMIENTO_INCOMPLETO       : '349';
    DESPLAZAMIENTO_COMPLETO         : '350';
    FINALIZADO                      : '354';
    ELIMINADO_REINICIO              : '298';
    RETORNO_A_CAMPO_DE_CAPTURA      : '24';
	);

  semaforo: TTiposSemaforos=(
    VISITAS_VIVIENDA: 'c_vis_viv';
    VIVIENDA        : 'c_viv';
    HOGAR           : 'c_hog';
    VERIFICACION    : 'c_ver';
    VISITAS_HOGAR   : 'c_vis_hog';
	  SOCIODEMOGRAFICO: 'c_sdg';
    SELECCIONADO    : 'c_sel';
    PRINCIPAL       : 'c_pri';
    VICTIMIZACION   : 'c_vic';
    SUPERVISION     : 'c_sup';
    VERIFICACION_SP : 'c_vsp';
    DESPLAZAMIENTO  : 'c_des';
  );

implementation

end.
