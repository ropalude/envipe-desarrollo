unit USeguimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULevantamiento, AdvGlowButton, ExtCtrls, UStrHashMap;

type
  TFSeguimiento = class(TFLevantamiento)
    C_SUP: TPanel;
    AC_SUP: TAdvGlowButton;
    C_SEL: TPanel;
    AC_SEL: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
	  procedure construirParametros(var params: TStrHashMap);override;
    procedure AC_SUPClick(Sender: TObject);
    procedure AC_SELClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fillUPM();   //AGREGADO PARA COMBO UPM
    procedure controlChange(Sender: TObject); //override;
    procedure fillEntrevistador();   //AGREGADO PARA COMBO ENTREVISTADOR
  private
    { Private declarations }
    procedure refrescarGrid(params: TStrHashMap = nil); override;
    var captionInfoSC: String;
    var captionInfoCC: String;
    var captionTotal: String;
  public
    { Public declarations }
  end;

var
  FSeguimiento: TFSeguimiento;

implementation

uses
  CBD,XConstantes,  ULibrerias, UReporte, UVerificacion,   UVerificacionSP,
  UDaoFactory, UUtileriasEnvipe, UUtileriasTablas, UISelect, CLevantamiento,
  TLevantamiento, CUtileriasEnvipe, CEstatusEnvipe, UGeneralesEnvipe, RLibrerias,
  UCadenas;

{$R *.dfm}

procedure TFSeguimiento.FormActivate(Sender: TObject);
begin
	try
    refrescarGrid();
    inherited;
    //Hint:= '|Seguimiento';
    if USUARIO.ID_ROL<>ROL_ADMIN then
        if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) then begin
           fillUPM;
           fillEntrevistador;
        end;
	except
		on e: exception do
			managerException('[USeguimiento.FormActivate] ', e);
	end; // try-except // try-except
end;

procedure TFSeguimiento.FormCreate(Sender: TObject);
begin
  try
  btnMCC.Visible  := False;
  btnPdf.Visible  := True;
  btnPdf.Left     := btnPdf.Width;
  Botones.Width   := btnAyuda.Width + btnPdf.Width;  //Botones.Width   := btnDetalle.Width + btnPdf.Width;
  //verificaReporte;
  //Hint:= '|Seguimiento';
  inherited;
  restarTraza(hint);
  Hint:= '|Seguimiento';
   if(not generales.INTERPRETE) then begin
      CTraza.Caption:= sumarTraza(hint);
      colInicio:= 10;
      colFin   := 10;
      modoTrabajo := False;
      cambiarTamanioForma(Self);
    end;
  except
		on e: exception do
			managerException('[USeguimiento.FormCreate] ', e);
	end; // try-except // try-except
end;

procedure TFSeguimiento.fillUPM();
var
   params: TStrHashMap;
begin
  try
    try
      params := TStrHashMap.Create;
      params.put('oficina','%');
      if USUARIO.ID_ROL<>ROL_ADMIN then
        if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) then begin
           params.put('oficina', USUARIO.CO_ESTATAL);
           TUISelect.build(control, 'TrResultadosSup', 'getUpm', params);
        end;
      control.Items.Insert(0,'Todas');
      control.ItemIndex:=0;
    except
    on e: exception do
      managerException('[TFSeguimiento.fillUPM] ', e);
    end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
  end; // try - finally
end;

procedure TFSeguimiento.controlChange(Sender: TObject);
begin
  if control.ItemIndex = 0 then
     control.ItemIndex := 0;
  inherited;
  if control.ItemIndex = 0 then
     upm.Text   := '';
end;
//Combo Entrevistador
procedure TFSeguimiento.fillEntrevistador();
var
   params: TStrHashMap;
