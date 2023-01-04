unit CLevantamiento;
interface
uses
  DB, SysUtils, ULibrerias, UStrHashMap, RLevantamiento;

const
  DESACTIVAR_CUESTIONARIOS: boolean = False;

var
  datosGrid       : TDataSet;
  modoTrabajo     : Boolean;
  modoTrabajoHogar: Boolean;
  modoTrabajoVic  : Boolean;
  datosIntegrantes: TDataSet;
  CONTROL_ETIQUETA: String= 'UPM';
  VIV_SEL_ETIQUETA: String= 'Vivienda seleccionada';

RESULTADOS_ENTREVISTA       : TResultadosEntrevista=(
    OO_ASIGNADO                              : '00';
		O1_ENTREVISTA_COMPLETA_CON_VICTIMIZACION : '01';
    O2_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION : '02';
    O3_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO : '03';
    O4_ENTREVISTA_INCOMPLETA                 : '04';
    O5_ENTREVISTA_CONCERTADA                 : '05';
    O6_INFORMANTE_INADECUADO                 : '06';
    O7_AUSENCIA_DE_OCUPANTES                 : '07';
    O8_NEGATIVA                              : '08';
    O9_VIVIENDA_DESHABITADA                  : '09';
    IO_VIVIENDA_DE_USO_TEMPORAL              : '10';
    I1_VIVIENDA_USO_DIFERENTE_DEMOLIDA_RUINAS: '11';
    I2_AREA_INSEGURA                         : '12';
    I3_OTRA_SITUACION                        : '13';
    A_ENTREVISTA_COMPLETA_CON_VICTIMIZACION  : 'A';
    B_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION  : 'B';
    C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO  : 'C';
    D_ENTREVISTA_INCOMPLETA_SIN_INFORMACION  : 'D';
    I_COMPLETO                               : 'I';
    II_PENDIENTE                             : 'II';
    III_NEGATIVA                             : 'III');

implementation
end.
