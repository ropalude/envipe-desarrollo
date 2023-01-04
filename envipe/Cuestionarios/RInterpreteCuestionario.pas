unit RInterpreteCuestionario;

interface
uses RBD,classes,UInterprete, RUtileriasEnvipe;

type


	TTipoCuestionario=	 (VACIO_CUEST, VIVIENDA, SOCIO, PRINCIPAL, VICTIMIZACION, DESPLAZAMIENTO);

	TCuestionariosEnvipe= record
		tipoCues          : TTipoCuestionario;
		descripcion       : String;
		idCuestionario    : String;
		tabla             : String;
		tablaBasico       : String;
		reHogar           : String;
		reCuest           : String;
		tablaControl      : String;
		datosTabla        : Array of TDatostabla;
		interprete        : TInterpreteLocal;
		campoRegistroEnvio: String;
		semaforo          : String;
    parametros        : TDatosMuestra;
	end;


  TConcentradoCuestionarios= record
    CUES_VIVIENDA       : TCuestionariosEnvipe;
    CUES_SOCIO          : TCuestionariosEnvipe;
    CUES_PRINCIPAL      : TCuestionariosEnvipe;
    CUES_VICTIMIZACION  : TCuestionariosEnvipe;
    //CUES_DESPLAZAMIENTO : TCuestionariosEnvipe;
  end;

implementation

end.