begin
  try
    try
      params := TStrHashMap.Create;
      params.put('oficina','%');
      if USUARIO.ID_ROL<>ROL_ADMIN then
        if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) then
          params.put('oficina',copy(USUARIO.CUENTA,0,3));
        //else
          //params.put('oficina',copy(USUARIO.CUENTA,0,(length(USUARIO.CUENTA)-2)));
      //panelFiltroEntrevistador.Parent:= panelSuperior;
      TUISelect.build(entrevistador, 'TrUsuariosEnvipe', 'getClavesEntrevistador', params);
      entrevistador.Items.Insert(0,'Todas');
      entrevistador.ItemIndex:=0;
    except
    on e: exception do
      managerException('[TFSupervision.fillEntrevistador] ', e);
    end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
  end; // try - finally
end;
 //fin combo entrevistador
procedure TFSeguimiento.refrescarGrid(params: TStrHashMap = nil);
var
    posicionOficina   : Integer;
    i, finalizadas: Integer;//
  //params: TStrHashMap;
begin
	try
		try
      finalizadas  :=0;
			tabla.visible:= F;
			construirParametros(params);
			TUISelect.freeDataSet(datosGrid);
      managerLogDebug('[USeguimiento.refrescarGrid] cargando dataset : VistaLevantamiento, filtroSeguimiento,' + params.toString);
			params.put('nivel', USUARIO.NIVEL);
      if USUARIO.ID_ROL in [ROL_SR] then
        begin
        posicionOficina  := Pos('.',USUARIO.CUENTA)+ 3;
        params.put('entidad', Copy(USUARIO.CUENTA, posicionOficina, 2)+'%')
        end
      else if USUARIO.ID_ROL in [ROL_SC] then
         params.put('entidad', Copy(USUARIO.CVE_OPERATIVA_USUARIO, 3, 2)+'%')
      else
         params.put('entidad', '%');
         //params.put('entidad', Copy(USUARIO.CVE_OPERATIVA_USUARIO, 3, 2)+'%');
      datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaLevantamiento', 'filtroSeguimiento', params);
			ds.dataSet:= datosGrid;
			//construirTotales(params);
			if datosGrid.RecordCount> 0 then begin
				tabla.DataSource:= ds;
				botones.visible := datosGrid.RecordCount> 0;
				tabla.visible   := T;
        //---
        if USUARIO.ID_ROL<>ROL_ADMIN then
          if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) or (USUARIO.ID_ROL = ROL_SUPERVISOR) then begin
          //if 1=1 then begin
             if ds.DataSet.RecordCount> 0 then begin
                tabla.DataSource:= ds;
                tabla.visible   := T;
                for i := 1 to ds.DataSet.RecordCount do begin
                   ds.DataSet.RecNo:= i;
                   if ds.DataSet.fieldByName('C_SUP').AsString= estatusSemaforos.FINALIZADO then
                     inc(finalizadas);
                end; // for
                //totales.Caption:= 'Sin captura ['+intToStr(ds.DataSet.RecordCount- finalizadas)+']       Con captura ['+intToStr(finalizadas)+']';
                captionInfoSC:= 'Sin captura ['+intToStr(ds.DataSet.RecordCount- finalizadas)+']';//totales.Caption;
                captionInfoCC:= 'Con captura ['+intToStr(finalizadas)+']';
                captionTotal:= 'Total de Reportes ['+intToStr(ds.DataSet.RecordCount)+']';
                totales.Caption:= captionTotal;
                totalesEN.Caption:= captionInfoSC;
                totalesENLib.Caption:= captionInfoCC;
                totalesSUP.Caption  :='';
              end // if datosGrid.RecordCount
          end;
        //---
      end // if datosGrid.RecordCount
			else begin
        tabla.visible  := F;
        detalle.Caption:= generales.SIN_DATOS;
        totales.Caption:= 'Total de Reportes [0]';
        totalesEN.Caption:= 'Sin captura [0]';
        totalesENLib.Caption:= 'Con captura [0]';
        totalesSUP.Caption  :='';
      end; // else
			pintarConsecutivoDrawCell(tabla);
      FormResize(Self);
			managerLogDebug('[USeguimiento.refrescarGrid] cargando dataset : registros encontrados: ' + inttostr(datosGrid.RecordCount));
		except
			on e: exception do
				managerException('[USeguimiento.refrescarGrid] ', e);
		end; // try-except
	finally
		if Assigned(params) then
			freeandnil(params);
      entrevistador.Enabled := not(modoTrabajo);
	end; // finally
