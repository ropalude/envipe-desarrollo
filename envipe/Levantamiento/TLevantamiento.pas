unit TLevantamiento;

interface
uses
  UBaseTnx, ZDataset, XConstantes, SysUtils, UStrHashMap, CBD, RBD, TMovimientos, TVisitas, TVisitasEnvipe;
type
  TTransaccion= class(TMovimiento)
    function execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean; override;
    function eliminarHogar(params: TStrHashMap; session: TZQuery): Boolean;
    procedure validaAgregarAdicional(var session: TZQuery; params: TStrHashMap; accion: TAccion= AGREGAR);
    procedure actualizarHogaresVivienda(var session: TZQuery; params: TStrHashMap);
    function verificaCodigoVivienda(var session: TZQuery; params: TStrHashMap): string;
    procedure insertarVictimizaciones(var session: TZQuery; params: TStrHashMap);
    procedure verificarVictimizacion(var session: TZQuery; params: TStrHashMap);
    function verificaCodigoHogar(var session: TZQuery; params: TStrHashMap): string;
    procedure verificacion(var session: TZQuery; params: TStrHashMap);
    function actualizarMovimientosVerificacion(var session: TZQuery; params: TStrHashMap): boolean;
    function complementarTablasCuestionarios(var session: TZQuery): boolean;
public
  end;

implementation
uses
	UDaoFactory, UCadenas, TDuplicarHogares, DB, ULibrerias, CEstatusEnvipe, CLevantamiento, REstatusEnvipe, CUtileriasEnvipe,
  RLibrerias;

function TTransaccion.execute(accion: TAccion; session: TZQuery; parametros: TStrHashMap): boolean;
var
  visita               : TVisitaEnvipe;
  codigo, levantamiento: String;
  idEnvipe2023Muestra  : string;
  idMuestra            : String;
  {*Para insertar el nuevo hogar en la tabla tr_movil_sentencias*}
  dtsTabla             : TDatosTabla;
  dts                  : TDataSet;
