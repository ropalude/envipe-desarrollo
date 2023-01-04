unit RLevantamiento;

interface
uses
  REstatusEnvipe;

type
  TClasificacionEstatus=(clVACIO, clASIGNADOS, clLIBERADOS_ENTREVISTADOR, clLIBERADOS_SUPERVISOR);

	TResultadosEntrevista=record
    OO_ASIGNADO                              :string;
		O1_ENTREVISTA_COMPLETA_CON_VICTIMIZACION :string;
    O2_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION :string;
    O3_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO :string;
    O4_ENTREVISTA_INCOMPLETA                 :string;
    O5_ENTREVISTA_CONCERTADA                 :string;
    O6_INFORMANTE_INADECUADO                 :string;
    O7_AUSENCIA_DE_OCUPANTES                 :string;
    O8_NEGATIVA                              :string;
    O9_VIVIENDA_DESHABITADA                  :string;
    IO_VIVIENDA_DE_USO_TEMPORAL              :string;
    I1_VIVIENDA_USO_DIFERENTE_DEMOLIDA_RUINAS:string;
    I2_AREA_INSEGURA                         :string;
    I3_OTRA_SITUACION                        :string;
    A_ENTREVISTA_COMPLETA_CON_VICTIMIZACION  :string;
    B_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION  :string;
    C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO  :string;
    D_ENTREVISTA_INCOMPLETA_SIN_INFORMACION  :string;
    I_COMPLETO                               :string;
    II_PENDIENTE                             :string;
    III_NEGATIVA                             :string;
	end;

  TDelitosVictima = Record
    CODIGO : string[2];
    DELITOS: string[1];
  end;

  TDatosCuestionario = Record
    ESTATUS       : string[1];
    NUMERO_HOGARES: string[1];
    NUM_REN_SEL   : string[2];
    NOMBRE_SEL    : string[40];
    DELITOS       : Array of TDelitosVictima;
  end;

implementation

end.