end;

procedure TFSeguimiento.AC_SUPClick(Sender: TObject);
var
  params      : TStrHashMap;
  transaccion : TTransaccion;
  resultado   : Integer;
begin
  try
    try
      datosGrid.RecNo:= tabla.row;
      fillDatosMuestra(datosGrid, tabla.Row);
      FReporte := TFREporte.Create(Application);
      transaccion := TTransaccion.create;
      params      := TStrHashMap.Create;
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      params.put('id_clave_operativa',   TDaoFactory.getInstance.toField('VistaReporteSup','DatosJE', params,'id_clave_operativa'));
      params.put('id_tr_periodo', DATOS_MUESTRA.ID_TR_PERIODO);
      params.put('id_estatus', DATOS_MUESTRA.ID_ESTATUS);
      params.put('verificacionVivienda', '0');
      if not(datosGrid.FieldByName('C_SUP').AsString = estatusSemaforos.FINALIZADO) then begin
          managerLogDebug('[USeguimiento.AC_SUPClick] lanzando cuestionario de reporte de supervisión');
          resultado:= FReporte.showModal;
          case (resultado) of
            mrOk: begin
              params.put('campos', semaforo.SUPERVISION+ ' = '+ estatusSemaforos.FINALIZADO)
            end  // mrOK
            else
              params.put('campos', semaforo.SUPERVISION+ ' = '+ estatusSemaforos.PARCIAL);
          end; // case
          transaccion.execute(COMPLEMENTO, params);
      end; // if
    except
      on E: Exception do
        managerException('[USeguimiento.AC_SUPClick] ', e);
    end;
  finally
    FreeAndNil(FReporte);
    FreeAndNil(params);
    FreeAndNil(transaccion);
    btnBusca.Click;
  end;
end;

procedure TFSeguimiento.AC_SELClick(Sender: TObject);
var
  params      : TStrHashMap;
  transaccion : TTransaccion;
  resultado  : Integer;
begin
  try
    try
      AC_SEL.Enabled:= F;
      datosGrid.RecNo:= tabla.row;
      fillDatosMuestra(datosGrid, tabla.Row);
      params        := TStrHashMap.create;
      transaccion   := TTransaccion.create;
      FVerificacion:= TFVerificacion.Create(Application);
      if (not(datosGrid.FieldByName('C_SEL').AsString = estatusSemaforos.FINALIZADO) and  not(datosGrid.FieldByName('C_SEL').AsString = estatusSemaforos.NO_APLICA)) then begin
        resultado:= FVerificacion.showModal;
        case (resultado) of
          mrYes: begin
            params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
            params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
            params.put('verificacionVivienda', '0');
            params.put('campos', 'c_sel = ' + estatusSemaforos.FINALIZADO);
            transaccion.execute(MODIFICAR, params);
          end; // mrYes
        end; // case
      end;
    except
      on E: Exception do
        managerException('[USeguimiento.AC_SUPClick] ', e);
    end;
  finally
    AC_SEL.Enabled:= T;
    FreeAndNil(FVerificacion);
    FreeAndNil(params);
    FreeAndNil(transaccion);
    btnBusca.Click;
  end;
end;

function getSentenciaCondicion(sentencias, condicion: String): string;
var
  sentencia: TStringList;
  indice   : integer;
begin
  try
    Result:= '';
    sentencia:= TStringList.Create;
    separaCadena(sentencia, sentencias, '|');
    for indice:= 0 to sentencia.Count - 1 do begin
      if(not isEmpty(sentencia[indice])) then
        Result:= Result+ sentencia[indice]+ condicion
    end; // for
    Result:= copy(Result, 0, Length(Result)- 5);
  finally
    FreeAndNil(sentencia);
  end; // try-finally