begin
  try
    try
      codigo             := '';
      idEnvipe2023Muestra:= parametros.get('id_envipe2023_muestra');
      idMuestra          := parametros.get('id_muestra');
      visita:= TVisitaEnvipe.create('TrEnvipeMuestras');
      case accion of
        BITACORA: begin
          result:= complementarTablasCuestionarios(session);
        end; // BITACORA
        AGREGAR: begin
          validaAgregarAdicional(session,parametros);
          {*Se agrega validación para cuando se agrega un nuevo hogar y la vivienda
            tiene semáforo de NO_APLICA se actualice a PARCIAL. Febrero 2021*}
          if not isEmpty(parametros.get('actualizaSemaforosHogViv')) then begin
            parametros.put('campos', 'c_viv = '+ estatusSemaforos.PARCIAL);
            parametros.put('c_hog', estatusSemaforos.PARCIAL); //Para que cambie de No aplica a Parcial el semáforo (c_hog) de todos los hogares. Feb 2022
            actualizarHogaresVivienda(session, parametros);
          end;
        end;
        VERIFICAR: begin
          result:= TDaoFactory.getInstance().insert('TrMovilBitVerificacion','insertar',parametros,bitacoraEspecifica, session)<> '-1';
          verificacion(session,parametros);
          parametros.put('verificacionVivienda', '1');
          parametros.put('id_muestra',DATOS_MUESTRA.ID_MUESTRA);
          //inherited execute(AGREGAR, session, parametros); //Pone visita
        end;
        MODIFICAR: begin
            inherited execute(AGREGAR, session, parametros);
            result:= TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session)> 0
        end; //modificar
        GENERA: begin
          if isEmpty(parametros.get('verificacionActualizacion')) then begin
            inherited execute(AGREGAR, session, parametros);
            result:= TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session)> 0;
          end
          else
            result:= actualizarMovimientosVerificacion(session, parametros);
          if not isEmpty(parametros.get('numero_hogares')) then
            validaAgregarAdicional(session,parametros);
          if not isEmpty(parametros.get('actualizaHogares')) then
            actualizarHogaresVivienda(session, parametros);
          if not isEmpty(parametros.get('insertarVictimizaciones')) then
            insertarVictimizaciones(session, parametros);
        end; // GENERA
        COMPLEMENTAR: begin
          result:= TDaoFactory.getInstance.update('TrEnvipeVictimizaciones', 'actualizarSemaforo', parametros, bitacoraEspecifica, session)> 0;
          if not isEmpty(parametros.get('parcial')) then begin
            inherited execute(AGREGAR, session, parametros);
            execute(MODIFICAR, session, parametros);
          end;
          verificarVictimizacion(session, parametros);
        end;
        RGENERA: begin
          verificarVictimizacion(session, parametros);
          inherited execute(AGREGAR, session, parametros);
        end;
        LIBERAR: begin
          result:= TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session) > 0;
          //verificarVictimizacion(session, parametros);
        end;
        FINALIZAR: begin
          result:= eliminarHogar(parametros, session);
        end; // FINALIZAR
        ELIMINAR: begin
          inherited execute(AGREGAR, session, parametros);
          result:= (TDaoFactory.getInstance().insert('TrEnvipe2019Reinicios', 'nuevoReinicio', parametros, bitacoraEspecifica, session, True)<> '-1') and (TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session)> 0);
        end;
        GENERICO: begin
          parametros.put('campos', 'c_vis_hog='+ estatusSemaforos.finalizado+ ', c_sel='+ estatusSemaforos.FINALIZADO+ ', c_vic='+ estatusSemaforos.NO_APLICA+ ', cod_res_hog='+comillas(RESULTADOS_ENTREVISTA.B_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION)+ ', cod_neg_hog=null');
          execute(MODIFICAR,session,parametros);
        end;
        COMPLEMENTO: begin  // SE AGREGO PARA EJECUTAR RS-01
             //execute(AGREGAR, session, parametros);
            result:= TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', parametros, bitacoraEspecifica, session)> 0
        end;
        DUPLICAR: begin
        {*Se agregó 19/Oct/2020 para verificar y agregar INSERT del segundo hogar
          en la tabla tr_movil_sentencias sin mandar bitacoraEspecifica*}
          dtsTabla.NAME         :='tc_muestras';
          dtsTabla.WEB_NAME     :='tc_muestras';
          dtsTabla.ID_KEY       :='id_muestra';
          try
            if parametros.get('verificacionVivienda') = 'agregarHogar' then begin
                parametros.put('id_muestra', TDaoFactory.getInstance().toField('VistaTrMuestrasEnvipe', 'ultimoHogar', parametros, 'id_muestra'));
                bitacoraEspecifica.idGenerico := parametros.get('id_muestra');
                if (TDaoFactory.getInstance.toField('TrMovilSentencias', 'existeNvoHogar', parametros, 'total') = '0') then
                    TDaoFactory.getInstance.crearRegistros(TDaoFactory.getInstance.findViewCriteria('TrMovilSentencias', 'nuevoHogar', parametros),
                                      dtsTabla, bitacoraEspecifica, TTipoAccion.INSERT, session);
            end;
            if parametros.get('verificacionVivienda') = 'hogares' then begin

			            dts:= TDaoFactory.getInstance.findViewCriteria('VistaTrMuestrasEnvipe', 'validaAdicional' , parametros);
                  if dts.RecordCount > 1 then begin
                    while not dts.Eof do begin
                      if dts.FieldByName('hogar').AsString <> '1' then begin  //No verificar el primer hogar
                        session.sql.clear;
                        parametros.put('id_muestra', dts.FieldByName('id_muestra').AsString);
                        bitacoraEspecifica.idGenerico := dts.FieldByName('id_muestra').AsString;
                        if (TDaoFactory.getInstance.toField('TrMovilSentencias', 'existeNvoHogar', parametros, 'total') = '0') then
                            TDaoFactory.getInstance.crearRegistros(TDaoFactory.getInstance.findViewCriteria('TrMovilSentencias', 'nuevoHogar', parametros),
                                                                   dtsTabla, bitacoraEspecifica, TTipoAccion.INSERT, session);
                      end;
                      dts.Next;
                    end; // while
                  end; //if-RecordCount

            end; //if-verificacionVivienda
				    managerLogInfo('[TLevantamiento.DUPLICAR] se agrego la sentencia del INSERT de nuevos hogares en la tabla tr_movil_sentencias de la vivienda: '+idMuestra+
                           ' desde '+parametros.get('verificacionVivienda'));
          finally begin
            parametros.put('id_muestra', idMuestra);
            bitacoraEspecifica.idGenerico := idMuestra;
            FreeAndNil(dts);
          end;
          end; // try-finally
        end; // DUPLICAR
      end; // case

      if isEmpty(parametros.get('verificacionVivienda')) then begin
        parametros.put('fecha_termino_detalle', FormatDateTime(secuencias.secuencia, Now));
        parametros.put('id_envipe2023_muestra', idEnvipe2023Muestra);
        parametros.put('id_muestra', idMuestra);
        if (parametros.get('complemento')= '0') then
          codigo:= verificaCodigoHogar(session, parametros);
        if (not isEmpty(codigo)) and (accion <> FINALIZAR) then begin
          parametros.put('cod_res', codigo);
          parametros.put('cod_res_hog', codigo);
          TVisita(visita).execute(COMPLEMENTAR, session, parametros);
        end;
        if isEmpty(parametros.get('colectiva')) then
          codigo:= verificaCodigoVivienda(session, parametros)
        else if (not isEmpty(parametros.get('inadecuado'))) and (DATOS_MUESTRA.HOGAR <> '1') and (parametros.get('cod_res_viv') <> RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO) then
          codigo:= verificaCodigoVivienda(session, parametros)
        else
          codigo:= parametros.get('cod_res');
        if (accion <> FINALIZAR) then
          if (not isEmpty(codigo)) then begin
            parametros.put('complemento', '1');
            if isEmpty(parametros.get('colectiva')) then begin
              parametros.put('cod_res', codigo);
              parametros.put('cod_res_viv', codigo);
            end; // if
            if not isEmpty(parametros.get('inadecuado')) then begin
              parametros.put('cod_res', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO);
              {*Corrige incidencia para que ponga código de resultado 06 solo cuando se trate
                de un solo hogar y sea informante inadecuado, para todos los demás casos
                será código 04. Enero 2021
                Edit Feb. 2022: código 06 en la vivienda cuando todos los hogares tienen 06 *}
              parametros.put('cod_res_viv', RESULTADOS_ENTREVISTA.O4_ENTREVISTA_INCOMPLETA);

              parametros.put('upm', DATOS_MUESTRA.UPM);
              parametros.put('prog', DATOS_MUESTRA.PROG);
              parametros.put('viv_sel', DATOS_MUESTRA.VIV_SEL);
              parametros.put('totalHogaresInformanteInadecuado', TDaoFactory.getInstance.toField('TrEnvipeSdg', 'totalInformanteInadecuado', parametros, 'totalCod06'));

              if DATOS_MUESTRA.TOTAL_HOGARES = '1' then
                parametros.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO)
              else if not isEmpty(parametros.get('totalHogaresInformanteInadecuado')) then
                     if parametros.get('totalHogaresInformanteInadecuado') = DATOS_MUESTRA.TOTAL_HOGARES then begin
                       parametros.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO);
                       codigo := RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO;
                     end;


              {if DATOS_MUESTRA.TOTAL_HOGARES = '1' then
                 parametros.put('cod_res_viv', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO)
              else
                 parametros.put('cod_res_viv', RESULTADOS_ENTREVISTA.O4_ENTREVISTA_INCOMPLETA);}

            end; // if
            parametros.put('id_envipe2023_muestra', idEnvipe2023Muestra);
            parametros.put('id_muestra', idMuestra);
            if not isEmpty(parametros.get('seguimientoHogar')) then
              parametros.put('especifique', parametros.get('seguimientoHogar'));
            if ((codigo<> RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION) and (parametros.get('cod_res_viv')<> RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION)) then
              parametros.put('id_movil_causa_negativa', 'null');
            if isEmpty(parametros.get('colectiva')) then
              TVisita(visita).execute(COMPLEMENTAR, session, parametros)
            else
              TVisita(visita).execute(VISITA_MANUAL, session, parametros);
          end; // if not isEmpty(codigo)
      end; // if verificacionVivienda
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.execute]');
    end;
  finally
    FreeAndNil(visita);
  end; // try-finally
