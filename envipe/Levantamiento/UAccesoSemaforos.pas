unit UAccesoSemaforos;

interface

uses
  REstatusEnvipe, SysUtils, ULibrerias, XConstantes, CEstatusEnvipe, UGenerales,
  UDml, CLevantamiento, UStrHashMap, TLevantamiento, DB, UCambiaSemaforos,
  UCadenas, UDaoFactory, RLevantamiento, RLibrerias;

function verificarSemaforo(idMuestra: string; botonSemaforo: TBotonSemaforo; idEstatus: string; semaforo: string = '0'): boolean;
function verificarMensaje(idEstatus: string; botonSemaforo: TBotonSemaforo; idMuestra: string = ''): boolean;
function validarCuestionario(estatus: string; botonSemaforo: TBotonSemaforo; var params: TStrHashMap; campo: string = ''): boolean;
function accesoTipoInstalacion(params: TStrHashMap; verifica: Boolean = False): boolean;
function obtenerDatosCuestionario(botonSemaforo: TBotonSemaforo; tabla: string; var params: TStrHashMap; var campo: string): TDatosCuestionario;
function simulaCuestionario(var params: TStrHashMap; boton: TBotonSemaforo): string;
implementation

uses
  Forms, Controls, UNumeroHogares, CUtileriasEnvipe;

function accesoTipoInstalacion(params: TStrHashMap; verifica: boolean = False): boolean;
var
  semaforo: string;
begin
  try
    params.put('semaforo', 'c_ver');
    semaforo := TDaoFactory.getInstance().toField('EstatusSemaforos', 'getSemaforo', params, 'c_ver');
    Result := ((TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params).FieldByName('ID_MOVIL_MENU_ROL').AsString = inttostr(Ord(TRolesUsuarios.ROL_SUPERVISOR))) and (semaforo = estatusSemaforos.NO_APLICA)) or ((TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params).FieldByName('ID_MOVIL_MENU_ROL').AsString = inttostr(Ord(TRolesUsuarios.ROL_ENTREVISTADOR))) and (semaforo = estatusSemaforos.SIN_INICIAR)) or ((datosInstalacion.TYPE_INSTALL.isJE) and (semaforo = estatusSemaforos.NO_APLICA)) or ((datosInstalacion.TYPE_INSTALL.isEN) and (semaforo = estatusSemaforos.SIN_INICIAR));
    if (not Result) and (verifica) then
      mensajeInfo(TDml.getInstance.getMensaje('ULevantamiento', 'sinAcceso'));
  except
    on e: Exception do
      managerException('UAccesoSemaforos.accesoTipoInstalacion', e);
  end; // try-except
end;

function verificarSemaforo(idMuestra: string; botonSemaforo: TBotonSemaforo; idEstatus: string; semaforo: string = '0'): boolean;
var
  datos: TDataSet;
  params: TStrHashMap;
  vic, vis, hogarAnterior: string;
