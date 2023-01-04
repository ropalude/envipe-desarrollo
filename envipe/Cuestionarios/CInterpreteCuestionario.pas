unit CInterpreteCuestionario;

interface

uses
  UInterprete, RInterpreteCuestionario;

const
  BDFILE= 'admin.sys';

var
     //falta agregar los cuestionarios extras y ponerme de acuerdo con oscar
    concentradoCuestionarios: TConcentradoCuestionarios=(
      CUES_VIVIENDA:(
        tipoCues           : VIVIENDA;
        descripcion        : 'Cuestionario de vivienda';
        idCuestionario     : '1';
        tabla              : 'TrEnvipeVvda';
        tablaBasico        : 'TrEnvipeVvda';
        reHogar            : 'cod_res_viv';
        reCuest            : 'cod_res_viv';
        tablaControl       : 'TrEnvipeMuestras';
        campoRegistroEnvio : 'REGISTRO_ENVIO_1';
        semaforo           : 'c_viv'
      );
      CUES_SOCIO: (
      	tipoCues           : SOCIO;
		    descripcion        : 'Cuestionario sociodemografico';
		    idCuestionario     : '2';
		    tabla              : 'TrEnvipeSdg';
		    tablaBasico        : 'TrEnvipeSdg';
		    reHogar            : 'cod_res_hog';
		    reCuest            : 'cod_res_hog';
		    tablaControl       : 'TrEnvipeMuestras';
		    campoRegistroEnvio : 'REGISTRO_ENVIO_2';
		    semaforo           : 'c_sdg';
      );
      //
      CUES_PRINCIPAL: (
      	tipoCues           : PRINCIPAL;
		    descripcion        : 'Cuestionario del elegido';
		    idCuestionario     : '3';
		    tabla              : 'TrEnvipeEleg';
		    tablaBasico        : 'TrEnvipeEleg';
		    reHogar            : 'cod_res_hog';
		    reCuest            : 'cod_res_hog';
		    tablaControl       : 'TrEnvipeMuestras';
		    campoRegistroEnvio : 'REGISTRO_ENVIO_3';
		    semaforo           : 'c_pri';
      );
      CUES_VICTIMIZACION: (
      	tipoCues           : VICTIMIZACION;
		    descripcion        : 'Cuestionario de victimizacion';
		    idCuestionario     : '4';
		    tabla              : 'TrEnvipeModulo';
		    tablaBasico        : 'TrEnvipeModulo';
		    reHogar            : 'cod_res';
		    reCuest            : 'cod_res';
		    tablaControl       : 'TrEnvipeMuestras';
		    campoRegistroEnvio : 'REGISTRO_ENVIO_4';
		    semaforo           : 'c_vic';
      );
      {CUES_DESPLAZAMIENTO: (
      	tipoCues           : DESPLAZAMIENTO;
		    descripcion        : 'Cuestionario de desplazamiento';
		    idCuestionario     : '5';
		    tabla              : 'TrEnvipeDesplazamiento';
		    tablaBasico        : 'TrEnvipeDesplazamiento';
		    reHogar            : 'cod_res_des';
		    reCuest            : 'cod_res_des';
		    tablaControl       : 'TrEnvipeMuestras';
		    campoRegistroEnvio : 'REGISTRO_ENVIO_5';
		    semaforo           : 'c_des';
      ); }
   );

implementation
end.