end;

function TTransaccion.complementarTablasCuestionarios(var session: TZQuery): boolean;
var
  params      : TStrHashMap;
  datos       : TDataSet;
  idEnvipe2023: string;
begin
  try
    try
      result     := F;
      params     := TStrHashMap.Create;
      datos      := TDaoFactory.getInstance().findViewCriteria('TrEnvipe2019613elegido', 'vacios', params);
      if datos.RecordCount> 0 then
        while (not datos.Eof) do begin
          params.put('idMuestra', datos.FieldByName('id_muestra').AsString);
          params.put('upm', datos.FieldByName('upm').AsString);
          params.put('vivSel', datos.FieldByName('viv_sel').AsString);
          params.put('prog', datos.FieldByName('prog').AsString);
          params.put('numRen', datos.FieldByName('num_ren').AsString);
          idEnvipe2023:= TDaoFactory.getInstance().toField('TrEnvipe2019611elegido', 'padre', params, 'id_envipe2023');
          params.put('idEnvipe2023', idEnvipe2023);
          TDaoFactory.getInstance().update('TrEnvipe2019613elegido', 'campoPadre', params, bitacoraGeneral, session);
          Result:= T;
          datos.Next;
        end; // while
    except
      on e: exception do
        managerException('[TLevantamiento.complementarTablasCuestionarios] ', e);
    end; // try-except
  finally
    FreeAndNil(params);
    FreeAndNil(datos);
  end; // try-finally
end;