begin
  try
    try
      result := F;
      params := TStrHashMap.Create;
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      case botonSemaforo of
        C_VIS_VIV:
          begin
            result := (idEstatus = estatusEnvipe.ASIGNADO) and (accesoTipoInstalacion(params));
          end; // if
        C_VIV:
          result := ((idEstatus = estatusEnvipe.ASIGNADO) or ((idEstatus = estatusEnvipe.VIVIENDA_INCOMPLETO) and (DATOS_MUESTRA.COD_RES_VIV <> '13.1'))) and (accesoTipoInstalacion(params, T));
        C_HOG:
          try
            datos := TDaoFactory.getInstance.findViewCriteria('EstatusSemaforos', 'hogaresVivienda', params);
            while (not datos.Eof) and (result = F) do
            begin
              idEstatus := datos.FieldByName('id_estatus').AsString;
              if (idEstatus = estatusEnvipe.VIVIENDA_COMPLETO) or (idEstatus = estatusEnvipe.SOCIO_INCOMPLETO) or (idEstatus = estatusEnvipe.SOCIO_COMPLETO) or (idEstatus = estatusEnvipe.PRINCIPAL_INCOMPLETO) or (idEstatus = estatusEnvipe.PRINCIPAL_COMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_INCOMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_COMPLETO) or (idEstatus = estatusEnvipe.DESPLAZAMIENTO_INCOMPLETO) or (idEstatus = estatusEnvipe.DESPLAZAMIENTO_COMPLETO) or (idEstatus = estatusEnvipe.EN_VERIFICACION) or (idEstatus = estatusEnvipe.FINALIZADO) and (accesoTipoInstalacion(params)) then
                result := T;
              datos.Next;
            end; // while
          finally
            FreeAndNil(datos);
          end; // try-finally
        C_VER:
          begin
            result := (idEstatus <> estatusEnvipe.LIBERADO_DE_CAMPO) and (idEstatus <> estatusEnvipe.FINALIZADO) and (accesoTipoInstalacion(params, T));
          end;
        C_SDG:
          begin
            hogarAnterior := TDaoFactory.getInstance().findViewCriteria('EstatusSemaforos', 'hogarAnterior', params).FieldByName('c_sdg').AsString;
            result := ((idEstatus = estatusEnvipe.VIVIENDA_COMPLETO) or ((idEstatus = estatusEnvipe.SOCIO_INCOMPLETO) and (DATOS_MUESTRA.COD_RES_VIV <> '06'))) and ((TDaoFactory.getInstance().findViewCriteria('TrEnvipeMuestras', 'row', params).FieldByName('hogar').ToString = '1') or (hogarAnterior <> estatusSemaforos.SIN_INICIAR)) and (accesoTipoInstalacion(params, T));
            if hogarAnterior = estatusSemaforos.SIN_INICIAR then
              mensajeError(TDml.getInstance.getMensaje('ULevantamiento', 'hogarAnteriorIncompleto'));

            {Se agregó en ENVIPE 2021 para que el semáforo sdg se cierre si tiene un informante inadecuado y no pueda
             volver a lanzarlo.}
            if result then begin
              params.put('semaforo', 'c_sdg');
              result := (TDaoFactory.getInstance().toField('EstatusSemaforos', 'getSemaforo', params, 'c_sdg')) <> estatusSemaforos.NO_APLICA;
            end;
          end;
        C_SEL:
          result := ((idEstatus = estatusEnvipe.SOCIO_COMPLETO) or (idEstatus = estatusEnvipe.PRINCIPAL_INCOMPLETO) or (idEstatus = estatusEnvipe.PRINCIPAL_COMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_INCOMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_COMPLETO) or (idEstatus = estatusEnvipe.DESPLAZAMIENTO_INCOMPLETO) or (idEstatus = estatusEnvipe.FINALIZADO));
        C_PRI:
          result := ((idEstatus = estatusEnvipe.SOCIO_COMPLETO) or (idEstatus = estatusEnvipe.PRINCIPAL_INCOMPLETO)) and (accesoTipoInstalacion(params, T));
        C_VIC:
          //result:= (idEstatus= estatusEnvipe.PRINCIPAL_COMPLETO) or (idEstatus= estatusEnvipe.VICTIMIZACION_INCOMPLETO);
          try
            params.put('id_muestra', idMuestra);
            datos := TDaoFactory.getInstance.findViewCriteria('EstatusSemaforos', 'hogaresVivienda', params);
            while (not datos.Eof) and (result = F) do
            begin
              idEstatus := datos.FieldByName('id_estatus').AsString;
              {Se agregó el filtro de la muestra en ENVIPE 2020 para que el cuestionario de victimización
              se lanzará hasta que el principal de cada hogar estuviera contestado, anteriormente
              se lanzaba si el cuestionario principal de cualquier hogar ya había sido contestado
              y eso era un error.}
              if(params.get('id_muestra') = datos.FieldByName('id_muestra').AsString) then
                if (idEstatus = estatusEnvipe.PRINCIPAL_COMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_COMPLETO) or (idEstatus = estatusEnvipe.VICTIMIZACION_INCOMPLETO) then
                  result := T;
              datos.Next;
            end; // while
          finally
            FreeAndNil(datos);
          end;
      end; // case
    except
      on e: Exception do
        managerException('UAccesoSemaforos.verificarSemaforo', e);
    end; // try-except
  finally
    //FreeAndNil(params);

  end; // try-finally