end;

procedure TFSeguimiento.construirParametros(var params: TStrHashMap);
var
	sqlqcondicion  : String;
	validaCondicion: boolean;
	asignados_entrevistador,liberado_entrevistador,liberado_supervisor:String;
begin
	try
		if not Assigned(params) then
			params := TStrHashMap.Create;
    sqlqcondicion:= 'tr_movimientos.id_estatus not in ('+ estatusEnvipe.ELIMINADO_REINICIO + ') | ';
    sqlqcondicion:= sqlqcondicion+ 'hogar='+ comillas('1')+ ' | ';
		if control.ItemIndex > 0 then begin
			sqlqcondicion  := sqlqcondicion + ' upm=' + comillas(control.Items[control.ItemIndex]) + ' | ';
			validaCondicion:= T;
    end;
    if estatus.ItemIndex > 0 then begin
      if estatus.Items[estatus.ItemIndex]= 'Finalizadas' then
        sqlqcondicion:= sqlqcondicion + ' cod_res_viv in (' + comillas('01')+ ','+ comillas('02') + ') | '
      else
        if estatus.Items[estatus.ItemIndex]= 'Pendientes' then begin
          sqlqcondicion:= sqlqcondicion + ' cod_res_viv not in (' + comillas('01')+ ','+ comillas('02') + ') | ';
          sqlqcondicion:= sqlqcondicion + ' tr_movimientos.id_estatus not in (' + estatusEnvipe.LIBERADO_DE_CAMPO + ') | ';
        end
        else
        if estatus.Items[estatus.ItemIndex]= 'Liberadas' then begin
          sqlqcondicion:= sqlqcondicion + ' cod_res_viv not in (' + comillas('01')+ ','+ comillas('02') + ') | ';
          sqlqcondicion:= sqlqcondicion + ' tr_movimientos.id_estatus in (' + estatusEnvipe.LIBERADO_DE_CAMPO + ') | ';
        end
        else
			    sqlqcondicion:= sqlqcondicion + ' cod_res_viv like' + comillas(Copy(estatus.Items[estatus.ItemIndex], 0, 2)+ '%') + ' | ';
			validaCondicion:= T;
    end;
    if (datosInstalacion.TYPE_INSTALL.isJE) or (datosInstalacion.TYPE_INSTALL.isSC) or (datosInstalacion.TYPE_INSTALL.isSR)then     //Seguimiento
      if entrevistador.ItemIndex> 0 then
        sqlqcondicion := sqlqcondicion + ' clave=' + comillas(Trim(split(entrevistador.Items[entrevistador.ItemIndex], '-')[0])) + ' | ';
	  // Armando parametros especificos
		if (panelInferior.Visible) then begin
			if (vivSel.Text <> '') and (prog.Text <> '') and (upm.Text <> '') then begin
        sqlqcondicion  := sqlqcondicion + 'upm=' + comillas(upm.Text)+'|';
        sqlqcondicion  := sqlqcondicion + ' viv_sel=' + comillas(vivSel.Text)+'|';
        sqlqcondicion  := sqlqcondicion + ' prog=' + comillas(prog.Text)+'|';
        validaCondicion:= T;
        modoTrabajo    := true;
        Botones.Enabled:= T;
      end // if
			else begin
        modoTrabajo := False;
        quitarBotones(tabla, Self, colInicio);
        Botones.Enabled:= F;
      end; // if-else
		end;// if (panelInferior.Visible)
		if isEmpty(sqlqcondicion) then begin
      params.put('condicion', DML_DEFAULT);
      modoTrabajo:= False;
    end
		else
      params.put('condicion', getSentenciaCondicion('|'+ sqlqcondicion, ' and '));
	except
		on e: exception do
			managerException('[TFSeguimiento.construirParametros] ', e);
	end; // try-except
end;

end.