procedure TTransaccion.actualizarHogaresVivienda(var session: TZQuery; params: TStrHashMap);
var
  ds                   : TDataSet;
  c_hog, id_muestra    : String;
  id_envipe2023_muestra: String; //Para que actualice todos los hogares en la tabla complementaria de la muestra.
  campos, camposAdd    : String;
begin
  try
    try
      {*Se corrigió el método para que actualizara en la tabla de la muestra complementaria
        todos los hogares y no solamente el hogar filtrado, además se agregó que se actualizaran
        los campos id_estatus (6 - en captura, 354 finalizado), liberado y liberado_por. Enero 2021*}

      if (datosInstalacion.TYPE_INSTALL.isEN) or(TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params).FieldByName('ID_MOVIL_MENU_ROL').AsString = inttostr(Ord(TRolesUsuarios.ROL_ENTREVISTADOR))) then
         campos:= 'liberado_por = ''E'''
      else
         campos:= 'liberado=1, liberado_por = ''AI''';
      {***************************************************************}
      {*Se agrega validación para cuando se agrega un nuevo hogar y la vivienda
        tiene semáforo de NO_APLICA se actualice a PARCIAL. Febrero 2021*}
      if not isEmpty(params.get('campos')) and not isEmpty(params.get('actualizaSemaforosHogViv')) then
         camposAdd := 'c_hog='+ params.get('c_hog')+ ', ' +params.get('campos')
      else
         camposAdd := 'c_hog='+ params.get('c_hog');
      {****************************************************************}
      session.sql.clear;
      ds:= TDaoFactory.getInstance.findViewCriteria('VistaTrMuestrasEnvipe', 'validaAdicional' , params);
      id_muestra := params.get('id_muestra');
      id_envipe2023_muestra := params.get('id_envipe2023_muestra');
      if ds.RecordCount> 0 then begin
        c_hog:= params.get('c_hog');
        if c_hog = '3' then
           params.put('campos', camposAdd + ', ' + campos + ', id_estatus = ' + estatusEnvipe.FINALIZADO)
        else
           params.put('campos', camposAdd + ', id_estatus = ' + estatusEnvipe.EN_CAPTURA);

        while not ds.Eof do begin
          params.put('id_muestra', ds.FieldByName('id_muestra').AsString);
          params.put('id_envipe2023_muestra', ds.FieldByName('id_envipe2023_muestra').AsString);
          TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, ds.FieldByName('id_muestra').AsString);
          ds.Next;
        end; // while
      end; // if
      params.put('id_muestra', id_muestra);
      params.put('id_envipe2023_muestra', id_envipe2023_muestra);
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.actualizarHogaresVivienda]');
		end; // try-except
  finally
    FreeAndNil(ds);
  end;
end;

procedure TTransaccion.validaAgregarAdicional(var session: TZQuery; params: TStrHashMap; accion: TAccion= AGREGAR);
var
	duplicarHogar : TTDuplicarHogares;
	numeroHogares : Integer;
	ds            : TDataSet;
	i             : Integer;
  total         : Integer;
  campos       : String;
begin
	try
		try
			session.sql.clear;
			ds:= TDaoFactory.getInstance.findViewCriteria('VistaTrMuestrasEnvipe', 'validaAdicional' , params);
      numeroHogares:= StrToInt(params.get('numero_hogares'));
			if ds.RecordCount> 0 then begin
        if(numeroHogares> ds.RecordCount)then begin
          for i := ds.RecordCount to numeroHogares - 1 do begin
            try
              session.sql.clear;
              duplicarHogar:= TTDuplicarHogares.create(params.get('id_muestra'), inttostr(i+ 1));
              duplicarHogar.execute(DUPLICAR,session, params);
              params.put('id_muestra', duplicarHogar.idMuestra);
              params.put('id_envipe2023_muestra', duplicarHogar.idEnvipe2023Muestra);
              TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, duplicarHogar.idMuestra);

              {*Verificar que el movimiento tenga el estatus correcto al agregar un hogar
               (VIVIENDA COMPLETA - 344), se agregó esta validación porque ahora tenemos
               2 campos id_estatus, el de la muestra complementaria y el de la tabla de movimientos
               si se quita el id_estatus de la tabla de la muestra complementaria hay que comentar
               esta validación. Febrero 2021*}
            if TDaoFactory.getInstance.toField('TrMovimientos', 'row', params, 'id_estatus') <> 344 then begin
              managerLogInfo('[TTransaccion.validaAgregarAdicional] Hogar ' + params.get('hogar') + ' con estatus '+ IntToStr(TDaoFactory.getInstance.toField('TrMovimientos', 'row', params, 'id_estatus')));
              params.put('id_estatus', estatusEnvipe.VIVIENDA_COMPLETO);
              //params.put('id_movimiento', ds.FieldByName('id_movimiento').AsString);
              TDaoFactory.getInstance.update('TrMovimientos', 'estatus', params, bitacoraEspecifica, session, T, params.get('id_muestra'));
              managerLogInfo('[TTransaccion.validaAgregarAdicional] Se actualiza tr_movimientos.id_estatus a ' + estatusEnvipe.VIVIENDA_COMPLETO + ', id_muestra ' + params.get('id_muestra') + ', id_movimiento ' + params.get('id_movimiento'));
            end;
            {****************************************************************}

            finally
              FreeAndNil(duplicarHogar);
            end; // try-finally
          end; // for
          ds:= TDaoFactory.getInstance.findViewCriteria('VistaTrMuestrasEnvipe', 'validaAdicional' , params);
          campos:= 'numero_hogares='+ IntToStr(numeroHogares);
          params.put('campos', campos);
          while not ds.Eof do begin
            session.sql.clear;
            params.put('id_envipe2023_muestra', ds.FieldByName('id_envipe2023_muestra').AsString);
            params.put('id_muestra', ds.FieldByName('id_muestra').AsString);
            TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, ds.FieldByName('id_muestra').AsString);
            ds.Next;
          end; // while
        end; // if numero de hogares>1
			end// if aun no hay adicionales
			else
				managerLogInfo('[TTransaccion.validaAgregarAdicional] ya tenia agregado los adicionales');
		except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.validaAgregarAdicional]');
		end; // try-except
	finally
		session.SQL.Clear;
	end; //  finally