end;

function verificarMensaje(idEstatus: string; botonSemaforo: TBotonSemaforo; idMuestra: string = ''): boolean;
var
  params: TStrHashMap;
  vic: string;
begin
  try
    try
      result := F;
      params := TStrHashMap.Create;
      if (idEstatus = estatusEnvipe.ASIGNADO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cViv'))) then
        result := T;
      if (idEstatus = estatusEnvipe.VIVIENDA_INCOMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cVivIncompleto'))) then
        result := T;
      if (idEstatus = estatusEnvipe.VIVIENDA_COMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cSoc'))) then
        result := T;
      if (idEstatus = estatusEnvipe.SOCIO_INCOMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cSocIncompleto'))) then
        result := T;
      if (idEstatus = estatusEnvipe.SOCIO_COMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cPri'))) then
        result := T;
      if (idEstatus = estatusEnvipe.PRINCIPAL_INCOMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cPriIncompleto'))) then
        result := T;
      if (idEstatus = estatusEnvipe.PRINCIPAL_COMPLETO) then
      begin
        params.put('id_muestra', idMuestra);
        params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
        params.put('semaforo', 'c_vic');
        vic := TDaoFactory.getInstance().toField('EstatusSemaforos', 'getSemaforo', params, 'c_vic');
        if vic = estatusSemaforos.SIN_INICIAR then
          result := mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cVic'))
        else if vic = estatusSemaforos.PARCIAL then
          result := mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cVicIncompleto'));
      end; // if
      if (idEstatus = estatusEnvipe.VICTIMIZACION_INCOMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cVicIncompleto'))) then
        result := T;
      if (((idEstatus = estatusEnvipe.VICTIMIZACION_COMPLETO) or (idEstatus = estatusEnvipe.FINALIZADO)) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cDes')))) then
        result := T;
      if (idEstatus = estatusEnvipe.DESPLAZAMIENTO_INCOMPLETO) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cDesIncompleto'))) then
        result := T;
    except
      on e: Exception do
        managerException('UAccesoSemaforos.verificarMensaje', e);
    end; // try-except
  finally
    FreeAndNil(params);
  end; // finally
end;

function validarCuestionario(estatus: string; botonSemaforo: TBotonSemaforo; var params: TStrHashMap; campo: string = ''): boolean;
var
  idEstatus, cHog : string;
  semaforo        : string;
  totHogaresCod06 : string;
begin
  try
    result := F;
    totHogaresCod06 := '0';
    idEstatus := TDaoFactory.getInstance.toField('EstatusSemaforos', 'ultimoMovimiento', params, 'id_estatus');
    params.put('semaforo', 'c_hog');
    cHog := TDaoFactory.getInstance.toField('EstatusSemaforos', 'getSemaforo', params, 'c_hog');
    case botonSemaforo of
      C_VIS_VIV:
        result := F;
      C_VIV: begin
          if Copy(estatus, 0, 1) = 'I' then begin
            params.put('numeroHogares', '1');
            params.put('id_estatus', estatusEnvipe.VIVIENDA_INCOMPLETO);

            {**Se agregó 10 Dic ENVIPE 2021. Si el cuestionario de vivienda tiene código 13.1
               se tiene que cerrar la vivienda (c_viv en gris)**}
            semaforo := estatusSemaforos.PARCIAL;
            if (params.get('cod_res_viv') = '13') and (params.get('cod_neg_viv') = '1') then
              semaforo := estatusSemaforos.NO_APLICA;

            if not isEmpty(campo) then
              params.put('campos', campo + ',c_vis_viv=' + estatusSemaforos.PARCIAL + ',c_viv=' + semaforo)
            else
              params.put('campos', 'c_vis_viv=' + estatusSemaforos.PARCIAL + ',c_viv=' + semaforo)
          end
          else if Copy(estatus, 0, 1) = 'C' then begin
            params.put('id_estatus', estatusEnvipe.VIVIENDA_COMPLETO);
            if not isEmpty(campo) then
              campo := campo + ',numero_hogares=' + params.get('numero_hogares') + ', cod_res_hog=' + comillas(RESULTADOS_ENTREVISTA.D_ENTREVISTA_INCOMPLETA_SIN_INFORMACION)
            else
              campo := 'numero_hogares=' + params.get('numero_hogares') + ', cod_res_hog=' + comillas(RESULTADOS_ENTREVISTA.D_ENTREVISTA_INCOMPLETA_SIN_INFORMACION);
            params.put('campos', campo + ',c_vis_viv=' + estatusSemaforos.PARCIAL + ',c_viv=' + estatusSemaforos.FINALIZADO);
          end; // if
        end;
      C_HOG:
        result := F;
      C_VER:
        result := F;
      C_VIS_HOG:
        result := F;
      C_SDG:
        if Copy(estatus, 0, 1) = 'I' then begin
          params.put('id_estatus', estatusEnvipe.SOCIO_INCOMPLETO);
          params.put('campos', campo + 'c_vis_hog=' + estatusSemaforos.PARCIAL + ',c_sdg=' + estatusSemaforos.PARCIAL);
          {**Se agregó 09 Dic ENVIPE 2021. Si el cuestionario sociodemográfico tiene código 06
             se tiene que cerrar el hogar (c_sdg en gris)**}
          semaforo := estatusSemaforos.PARCIAL; //coloración para el semáforo c_hog
          if params.get('cod_res') = '06' then begin //Se verifica cod_res en lugar de cod_res_viv para que tome el código del hogar y no el de la vivienda. Enero 2021
            params.put('upm', DATOS_MUESTRA.UPM);
            params.put('prog', DATOS_MUESTRA.PROG);
            params.put('viv_sel', DATOS_MUESTRA.VIV_SEL);
            totHogaresCod06 := TDaoFactory.getInstance.toField('TrEnvipeSdg', 'totalInformanteInadecuado', params, 'totalCod06');
            if ((DATOS_MUESTRA.TOTAL_HOGARES = '1') or (totHogaresCod06 = DATOS_MUESTRA.TOTAL_HOGARES))then begin
              params.put('campos', campo + 'cod_res_viv= ' + comillas(RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO) + ', c_vis_hog=' + estatusSemaforos.PARCIAL + ',c_sdg=' + estatusSemaforos.NO_APLICA
                                   + ', c_viv=' + estatusSemaforos.NO_APLICA + ', c_hog=' + estatusSemaforos.NO_APLICA);
              semaforo := estatusSemaforos.NO_APLICA;
              {**Para que actualice a No aplica todos los hogares. Feb 2022**}
              if (not (DATOS_MUESTRA.TOTAL_HOGARES = '1') and (totHogaresCod06 = DATOS_MUESTRA.TOTAL_HOGARES)) then begin
                params.put('campos', campo + 'cod_res_viv= ' + comillas(RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO) + ', c_vis_hog=' + estatusSemaforos.PARCIAL + ',c_sdg=' + estatusSemaforos.NO_APLICA
                                   + ', c_viv=' + estatusSemaforos.NO_APLICA);
                params.put('actualizaSemaforosHogViv', '1');
              end;
              {*****}
            end else
              params.put('campos', campo + 'c_vis_hog=' + estatusSemaforos.PARCIAL + ',c_sdg=' + estatusSemaforos.NO_APLICA
                         + ', c_hog=' + estatusSemaforos.PARCIAL);
          end;
          params.put('c_hog', semaforo);
        end
        else if Copy(estatus, 0, 1) = 'C' then begin
          params.put('id_estatus', estatusEnvipe.SOCIO_COMPLETO);
          params.put('campos', campo + 'c_vis_hog=' + estatusSemaforos.PARCIAL + ',c_sdg=' + estatusSemaforos.FINALIZADO + ',cod_res_hog=' + comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO));
          params.put('c_hog', estatusSemaforos.PARCIAL);
        end; // if
      C_SEL:
        result := F;
      C_PRI:
        if Copy(estatus, 0, 1) = 'I' then begin
          params.put('id_estatus', estatusEnvipe.PRINCIPAL_INCOMPLETO);
          params.put('campos', campo + 'c_pri=' + estatusSemaforos.PARCIAL + ', c_sel=' + estatusSemaforos.PARCIAL);
        end
        else if Copy(estatus, 0, 1) = 'C' then begin
          params.put('id_estatus', estatusEnvipe.PRINCIPAL_COMPLETO);
          params.put('campos', campo + 'c_pri=' + estatusSemaforos.FINALIZADO + ', c_sel=' + estatusSemaforos.PARCIAL + ',cod_neg_hog=null,principal_especifique=null');
          params.put('insertarVictimizaciones', '1');
        end; // if
      C_VIC: begin
          if Copy(estatus, 0, 1) = 'I' then begin
            params.put('id_estatus', estatusEnvipe.VICTIMIZACION_INCOMPLETO);
            params.put('campos', 'c_vic=' + estatusSemaforos.PARCIAL);
          end
          else if Copy(estatus, 0, 1) = 'C' then begin
            params.put('id_estatus', estatusEnvipe.VICTIMIZACION_COMPLETO);
            params.put('campos', 'c_vic=' + estatusSemaforos.FINALIZADO);
          end; // if
        end;
	  {Se quitó el modulo de desplazamiento Febrero 2020
      C_DES: {Se agregó un nuevo modulo (desplazamiento) en Enero 2020 (ENVIPE2020), adicional
              se cambió la coloración de los semáforos de verificación para que cuando sea
              código 01 o 02 cambie a verde dicho semáforo 
        if Copy(estatus, 0, 1) = 'I' then begin
          params.put('id_estatus', estatusEnvipe.DESPLAZAMIENTO_INCOMPLETO);
          params.put('campos', campo + 'c_des=' + estatusSemaforos.PARCIAL + ', cod_res_des=' + comillas(RESULTADOS_ENTREVISTA.II_PENDIENTE));
        end
        else if Copy(estatus, 0, 1) = 'C' then begin
          params.put('semaforo', 'c_vic');
          semaforo := TDaoFactory.getInstance().toField('EstatusSemaforos', 'getSemaforo', params, 'c_vic');
          if semaforo = estatusSemaforos.FINALIZADO then
             codigo := comillas(RESULTADOS_ENTREVISTA.A_ENTREVISTA_COMPLETA_CON_VICTIMIZACION)+ ', cod_neg_hog=null'
          else if semaforo = estatusSemaforos.NO_APLICA then
               codigo := comillas(RESULTADOS_ENTREVISTA.B_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION)+ ', cod_neg_hog=null';
          params.put('verificaDesplazamiento', '0');
          params.put('id_estatus', estatusEnvipe.DESPLAZAMIENTO_COMPLETO);
          params.put('campos', campo + 'c_des=' + estatusSemaforos.FINALIZADO + ', c_sel=' + estatusSemaforos.FINALIZADO + ', c_vis_hog=' + estatusSemaforos.FINALIZADO + ', cod_res_des=' +  comillas(RESULTADOS_ENTREVISTA.I_COMPLETO)+', cod_res_hog=' + codigo
                               + ', c_ver=' + estatusSemaforos.FINALIZADO);
          params.put('cod_res_des', RESULTADOS_ENTREVISTA.I_COMPLETO);
        end; // if}
      C_VIC_:
        if Copy(estatus, 0, 1) = 'I' then begin
          params.put('id_estatus', estatusEnvipe.VICTIMIZACION_INCOMPLETO);
          params.put('campo', split(campo, '|')[0]);
          if split(campo, '|')[1] <> '' then begin
            params.put('campos', split(campo, '|')[1]);
            params.put('parcial', '0');
          end;
          params.put('valor', estatusSemaforos.PARCIAL);
          Result := T;
        end
        else if Copy(estatus, 0, 1) = 'C' then begin
          params.put('campo', campo);
          params.put('valor', estatusSemaforos.FINALIZADO);
          params.put('verificarVictimizacion', '1');
          Result := T;
        end; // if
    end; // case
    result := T; //params.get('id_estatus')<> idEstatus;
    if (not isEmpty(params.get('c_hog'))) and (cHog <> params.get('c_hog')) then
      params.put('actualizaHogares', '1');
  except
    on e: Exception do
      managerException('UAccesoSemaforos.verificarMensaje', e);
  end; // try-except
end;

function obtenerDatosCuestionario(botonSemaforo: TBotonSemaforo; tabla: string; var params: TStrHashMap; var campo: string): TDatosCuestionario;
var
  datos: TDataSet;
begin
  try
    try
      Result.ESTATUS := 'V';
      case botonSemaforo of
        C_VIV: begin
          datos         := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS:= datos.FieldByName('status__').AsString;
          //Result.ESTATUS:= simulaCuestionario(params, botonSemaforo);
          if (Result.ESTATUS= 'C') then begin
            if isEmpty(datos.FieldByName('numero_hogares').AsString) then
              params.put('numero_hogares', '1')
            else
              params.put('numero_hogares',datos.FieldByName('numero_hogares').AsString);
          end
          else if ((Result.ESTATUS= 'I') and (datos.FieldByName('c_res').AsString= '13.1')) then begin
            params.put('cod_res', RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION);
            params.put('cod_res_viv', RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION);
            params.put('cod_neg_viv', '1');
            params.put('colectiva', 'colectiva');
            params.put('vivienda', '1');
            params.put('clave', '1');
            params.put('id_movil_causa_negativa',TDaoFactory.getInstance.toField('TcMovilCausasNegativas', 'byDescripcionViviendaHogar', params, 'id_movil_causa_negativa'));
          end; // if
        end; // C_VIV
        C_SDG: begin
          datos := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS := datos.FieldByName('status__').AsString;
          //Result.ESTATUS:= simulaCuestionario(params, botonSemaforo);
          if (Result.ESTATUS = 'C') then begin
            campo := campo + 'num_ren_inf=' + comillas(datos.FieldByName('n_info').AsString) + ',';
            datos := TDaoFactory.getInstance.findViewCriteria('TrEnvipeSdgInt', 'elegido', params);
            campo := campo + 'num_ren_sel=' + comillas(datos.FieldByName('n_ren').AsString) + ',';
            params.put('num_ren_sel', datos.FieldByName('n_ren').AsString);
          end
          else if ((Result.ESTATUS = 'I') and (datos.FieldByName('c_res').AsString = '06')) then begin
            {Se agregó a la condición que solo cambie el código de resultado a 06 cuando se trate
             solo de un hogar en la vivienda. Enero 2021
             Edit Feb. 2022: código 06 en la vivienda cuando todos los hogares tienen 06}
             params.put('cod_res_viv', RESULTADOS_ENTREVISTA.O4_ENTREVISTA_INCOMPLETA);

             params.put('upm', DATOS_MUESTRA.UPM);
             params.put('prog', DATOS_MUESTRA.PROG);
             params.put('viv_sel', DATOS_MUESTRA.VIV_SEL);
             params.put('totalHogaresInformanteInadecuado', TDaoFactory.getInstance.toField('TrEnvipeSdg', 'totalInformanteInadecuado', params, 'totalCod06'));

             if DATOS_MUESTRA.TOTAL_HOGARES = '1' then
               params.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO)
            else if not isEmpty(params.get('totalHogaresInformanteInadecuado')) then
                   if params.get('totalHogaresInformanteInadecuado') = DATOS_MUESTRA.TOTAL_HOGARES then
                     params.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO);

            {if DATOS_MUESTRA.TOTAL_HOGARES = '1' then
               params.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO)
            else
                params.put('cod_res_viv', RESULTADOS_ENTREVISTA.O4_ENTREVISTA_INCOMPLETA); }

            params.put('cod_res', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO);
            params.put('colectiva', 'colectiva');
            params.put('inadecuado', 'inadecuado');
            params.put('vivienda', '1');
            params.put('clave', '1');
            params.put('complemento', '0');
          end; // if
        end; // C_SDG
        C_PRI: begin
          datos := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS := datos.FieldByName('status__').AsString;
          //Result.ESTATUS:= simulaCuestionario(params, botonSemaforo);
        end; // C_PRI
        C_VIC: begin
          datos := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS := datos.FieldByName('status__').AsString;
        end; // C_VIC
        {Se quitó el modulo de desplazamiento Febrero 2020
		C_DES: begin
          datos := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS := datos.FieldByName('status__').AsString;
          //Result.ESTATUS:= simulaCuestionario(params, botonSemaforo);
        end; // C_DES}
        C_VIC_: begin
          datos := TDaoFactory.getInstance.findViewCriteria(tabla, 'statusByMuestra', params);
          Result.ESTATUS := datos.FieldByName('status__').AsString;
          //Result.ESTATUS:= simulaCuestionario(params, botonSemaforo);
        end;
      end; // case
    except
      on e: Exception do
        managerException('UAccesoSemaforos.obtenerDatosCuestionario', e);
    end; // try-except
  finally
    FreeAndNil(datos);
  end; // try-finally
end;

function simulaCuestionario(var params: TStrHashMap; boton: TBotonSemaforo): string;
begin
  try
    try
      FCambiaSemaforos := TFCambiaSemaforos.Create(Application);
      FCambiaSemaforos.comboVictima.Visible := F;
      FCambiaSemaforos.comboDelitos.Visible := F;
      FCambiaSemaforos.labelVictima.Visible := F;
      FCambiaSemaforos.labelDelitos.Visible := F;
      case boton of
        C_VIV: begin
          FNumeroHogares := TFNumeroHogares.Create(Application);
          if FCambiaSemaforos.ShowModal = mrOk then
          begin
            if (Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1) = 'C') and (FNumeroHogares.ShowModal = mrOk) then
            begin
              params.put('numeroHogares', FNumeroHogares.hogares.text);
              Result := 'C';
            end // if
            else if (Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1) = 'I') then
              Result := 'I';
          end; // if
        end; // C_VIV
        C_SDG: begin
          if FCambiaSemaforos.ShowModal = mrOk then
            result := Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1);
        end; // C_SDG
        C_PRI: begin
          if FCambiaSemaforos.ShowModal = mrOk then
            result := Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1);
        end; // C_PRI
        C_VIC_: begin
          if FCambiaSemaforos.ShowModal = mrOk then
            result := Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1);
        end; // C_VIC
        C_DES: begin
          if FCambiaSemaforos.ShowModal = mrOk then
            result := Copy(FCambiaSemaforos.comboCuestionario.Text, 0, 1);
        end;//C_DES
      end; // case
    except
      on e: Exception do
        managerException('UAccesoSemaforos.simulaCuestionario', e);
    end;
  finally
    FreeAndNil(FCambiaSemaforos);
  end;
end;

end.