end;

function TTransaccion.eliminarHogar(params: TStrHashMap; session: TZQuery):boolean ;
var
  vivienda     : TDataSet;
  campos       : string;
  numeroHogares: string;
  idMuesrta    : string;
  folio        : string;
begin
  try
    try
      result:= F;
      vivienda:= TDaoFactory.getInstance.findViewCriteria('EstatusSemaforos', 'eliminarHogar', params);
      if(vivienda.RecordCount> 0) then
        folio:= vivienda.FieldByName('folio').AsString;
        if (vivienda.FieldByName('hogar').AsString<> '1') and (vivienda.FieldByName('id_estatus').AsString= estatusEnvipe.VIVIENDA_COMPLETO) then begin
          params.put('id_muestra', vivienda.FieldByName('id_muestra').AsString);
          params.put('id_estatus', estatusEnvipe.ELIMINADO_REINICIO);
          // ID_GENERICO:= vivienda.FieldByName('id_muestra').AsString;
          inherited execute(AGREGAR, session, params);
          params.put('condicion', 'id_muestra='+ vivienda.FieldByName('id_muestra').AsString);
          params.put('tabla', 'tc_muestras');
          params.put('campos', 'folio='+ comillas(Copy(folio,1, Length(folio)-1)+'X'));
          TDaoFactory.getInstance().update('Generico', 'updateGenerico', params, bitacoraEspecifica, session);
          result:= T;
        end; // if
      params.put('folio', folio);
      vivienda:= TDaoFactory.getInstance.findViewCriteria('VistaTrMuestrasEnvipe', 'hogaresVivienda' , params);
      if vivienda.RecordCount> 0 then begin
        campos:= 'numero_hogares='+ IntToStr(vivienda.RecordCount);
        {*Se agrego validación para que cuando quede solo un hogar con informante inadecuado
          actualice la muestra a código 06. Febrero 2021*}
        if vivienda.RecordCount = 1 then begin
           params.put('id_muestra', vivienda.FieldByName('id_muestra').AsString);
           if TDaoFactory.getInstance.toField('VisitaDetalle', 'getCodRes06', params, 'total') >= 1 then begin
              campos := 'numero_hogares='+ comillas('1') + ', cod_res_viv='+comillas('06')+ ', c_hog = '+ estatusSemaforos.NO_APLICA+', c_viv = '+ estatusSemaforos.NO_APLICA;

              DATOS_MUESTRA.HOGAR := '1';
              params.put('colectiva', 'colectiva');
              params.put('inadecuado', 'inadecuado');
           end;
        end //vivienda = 1
        {*************************************************************}
        else begin{*Se agrega validación para que cambie la vivienda a código 06 cuando todos los hogares
               tienen informantes inadecuados. Febrero 2022*}
           params.put('upm', DATOS_MUESTRA.UPM);
           params.put('prog', DATOS_MUESTRA.PROG);
           params.put('viv_sel', DATOS_MUESTRA.VIV_SEL);
           params.put('totalHogaresInformanteInadecuado', TDaoFactory.getInstance.toField('TrEnvipeSdg', 'totalInformanteInadecuado', params, 'totalCod06'));
           if not isEmpty(params.get('totalHogaresInformanteInadecuado')) then
             if StrToInt(params.get('totalHogaresInformanteInadecuado')) = vivienda.RecordCount then begin
               campos := campos+', cod_res_viv='+comillas('06')+ ', c_hog = '+ estatusSemaforos.NO_APLICA+', c_viv = '+ estatusSemaforos.NO_APLICA;
               params.put('colectiva', 'colectiva');
               params.put('cod_res', RESULTADOS_ENTREVISTA.O6_INFORMANTE_INADECUADO);
             end;
        end;
        {*************************************************************}
        params.put('campos', campos);
        while not vivienda.Eof do begin
          session.sql.clear;
          params.put('id_envipe2023_muestra', vivienda.FieldByName('id_envipe2023_muestra').AsString);
          params.put('id_muestra', vivienda.FieldByName('id_muestra').AsString);
          TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, vivienda.FieldByName('id_muestra').AsString);
          vivienda.Next;
        end; // while
      end; // if
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.eliminarHogar]');
    end; // try-except
  finally
    FreeAndNil(vivienda);
  end; // try finally
end;


function TTransaccion.verificaCodigoVivienda(var session: TZQuery; params: TStrHashMap): string;
var
  ds       : TDataSet;
  campos   : TStrHashMap;
  codigo   : String;
  FLAG     : Boolean;
  negativas: string;
  numHogares,conVic,sinVic: Integer;
begin
  try
    try
      result:= '';
      session.SQL.Clear;
      FLAG  := F;
      codigo:= '';
      campos:= TStrHashMap.Create;
      campos:= TDaoFactory.getInstance().toMap('TcMuestras','row',params);
      campos.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      ds    := TDaoFactory.getInstance().findViewCriteria('VerificaCodigoVivienda','row',campos);
      if ds.RecordCount> 0 then begin
        numHogares:= ds.RecordCount;
        conVic:= 0;
        sinVic:= 0;
        while not ds.Eof do begin
          {Modificar condición para agregar el módulo de desplazamiento
		  if ((ds.FieldByName('c_vic').AsString= estatusSemaforos.FINALIZADO) and (ds.FieldByName('c_des').AsString= estatusSemaforos.FINALIZADO)) then}
          if (ds.FieldByName('c_vic').AsString= estatusSemaforos.FINALIZADO) then
            Inc(conVic);
		  {Modificar condición para agregar el módulo de desplazamiento
		  if ((ds.FieldByName('c_vic').AsString= estatusSemaforos.NO_APLICA) and (ds.FieldByName('c_des').AsString= estatusSemaforos.FINALIZADO)) then}
          if (ds.FieldByName('c_vic').AsString= estatusSemaforos.NO_APLICA) then
            Inc(sinVic);
          ds.Next;
        end;
        if numHogares <> (sinVic + conVic) then begin
          FLAG:= T;
          ds.First;
          while not ds.Eof do begin
            if (ds.FieldByName('c_sdg').AsString <> estatusSemaforos.FINALIZADO) then
              FLAG:= F;
            ds.Next;
          end; // while
          if FLAG then
            codigo:= RESULTADOS_ENTREVISTA.O3_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO
          else
            codigo:= RESULTADOS_ENTREVISTA.O4_ENTREVISTA_INCOMPLETA;
        end // if
        else
          if sinVic = numHogares then
            codigo:= RESULTADOS_ENTREVISTA.O2_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION
          else
            codigo:= RESULTADOS_ENTREVISTA.O1_ENTREVISTA_COMPLETA_CON_VICTIMIZACION;
        ds.First;
        negativas:= 'cod_res_viv='+comillas(codigo);
        if (codigo = RESULTADOS_ENTREVISTA.O1_ENTREVISTA_COMPLETA_CON_VICTIMIZACION) or (codigo = RESULTADOS_ENTREVISTA.O2_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION) then begin
          negativas:= negativas + ', c_vis_viv='+ comillas(estatusSemaforos.FINALIZADO)+ ', c_vis_hog='+ comillas(estatusSemaforos.FINALIZADO)+ ', c_hog='+ comillas(estatusSemaforos.FINALIZADO)
          + ', c_ver='+ comillas(estatusSemaforos.FINALIZADO); {Se agregó la coloración a verde del semáforo de verificación Febrero 2020}

          {Se agregó para actualizar además del hogar el id_estatus en todos los hogares. Enero 2021}
          params.put('c_hog', estatusSemaforos.FINALIZADO);
          actualizarHogaresVivienda(session, params);
          {************************************************}
        end;

        while not ds.Eof do begin
          if (ds.FieldByName('cod_res_viv').AsString <> codigo) and (codigo <> '') then begin
            params.put('id_envipe2023_muestra', ds.FieldByName('id_envipe2023_muestra').AsString);
            params.put('id_movimiento', ds.FieldByName('id_movimiento').AsString);
            params.put('id_muestra', ds.FieldByName('id_muestra').AsString);
            params.put('id_estatus', estatusEnvipe.FINALIZADO);
            if (codigo= RESULTADOS_ENTREVISTA.O1_ENTREVISTA_COMPLETA_CON_VICTIMIZACION) or (codigo= RESULTADOS_ENTREVISTA.O2_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION) then
              inherited execute(AGREGAR, session, params);
            if (codigo<> RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION) and (not isEmpty(ds.FieldByName('cod_neg_viv').AsString)) then
              negativas:= negativas+ ',cod_neg_viv='+ 'null';
            if (ds.FieldByName('cod_res_hog').AsString<> RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO) and (not isEmpty(ds.FieldByName('cod_neg_hog').AsString)) then
              negativas:= negativas+ ',cod_neg_hog='+ 'null';
            params.put('campos', negativas);
            TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, ds.FieldByName('id_muestra').AsString);
          end; // if
          ds.Next;
        end; // while
      end; // if
      Result:= codigo;
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.verificaCodigoVivienda]');
    end; // try-except
  finally
    FreeAndNil(ds);
    FreeAndNil(campos);
  end; // finally
end;

procedure TTransaccion.insertarVictimizaciones(var session: TZQuery; params: TStrHashMap);
var
  I, J         : Integer;
  semaforos    : string;
  datos,delitos: TDataSet;
  Flag         : Boolean;
begin
  try
    try
      session.SQL.Clear;
      datos  := TDaoFactory.getInstance().findViewCriteria('VistaGeneraDelitos', 'delitos', params);
      params.put('condicion', 'tr_envipe2023_muestras.id_envipe2023_muestra='+comillas(params.get('id_envipe2023_muestra')));
      params.put('hogar', 'tr_envipe2023_muestras.hogar='+params.get('hogar'));
      Flag:= T;
      while not datos.Eof do begin
        if datos.FieldByName('valor').AsString = '1' then begin
          Flag:= F;
          params.put('id_envipe_delito', datos.FieldByName('delito').AsString);
          params.put('registro',FormatDateTime(secuencias.SECUENCIA, Now));
          params.put('id_envipe2023_eleg', datos.FieldByName('id_envipe2023_eleg').AsString);
          semaforos:= '';
          for I := 1 to 5 do  begin
            if I<= StrToInt(datos.FieldByName('total').AsString) then
              semaforos:= semaforos + ','+ estatusSemaforos.SIN_INICIAR
            else
              semaforos:= semaforos + ','+estatusSemaforos.NO_APLICA;
          end; // if
          params.put('semaforos', semaforos);
          params.put('total', datos.FieldByName('total').AsString);
          {*06 Octubre 2020. Se agregó condición verificando que no exista el delito a insertar con
            ese mismo total en la tabla de victimizaciones*}
          if (TDaoFactory.getInstance.toField('TrEnvipeVictimizaciones', 'duplicado', params, 'total') = '0') then
            TDaoFactory.getInstance().insert('TrEnvipeVictimizaciones','insertarVictimizacion',params,bitacoraEspecifica, session)
          else
            managerLogDebug('[Victimizacion.insertarVictimizaciones] No se insertó el delito porque ya hay un registro de el. Delito: '+params.get('id_envipe_delito')+' id_envipe2023_muestra: '+params.get('id_envipe2023_muestra')+' Total: '+params.get('total'));
        end; // if
        datos.next;
      end; // while
      if Flag then begin
        {Se cambiaron los códigos y semáforos porque se agrego el módulo
        de desplazamiento Enero 2020
        params.put('campos', 'c_vic='+ estatusSemaforos.NO_APLICA+ ', cod_res_hog='+comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO)+ ', cod_neg_hog=null');
        execute(MODIFICAR,session,params);
        {*************************************************************}
        params.put('campos', 'c_vis_hog='+ estatusSemaforos.finalizado+ ', c_sel='+ estatusSemaforos.FINALIZADO+ ', c_vic='+ estatusSemaforos.NO_APLICA+ ', cod_res_hog='+comillas(RESULTADOS_ENTREVISTA.B_ENTREVISTA_COMPLETA_SIN_VICTIMIZACION)+ ', cod_neg_hog=null');
        execute(MODIFICAR,session,params);
      end;
      params.put('hogar', DATOS_MUESTRA.hogar);
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.insertarVictimizaciones]');
    end; // try-except
  finally
    FreeAndNil(datos);
  end; // finally
end;

procedure TTransaccion.verificarVictimizacion(var session: TZQuery; params: TStrHashMap);
var
  ds: TDataSet;
  I : Integer;
  FLAG  : Boolean;
begin
  try
    try
      params.put('condicion', '1=1');
      params.put('hogar', DML_DEFAULT);
      ds:= TDaoFactory.getInstance.findViewCriteria('VistaSeleccionadoVictimizacion', 'filtro', params);
      FLAG:= T;
      while not ds.Eof do begin
        for I := 1 to 5 do begin
          if (ds.FieldByName('c_vic_'+IntToStr(I)).AsString = estatusSemaforos.SIN_INICIAR) or
              (ds.FieldByName('c_vic_'+IntToStr(I)).AsString = estatusSemaforos.PARCIAL)then
            FLAG:= F;
        end;
        ds.Next;
      end;
      params.put('id_muestra',params.get('id_muestra'));
      params.put('id_envipe2023_muestra',params.get('id_envipe2023_muestra'));
      if FLAG then begin
        {Se cambiaron los códigos y semáforos porque se agrego el módulo
        de desplazamiento Enero 2020
        params.put('campos', 'c_vic='+ estatusSemaforos.FINALIZADO+ ', cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO)+ ', cod_neg_hog=null');
        params.put('id_estatus', estatusEnvipe.VICTIMIZACION_COMPLETO);
        inherited execute(AGREGAR, session, params);
        {****************************************************************}
        params.put('campos', 'c_vis_hog=' + estatusSemaforos.FINALIZADO+ ', c_sel=' + estatusSemaforos.FINALIZADO+ ', c_vic='+ estatusSemaforos.FINALIZADO+ ', cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.A_ENTREVISTA_COMPLETA_CON_VICTIMIZACION)+ ', cod_neg_hog=null');
        params.put('id_estatus', estatusEnvipe.VICTIMIZACION_COMPLETO);
        inherited execute(AGREGAR, session, params);
      end
      else
        params.put('campos', 'c_vic='+ estatusSemaforos.PARCIAL);
      TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, params.get('id_muestra'));
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.verificarVictimizacion]');
    end; // try-except
  finally
  end; // finally
end;

function TTransaccion.verificaCodigoHogar(var session: TZQuery; params: TStrHashMap): string;
var
  ds: TDataSet;
begin
  try
    try
      session.sql.clear;
      params.put('semaforo','cod_res_hog');
      result:= TDaoFactory.getInstance().toField('EstatusSemaforos', 'getSemaforo', params, 'cod_res_hog');
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.verificaCodigoHogar]');
    end; // try-except
  finally
    FreeAndNil(ds);
  end;  // try-finally
end;

procedure TTransaccion.verificacion(var session: TZQuery; params: TStrHashMap);
var
  ds    : TDataSet;
  campos: TStrHashMap;
begin
  try
    try
      session.SQL.Clear;
      campos:= TStrHashMap.Create;
      campos:= TDaoFactory.getInstance().toMap('TcMuestras','row',params);
      campos.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      ds    := TDaoFactory.getInstance().findViewCriteria('VerificaCodigoVivienda','row',campos);
      if ds.RecordCount> 0 then begin
        while not ds.Eof do begin
          params.put('id_envipe2023_muestra', ds.FieldByName('id_envipe2023_muestra').AsString);
          params.put('id_muestra', ds.FieldByName('id_muestra').AsString);
          TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session, T, ds.FieldByName('id_muestra').AsString);
          ds.Next;
        end; // while
      end // if
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.verificacion]');
    end; // try-except
  finally
    FreeAndNil(ds);
    FreeAndNil(campos);
  end; // try-finally
end;

function TTransaccion.actualizarMovimientosVerificacion(var session: TZQuery; params: TStrHashMap): boolean;
var
  ds    : TDataSet;
  campos: TStrHashMap;
begin
  try
    try
      result:= F;
      session.SQL.Clear;
      campos:= TStrHashMap.Create;
      campos:= TDaoFactory.getInstance().toMap('TcMuestras','row',params);
      campos.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      ds    := TDaoFactory.getInstance().findViewCriteria('VerificaCodigoVivienda','row',campos);
      if ds.RecordCount> 0 then begin
        while not ds.Eof do begin
          params.put('id_envipe2023_muestra', ds.FieldByName('id_envipe2023_muestra').AsString);
          params.put('id_movimiento', ds.FieldByName('id_movimiento').AsString);
          params.put('id_muestra', ds.FieldByName('id_muestra').AsString);
          inherited execute(AGREGAR, session, params);
          TDaoFactory.getInstance.update('TrEnvipeMuestras', 'semaforo', params, bitacoraEspecifica, session);
          ds.Next;
        end; // while
        result:= T;
      end // if
    except
      on e: exception do
        raise Exception.Create(e.Message+ '[TLevantamiento.verificacion]');
    end; // try-except
  finally
    FreeAndNil(ds);
    FreeAndNil(campos);
  end; // try-finally
end;

end.
