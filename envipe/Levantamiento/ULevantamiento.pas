unit ULevantamiento;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, AdvEdit, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid,
	DBAdvGrid, ExtCtrls, AdvPanel, ComCtrls, Db, UContenedorMaestro, AdvSmoothPanel,
	AdvSmoothExpanderPanel, CurvyControls, UStrHashMap, TypInfo, AdvSmoothLabel,
  REstatusEnvipe, CEstatusEnvipe;

type
	TFLevantamiento = class(TFContenedorMaestro)
		detalle: TPanel;
		tabla: TDBAdvGrid;
		Botones: TPanel;
		detallesVivienda: TAdvGlowButton;
		contenedorFiltro: TPanel;
		ds: TDataSource;
		btnmcc: TAdvGlowButton;
		btnBusca: TAdvGlowButton;
		GroupBox3: TGroupBox;
		contendorPrincipal: TPanel;
		AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
		Label1: TLabel;
    upm: TCurvyEdit;
    vivSel: TCurvyEdit;
		Panel1: TPanel;
    C_VIV: TPanel;
    AC_VIV: TAdvGlowButton;
    C_VIS_VIV: TPanel;
    AC_VIS_VIV: TAdvGlowButton;
    C_HOG: TPanel;
    AC_HOG: TAdvGlowButton;
    panelCentro: TPanel;
		estatus: TComboBox;
		Label8: TLabel;
		Label3: TLabel;
    entrevistador: TComboBox;
		Panel5: TPanel;
		totalesEN: TLabel;
		totalesSUP: TLabel;
    totales: TLabel;
    panelInferior: TPanel;
    panelSuperior: TPanel;
    btnPdf: TAdvGlowButton;
    Label4: TLabel;
    Label2: TLabel;
    prog: TCurvyEdit;
    C_VER: TPanel;
    AC_VER: TAdvGlowButton;
    control: TComboBox;
    Label5: TLabel;
    StaticText1: TStaticText;
    totalesENLib: TLabel;
		procedure FormActivate(Sender: TObject);
		procedure refrescarGrid(params: TStrHashMap = nil); virtual;
		procedure tablaRowChanging(Sender: TObject; OldRow, NewRow: Integer; var Allow: Boolean);
		procedure FormCreate(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure vivSelKeyPress(Sender: TObject; var Key: Char);
		procedure btnBuscaClick(Sender: TObject); virtual;
		procedure upmKeyPress(Sender: TObject; var Key: Char);
		procedure AdvSmoothExpanderPanel1Click(Sender: TObject);
		procedure tablaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState); virtual; // iktanAgregar
		procedure CregresarClick(Sender: TObject); override;
		procedure AdvSmoothExpanderPanel1ExpandPanel(Sender: TObject); virtual;
		procedure tablaDblClickCell(Sender: TObject; ARow, ACol: Integer);
		procedure tablaClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure progKeyPress(Sender: TObject; var Key: Char);
    procedure controlChange(Sender: TObject);
    procedure estatusChange(Sender: TObject);
    procedure entrevistadorChange(Sender: TObject);
    procedure tablaSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure tablaMouseLeave(Sender: TObject);
    procedure StaticText1MouseLeave(Sender: TObject);
    procedure clickAndCloseAllForms(Sender: TObject);
    procedure botonApagarClick(Sender: TObject);
		procedure botonCerrarClick(Sender: TObject);
    procedure AC_HOGClick(Sender: TObject);
    procedure AC_VIS_VIVClick(Sender: TObject);
    procedure AC_VIVClick(Sender: TObject);
    procedure detallesViviendaClick(Sender: TObject);
    procedure KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AC_VERClick(Sender: TObject);
    procedure btnmccClick(Sender: TObject);
    procedure btnPdfClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
	private
		{ Private declarations }
		procedure formatForma;
		procedure fillControles;
    procedure cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
    procedure construirParamsVisita(var params: TStrHashMap);
    procedure cargaParamsBitVerificacion(params: TStrHashMap);
	protected
		colInicio, colFin: Integer;
    levantamiento    : boolean;
    lastCol, lastRow : Integer;
    procedure findHogares;
	public
		procedure construirParametros(var params: TStrHashMap); virtual;
		procedure construirTotales(var params: TStrHashMap); virtual;
    procedure ajustaTabla;
    procedure verificarSemaforoVer;
		{ Public declarations }
	end;

var
	FLevantamiento: TFLevantamiento;

implementation

uses
	UDml, UCadenas, CLevantamiento, ULibrerias, UDaoFactory, UISelect,
	CBD, XConstantes,  UMcc, RLibrerias, UGenerales, UUtileriasTablas,
  CVisitas, RLevantamiento, UPresencia,
	UUtileriasEnvipe, CUtileriasEnvipe, RUtileriasEnvipe, //ULevantamientoHogar,
  UVisitasEnvipe, TVisitasEnvipe, UAccesoSemaforos, USeleccionInstrumento,
  CInterpreteCuestionario, TLevantamiento, UCambiaSemaforos, ULevantamientoHogar,
  ULevantamientoDetalle, UVerificacion, UCroquisEnvipe, UInterpreteEnvipe;
   {$R *.dfm}

procedure TFLevantamiento.fillControles;
var
	datos: TDataSet;
	params: TStrHashMap;
begin
	try
		try
			control.Clear;
			control.Items.Add('Todos');
			params := TStrHashMap.Create;
			datos := TDaoFactory.getInstance.findViewCriteria('TcMuestras', 'distinctUpm', params);
			while not datos.Eof do begin
        control.Items.Add(datos.FieldByName(datos.Fields[0].FieldName).AsString);
        datos.Next;
      end; // while
			control.ItemIndex := 0;
      estatus.Clear;
      estatus.Items.Add('Todos');
      estatus.Items.Add('Pendientes');
      estatus.Items.Add('Liberadas');
      estatus.Items.Add('Finalizadas');
      params.put('vivienda', '1');
      params.put('tipo', '0,1');
			datos := TDaoFactory.getInstance.findViewCriteria('TcMovilResultadosEntre', 'resultadoViviendaHogar', params);
			while not datos.Eof do begin
        estatus.Items.Add(datos.FieldByName('descripcion').AsString);
        datos.Next;
      end; // while
			estatus.ItemIndex := 0;
      entrevistador.Clear;
      entrevistador.Items.Add('Todos');
      params.put('nivel', '7');
      datos:= TDaoFactory.getInstance.findViewCriteria('TrMovilUsuarios', 'figurasNivel', params);
			while not datos.Eof do begin
        entrevistador.Items.Add(datos.FieldByName('entrevistador').AsString);
        datos.Next;
      end; // while
      entrevistador.ItemIndex:= 0;
		except
			on e: exception do
				managerException('[ULevantamiento.fillControles] ', e);
		end; // try-except
	finally
		freeandnil(datos);
		freeandnil(params);
	end;
end;

procedure TFLevantamiento.formatForma;
var
  datos : TDataSet;
  params: TStrHashMap;
begin
  try
    try
      params:= TStrHashMap.Create;
      Self.Color := clWhite;
      AdvSmoothExpanderPanel1.Caption.ColorStart := ColorAplicativo.CONTRASTE;
      AdvSmoothExpanderPanel1.Caption.ColorEnd := ColorAplicativo.CONTRASTE;
      AdvSmoothExpanderPanel1.ExpanderBorderColor := clWhite;
      AdvSmoothExpanderPanel1.ExpanderColor := clWhite;
      AdvSmoothExpanderPanel1.ExpanderDownColor := clWhite;
      AdvSmoothExpanderPanel1.ExpanderHoverColor := clWhite;
      btnBusca.Images := CImageListButtons40;
      detallesVivienda.Images := CImageListButtons40;
      btnmcc.Images := CImageListButtons40;
      btnPdf.Images := CImageListButtons40;
      btnBusca.ImageIndex := 3;
      detallesVivienda.ImageIndex := 24;
      btnmcc.ImageIndex := 33;
      btnPdf.ImageIndex := 34;
      formatButtonAccion(btnBusca);
      formatButtonAccion(btnmcc);
      formatButtonAccion(btnPdf);
      formatButtonAccion(detallesVivienda);
      tabla.cells[1, 0] := 'Opciones';
      //tabla.colWidths[1] := Botones.width + 3;
      tabla.DefaultRowHeight := Botones.height + 1;
      tabla.CellControls[1, tabla.Row] := Botones;
      datos                := TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params);
      panelSuperior.Visible:= (datosInstalacion.TYPE_INSTALL.isJE or (datos.FieldByName('ID_MOVIL_MENU_ROL').AsString= inttostr(Ord(TRolesUsuarios.ROL_SUPERVISOR))))or(datosInstalacion.TYPE_INSTALL.isSR or (datos.FieldByName('ID_MOVIL_MENU_ROL').AsString= inttostr(Ord(TRolesUsuarios.ROL_SR))))or(datosInstalacion.TYPE_INSTALL.isSC or (datos.FieldByName('ID_MOVIL_MENU_ROL').AsString= inttostr(Ord(TRolesUsuarios.ROL_SC)))); //Seguimiento
      GroupBox3.visible    := AdvSmoothExpanderPanel1.Expanded;
      upm.SetFocus;
    except
      on e: exception do
        managerException('[ULevantamiento.formatForma] ', e);
    end; // try-except
  finally
    FreeAndNil(datos);
    FreeAndNil(params);
  end; // try-finally
end;

procedure TFLevantamiento.FormCreate(Sender: TObject);
begin
  if USUARIO.ID_ROL = ROL_SUPERVISOR then
    hint := '|Supervisión' //hint:='|Seguimiento'
  else
    if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) then
      hint := '|Supervisión'
    else
      hint:='|Levantamiento';
	inherited;
	try
    if(not generales.INTERPRETE) then begin
      CTraza.Caption:= sumarTraza(hint);
      colInicio:= 10;
      colFin   := 13;
      modoTrabajo := False;
      cambiarTamanioForma(Self);
    end;
	except
		on e: exception do
			managerException('[ULevantamiento.FormCreate] ', e);
	end; // try-except
end;

procedure TFLevantamiento.FormActivate(Sender: TObject);
begin
	try
    if(not generales.INTERPRETE) then begin
      inherited;
      fillControles;
      refrescarGrid();
      formatForma;
      ajustaTabla;
    end; // if
	except
		on e: exception do
			managerException('[ULevantamiento.FormActivate] ', e);
	end; // try-except
end;

procedure TFLevantamiento.FormDestroy(Sender: TObject);
begin
	try
		restarTraza(hint);
		fillDatosMuestra(datosGrid, tabla.Row, true);
		levantamiento:= False;
		TUISelect.freeDataSet(datosGrid);
	except
		on e: exception do
			managerException('[ULevantamiento.FormDestroy] ', e);
	end; // try-except
end;

procedure TFLevantamiento.FormResize(Sender: TObject);
var
  sobrante    : Integer;
  medidaTabla : Integer;
  I           : Integer;
begin
  medidaTabla := 0;
  for I := 0 to tabla.ColCount - 1 do
    if not(I in [5]) then
      medidaTabla := medidaTabla + tabla.ColWidths[I];
  sobrante := tabla.Width - medidaTabla;
  if (tabla.RowCount * tabla.RowHeights[0]) > tabla.Height then
    sobrante := sobrante - 47;
  tabla.ColWidths[5] := Round(sobrante * 1) - 5;
end;

procedure TFLevantamiento.upmKeyPress(Sender: TObject; var Key: Char);
begin
	inherited;
	if not(Key in setNumeros) then
		Key := #0;
	if Key = #13 then
		vivSel.SetFocus;
end;

procedure TFLevantamiento.KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  try
    if Length(TCurvyEdit(sender).Text) = TCurvyEdit(sender).MaxLength then
      SelectNext(ActiveControl as TWinControl, True, True);
  except
    on e: exception do
      managerException('[ULevantamiento.KeyUp] ', e);
  end;
end;

procedure TFLevantamiento.vivSelKeyPress(Sender: TObject; var Key: Char);
begin
	if not(Key in setNumeros) then
		Key := #0;
	if (Key = #13) then
    prog.SetFocus;
end;

procedure TFLevantamiento.progKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in setNumeros) then
		Key := #0;
	if (Key = #13) and btnBusca.Enabled then
		btnBusca.Click;
end;

procedure TFLevantamiento.verificarSemaforoVer;
var
  CVisViv, CViv, CHog: String;
  params             : TStrHashMap;
  transaccion        : TTransaccion;
begin
  try
    try
      params:= TStrHashMap.create;
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      // consultar los semaforos en la BD, para pintar o no boton de VER
      CVisViv:= TDaoFactory.getInstance().toField('TrEnvipeMuestras', 'row', params, semaforo.VISITAS_VIVIENDA);
      CViv   := TDaoFactory.getInstance().toField('TrEnvipeMuestras', 'row', params, semaforo.VIVIENDA);
      CHog   := TDaoFactory.getInstance().toField('TrEnvipeMuestras', 'row', params, semaforo.HOGAR);
      if (CVisViv= estatusSemaforos.FINALIZADO) and (CViv= estatusSemaforos.FINALIZADO) and
         (CHog= estatusSemaforos.FINALIZADO) then begin
        transaccion:= TTransaccion.create;
        params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
        params.put('campos', 'C_VER='+ estatusSemaforos.FINALIZADO);
        transaccion.execute(LIBERAR, params);
      end; // if
    except
      on e: exception do
        managerException('[ULevantamiento.verificarSemaforoVer]', e);
    end; // try-except
  finally
    freeAndNil(params);
    freeAndNil(transaccion);
  end; // try-finally
end;

procedure TFLevantamiento.AC_HOGClick(Sender: TObject);
begin
  try
    try
      AC_HOG.Enabled:= F;
      if verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_HOG, DATOS_MUESTRA.ID_ESTATUS, datosGrid.FieldByName('c_hog').AsString) then begin
        FLevantamientoHogar:= TFLevantamientoHogar.Create(Application);
        FLevantamientoHogar.ShowModal;
        {Corrección para que cuando cambie el código de la vivienda no se pierda registro del filtro
         Enero 2021}
        estatus.ItemIndex := 0;
        btnBusca.click;
      end;
    except
      on e: exception do
        managerException('[ULevantamiento.AC_HOGClick] ', e);
    end; // try-except
  finally
    AC_HOG.Enabled:= T;
    if Assigned(FLevantamientoHogar) then
      FreeAndNil(FLevantamientoHogar);
    //verificarSemaforoVer
  end; // try-finally
end;

procedure TFLevantamiento.AC_VERClick(Sender: TObject);
var
  params     : TStrHashMap;
  transaccion: TTransaccion;
  resultado  : Integer;
  idEstatusMuestra : String;
  id_estatusMuestra : String;
begin
  try
    try
      managerLogDebug('[ULevantamiento.AC_VERClick] Entrando al semáforo de verificación');
      AC_VER.Enabled:= F;
      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      idEstatusMuestra := DATOS_MUESTRA.ID_ESTATUS;
      params := TStrHashMap.create;
      construirParamsVisita(params); // se inicializan parametros de visita
      fillDatosMuestra(datosGrid,tabla.Row);
      if DATOS_MUESTRA.COD_RES_VIV <> RESULTADOS_ENTREVISTA.OO_ASIGNADO then begin
        if verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_VER, DATOS_MUESTRA.ID_ESTATUS) then begin
          if (TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params).FieldByName('ID_MOVIL_MENU_ROL').AsString= inttostr(Ord(TRolesUsuarios.ROL_SUPERVISOR))) or (datosInstalacion.TYPE_INSTALL.isJE) then begin
            id_estatusMuestra:= TDaoFactory.getInstance.toField('TrEnvipeMuestras', 'obtenerIdEstatus', params, 'id_estatus');
            if ( (id_estatusMuestra = estatusEnvipe.EN_VERIFICACION) or ((datosGrid.fieldByName('c_ver').AsString = estatusSemaforos.NO_APLICA) and (datosInstalacion.TYPE_INSTALL.isJE)) ) then begin
              FVerificacion:= TFVerificacion.Create(Application);
              resultado:= FVerificacion.showModal;
              case (resultado) of
                mrOk: begin
                  params.put('campos', 'c_ver='+ estatusSemaforos.SIN_INICIAR + ', id_estatus = '+estatusEnvipe.RETORNO_A_CAMPO_DE_CAPTURA);
                  cargaParamsBitVerificacion(params);
                  params.put('verificacionVivienda', '1');
                  params.put('verificacionActualizacion', '1');
                  transaccion:= TTransaccion.create;
                  transaccion.execute(VERIFICAR, params);
                  managerLogDebug('[ULevantamiento.AC_VERClick] se retorno a campo');
                end; // mrOk
                mrYes: begin
                  params.put('campos', 'c_ver='+ estatusSemaforos.FINALIZADO + ', id_estatus = '+estatusEnvipe.LIBERADO_DE_CAMPO + ', liberado = 1, liberado_por = ''AI''');
                  params.put('id_estatus', estatusEnvipe.LIBERADO_DE_CAMPO);
                  params.put('verificacionVivienda', '1');
                  params.put('verificacionActualizacion', '1');
                  transaccion:= TTransaccion.create;
                  transaccion.execute(GENERA, params);
                  managerLogDebug('[ULevantamiento.AC_VERClick] se libero de campo');
                end; // mrYes
              end; // case
            end
            else
              mensajeError(TDml.getInstance.getMensaje('ULevantamiento', 'sinAcceso'));
          end //if
          else begin
            if ((TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioRegistrado', params).FieldByName('ID_MOVIL_MENU_ROL').AsString= inttostr(Ord(TRolesUsuarios.ROL_ENTREVISTADOR))) or (datosInstalacion.TYPE_INSTALL.isEN)) and
               (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cVerifClick001'))) then begin
              params.put('campos', 'c_ver='+ estatusSemaforos.NO_APLICA + ', id_estatus = '+estatusEnvipe.EN_VERIFICACION);
              params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
              cargaParamsBitVerificacion(params);
              transaccion:= TTransaccion.create;
              transaccion.execute(VERIFICAR, params);
              managerLogDebug('[ULevantamiento.AC_VERClick] MANDA A VERIFICAR LA VIVIENDA');
            end; // if
          end; // else
          btnBusca.Click;
        end; // if
      end
      else
        mensajeError(TDml.getInstance.getMensaje('ULevantamiento', 'cVerSVis'));
    except
      on e: exception do
		  	managerException('[TFLevantamiento.AC_VERClick] ', e);
    end;
  finally
    AC_VER.Enabled:= T;
    if Assigned(FVerificacion) then
      FreeAndNil(FVerificacion);
  end; // finally
end;

procedure TFLevantamiento.AC_VIS_VIVClick(Sender: TObject);
var
  activa: Boolean;
begin
  try
    try
      AC_VIS_VIV.Enabled:= F;
      fillDatosMuestra(datosGrid, tabla.Row);
      activa:= verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_VIS_VIV, DATOS_MUESTRA.ID_ESTATUS);
      FVisitasEnvipe:= TFVisitasEnvipe.Create(Application, activa,'1',F);
      FVisitasEnvipe.ShowModal;
      {Corrección para que cuando cambie el código de la vivienda no se pierda registro del filtro
       Marzo 2021}
      estatus.ItemIndex := 0;
      btnBusca.Click;
    except
      on E: Exception do
        managerException('[ULevantamiento.AC_VIS_VIVClick] ', e);
    end; // try-except
  finally
    AC_VIS_VIV.Enabled:= T;
    FreeAndNil(FVisitasEnvipe);
  end; // try-finally
end;

procedure TFLevantamiento.AC_VIVClick(Sender: TObject);
var
  params: TStrHashMap;
  campo : string;
begin
  inherited;
  try
    try
      AC_VIV.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      params:= TStrHashMap.Create;
      if verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_VIV, DATOS_MUESTRA.ID_ESTATUS, datosGrid.FieldByName('c_viv').AsString) then
        if verificarMensaje(DATOS_MUESTRA.ID_ESTATUS, TBotonSemaforo.VACIO) then begin
          construirParamsVisita(params); // se inicializan parametros de visita
          params.put('especifique', 'VIVIENDA');
          params.put('tipo_cues_visita', inttostr(ord(concentradoCuestionarios.CUES_VIVIENDA.tipoCues)));
          if DATOS_MUESTRA.ID_ESTATUS= estatusEnvipe.ASIGNADO then begin
            FSeleccionInstrumento:= TFSeleccionInstrumento.Create(Application);
            if FSeleccionInstrumento.ShowModal= mrOk then
              if FSeleccionInstrumento.electronico.Checked then begin
                campo:='FECHA_CAPTURA='+comillas(FormatDateTime(secuencias.SECUENCIA_SLASH, FSeleccionInstrumento.fecha.DateTime))+ ',tipo_sel='+ comillas('E');
                DATOS_MUESTRA.TIPO_CAPTURA:= 'E';
              end // if
              else begin
                campo:='FECHA_CAPTURA='+comillas(FormatDateTime(secuencias.SECUENCIA_SLASH, FSeleccionInstrumento.fecha.DateTime))+',tipo_sel=' + comillas('P');
                DATOS_MUESTRA.TIPO_CAPTURA:= 'P';
                DATOS_MUESTRA.DIA_CAPTURA := Copy(DateToStr(FSeleccionInstrumento.fecha.Date), 0, 2);
                DATOS_MUESTRA.MES_CAPTURA := Copy(DateToStr(FSeleccionInstrumento.fecha.Date), 4, 2);
              end; // else
          end; // if
          waitStart('Lanzando cuestionario...');
          managerLogDebug('[ULevantamiento.AC_VIVClick] lanzando cuestionario de la vivienda');
          concentradoCuestionarios.CUES_VIVIENDA.parametros:= DATOS_MUESTRA;
          TInterpreteEnvipe.getInstance.lanzaInterprete(TObject(concentradoCuestionarios.CUES_VIVIENDA.tipoCues));
          cambiaSemaforo(params, campo, concentradoCuestionarios.CUES_VIVIENDA.tabla, TBotonSemaforo.C_VIV);
        end;
    except
      on E: Exception do
        managerException('[ULevantamiento.AC_VIVClick] ', e);
    end; // exception
  finally
    WaitEnd;
    AC_VIV.Enabled:= T;
    FreeAndNil(params);
  end; // FINALLY
end;

procedure TFLevantamiento.AdvSmoothExpanderPanel1Click(Sender: TObject);
begin
	try
		contenedorFiltro.visible := F;
		if AdvSmoothExpanderPanel1.Expanded then
			AdvSmoothExpanderPanel1.Collapse
		else
			AdvSmoothExpanderPanel1.Expand;
		contenedorFiltro.visible := T;
	except
		on e: exception do
			managerException('[ULevantamiento.AdvSmoothExpanderPanel1Click] ', e);
	end; // try-except
end;

procedure TFLevantamiento.AdvSmoothExpanderPanel1ExpandPanel(Sender: TObject);
begin
	inherited;
	GroupBox3.visible := AdvSmoothExpanderPanel1.Expanded;
	if (AdvSmoothExpanderPanel1.Expanded) and (panelInferior.Visible) then
		upm.SetFocus;
  if not(modoTrabajo)then begin
    C_HOG.Visible     := F;
    C_VER.Visible     := F;
    C_VIS_VIV.Visible := F;
    C_VIV.Visible     := F;
  end;
  application.ProcessMessages;
  ajustaTabla;
end;

procedure TFLevantamiento.btnBuscaClick(Sender: TObject);
begin
	try
		refrescarGrid();
    datosGrid.RecNo:= tabla.Row;
		if (datosGrid.RecordCount = 1) and (vivSel.Text <> '') and (prog.Text <> '') and (upm.Text <> '') then begin
      modoTrabajo:= T;
      if modoTrabajo then
        posicionarBotonesSemaforo(datosGrid, tabla, Self, ImageListVerificacion, modoTrabajo, colInicio, colFin);
			fillDatosMuestra(datosGrid, tabla.Row);
      if datosGrid.RecordCount = 1 then
        ajustaTabla;
    end // if
    else begin
      modoTrabajo:= F;
      quitarBotones(tabla, Self, colInicio);
    end;
    botonApagar.Enabled := not(modoTrabajo);
    botonCerrar.Enabled := not(modoTrabajo);
    pTrazado.Enabled    := not(modoTrabajo);

    {Corrección para que el filtro se deshabilite en modo de trabajo,
     ya que anteriormente permitía cambiar de vivienda sin darle al botón regresar
     ocasionando que se quedaran visitas abiertas. Enero 2021}
    upm.Enabled     := not(modoTrabajo);
    vivSel.Enabled  := not(modoTrabajo);
    prog.Enabled    := not(modoTrabajo);
    control.Enabled := not(modoTrabajo);
    estatus.Enabled := not(modoTrabajo);
    btnBusca.Enabled := not(modoTrabajo);
    {*******************************************************}

	except
		on e: exception do
			managerException('ULevantamiento.btnBuscaClick', e);
	end; // try-except
end;

procedure TFLevantamiento.btnmccClick(Sender: TObject);
var
  parametros: string;
begin
  try
    if datosInstalacion.TYPE_INSTALL.isSC_SR then
      parametros:= Copy(usuario.CVE_OPERATIVA_EQUIPO, 3, 7)  //para que tome apartir de 01
    else
      parametros:= Copy(usuario.CVE_OPERATIVA_EQUIPO, 7, length(usuario.CVE_OPERATIVA_EQUIPO));
      parametros:=parametros + '|' +
      rellenaConCerosI(ds.DataSet.FieldByName('ENT').AsString, 2) +
      rellenaConCerosI(ds.DataSet.FieldByName('CVE_MUN').AsString, 3) +
      rellenaConCerosI(ds.DataSet.FieldByName('CVE_LOC').AsString, 4) + deleteChar
      (ds.DataSet.FieldByName('AGEB').AsString, '-') +
      rellenaConCerosI(ds.DataSet.FieldByName('MZA').AsString, 3);
      managerLogDebug('[ULevantamiento.btnMCCClick] cargando módulo cartografico de ' + parametros);
      mcc(parametros);
  except
    on e: exception do
      managerException('[ULevantamiento.btnMCCClick]', e);
  end; // except
end;

procedure TFLevantamiento.btnPdfClick(Sender: TObject);
begin
  try
		try
      datosGrid.RecNo:= tabla.Row;
      fillDatosMuestra(datosGrid, tabla.Row);
			FCroquisEnvipe           := TFCroquisEnvipe.Create(Application);
      FCroquisEnvipe.id_muestra:= datosGrid.FieldByName('ID_MUESTRA').AsString;
      FCroquisEnvipe.ruta      := T;
			FCroquisEnvipe.ShowModal;
		except
			on e: exception do
				managerException('[ULevantamiento.btnPdfClick] ', e);
		end; // try-except
	finally
		FreeAndNil(FCroquisEnvipe);
	end; // try-finally
end;

procedure TFLevantamiento.refrescarGrid(params: TStrHashMap = nil);
begin
	try
		try
			tabla.visible := F;
			construirParametros(params);
			TUISelect.freeDataSet(datosGrid);
			managerLogDebug('[ULevantamiento.refrescarGrid] cargando dataset : VistaLevantamiento, filtro,' + params.toString);
			datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaLevantamiento', 'filtro', params);
			ds.dataSet := datosGrid;
			construirTotales(params);
      //tabla.Columns.Items[5].Width:=365;
			if datosGrid.RecordCount > 0 then begin
				tabla.DataSource:= ds;
				botones.visible := datosGrid.RecordCount> 0;
				tabla.visible   := T;
        ajustaTabla;
      end // if datosGrid.RecordCount
			else begin
        tabla.visible := F;
        detalle.Caption := generales.SIN_DATOS;
      end; // else
			pintarConsecutivoDrawCell(tabla);
			managerLogDebug('[ULevantamiento.refrescarGrid] cargando dataset : registros encontrados: ' + inttostr(datosGrid.RecordCount));
		except
			on e: exception do
				managerException('[ULevantamiento.refrescarGrid] ', e);
		end; // try-except
	finally
		if Assigned(params) then
			freeandnil(params);
	end; // finally
end;

procedure TFLevantamiento.StaticText1MouseLeave(Sender: TObject);
begin
  inherited;
  StaticText1.Visible := F;
end;

procedure TFLevantamiento.entrevistadorChange(Sender: TObject);
begin
  if panelInferior.Visible then begin
		upm.Text   := '';
		vivSel.Text:= '';
    prog.Text  := '';
	end; // if
	btnBusca.Click;
end;

procedure TFLevantamiento.estatusChange(Sender: TObject);
begin
  	if panelInferior.Visible then begin
		upm.Text   := '';
		vivSel.Text:= '';
    prog.Text  := '';
	end; // if
	btnBusca.Click;
end;

procedure TFLevantamiento.tablaClickCell(Sender: TObject; ARow, ACol: Integer);
begin
 ds.DataSet.RecNo:= tabla.Row;
end;

procedure TFLevantamiento.tablaDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
	if (generales.ETAPA_DESARROLLO.CODIGO=DETALLE_ETAPA.DESARROLLO.CODIGO) or (not (generales.ETAPA_DESARROLLO.CODIGO=DETALLE_ETAPA.DESARROLLO.CODIGO) and (USUARIO.ID_ROL=ROL_ADMIN)) then begin
		if (panelInferior.Visible)  then begin
			if (datosGrid.RecordCount > 0) then begin
        datosGrid.RecNo:= tabla.row;
				upm.Text   := datosGrid.FieldByName('upm').AsString;
				vivSel.Text:= datosGrid.FieldByName('viv_sel').AsString;
        prog.Text  := datosGrid.FieldByName('prog').AsString;
        btnBusca.Click;
			end // if
			else begin
				upm.Text   := '';
				vivSel.Text:= '';
        prog.Text  := '';
			end; // else
		end; // if (panelInferior.Visible)
	end;//if
end;

procedure TFLevantamiento.tablaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  try
    drawCellTabla(Sender, ACol, ARow, Rect, ImageListVerificacion, colInicio, colFin);
  except
    on e: exception do
      managerException('[ULevantamiento.tablaDrawCell]', e);
  end; // except
end;

procedure TFLevantamiento.tablaMouseLeave(Sender: TObject);
begin
  inherited;
  //StaticText1.Visible := F;
end;

procedure TFLevantamiento.tablaRowChanging(Sender: TObject; OldRow, NewRow: Integer; var Allow: Boolean);
begin
  try
    inherited;
    posicionaBotonesAccion(Sender, NewRow, Botones);
  except
    on e: exception do
      managerException('[ULevantamiento.tablaRowChanging]', e);
  end; // except
end;

procedure TFLevantamiento.tablaSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  vivienda : TStrHashMap;
  desc     : String;
begin
  inherited;
  StaticText1.Visible:= (tabla.Cells[ACol,aRow] <> '') and (ACol<>0) and (ARow<>0) and (not (ACol in[10..13]));
  if StaticText1.Visible then begin
    if ACol= 9 then begin
      vivienda:= TStrHashMap.Create;
      vivienda.put('prog', tabla.Cells[4,aRow]);
      vivienda.put('viv_sel', tabla.Cells[3,aRow]);
      vivienda.put('upm', tabla.Cells[2,aRow]);
      StaticText1.Caption := tabla.Cells[ACol,aRow]+ ' - '+ TDaoFactory.getInstance().toField('VistaLevantamiento', 'getDescripcion', vivienda, 'descripcion');
      if Assigned(vivienda) then
			  freeandnil(vivienda);

      //StaticText1.Caption := tabla.Cells[ACol,aRow]+ ' - '+ ds.DataSet.fieldByName('descripcion').AsString;
    end else
      StaticText1.Caption := tabla.Cells[ACol,aRow];
    StaticText1.Left    := Mouse.CursorPos.X;
    StaticText1.Top     := Mouse.CursorPos.Y;
  end;
  lastCol := ACol;
  lastRow := ARow;
end;

procedure TFLevantamiento.construirTotales(var params: TStrHashMap);
var
	tot   : TStringList;
begin
	try
		try
      params.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      tot := TDaoFactory.getInstance.toStringList('VistaLevantamiento', 'totales', params);
			totalesEN.Caption     := 'Asignados a entrevistador [' + defaultValue(tot[1], '0') + ']';
      totalesENLib.Caption  := 'Liberados por entrevistador [' + defaultValue(tot[2], '0') + ']';
			totales.Caption       := 'Total de viviendas [' + defaultValue(tot[0], '0') + ']';
			totalesSUP.Caption    := 'Liberados por supervisor [' + defaultValue(tot[3], '0') + ']';
		except
			raise ;
		end; // if
	finally
		if Assigned(tot) then
			freeStringList(tot);
	end; // finally
end;

procedure TFLevantamiento.controlChange(Sender: TObject);
begin
	if panelInferior.Visible then begin
		upm.Text   := '';
		vivSel.Text:= '';
    prog.Text  := '';
	end; // if
	btnBusca.Click;
  if (tabla.RowCount> 0) then
    upm.Text:= copy(tabla.Cells[2,1],0,7);
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

procedure TFLevantamiento.construirParametros(var params: TStrHashMap);
var
	sqlqcondicion  : String;
	validaCondicion: boolean;
	asignados_entrevistador,liberado_entrevistador,liberado_supervisor:String;
begin
	try
		if not Assigned(params) then
			params := TStrHashMap.Create;
    sqlqcondicion:= 'id_estatus not in ('+ estatusEnvipe.ELIMINADO_REINICIO + ') | ';
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
          sqlqcondicion:= sqlqcondicion + ' id_estatus not in (' + estatusEnvipe.LIBERADO_DE_CAMPO + ') | ';
        end
        else
        if estatus.Items[estatus.ItemIndex]= 'Liberadas' then begin
          sqlqcondicion:= sqlqcondicion + ' cod_res_viv not in (' + comillas('01')+ ','+ comillas('02') + ') | ';
          sqlqcondicion:= sqlqcondicion + ' id_estatus in (' + estatusEnvipe.LIBERADO_DE_CAMPO + ') | ';
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
			managerException('[ULevantamiento.construirParametros] ', e);
	end; // try-except
end;

procedure TFLevantamiento.CregresarClick(Sender: TObject);
var
  visita: TVisitaEnvipe;
  params: TStrHashMap;
procedure ejecutar;
	begin
		modoTrabajo := False;

    {Corrección para que al salir del modo de trabajo limpie los datos de control
     de la vivienda. Enero 2021}
    upm.Text   := '';
    vivSel.Text:= '';
    prog.Text  := '';
    control.ItemIndex := 0;
    estatus.ItemIndex := 0;
    {*********************************************************}
		btnBusca.Click;
		quitarBotones(tabla, Self, colInicio);
	end;
begin
  try
    try
      if modoTrabajo Then	begin
        visita:= TVisitaEnvipe.Create(nil,'TrEnvipeMuestras', '');
        params:= TStrHashMap.Create;
        construirParamsVisita(params);
        if visita.checarVisitaActiva(params) then begin
          params.put('detalle', ' para la UPM[' + DATOS_MUESTRA.UPM + '], VIV_SEL [' + DATOS_MUESTRA.VIV_SEL + ']'+ ' y PROG ['+ DATOS_MUESTRA.PROG+ ']');
					if mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'cregresarClick001', params)) then	begin
  				  FPresencia:= TFPresencia.create(Application);
            if FPresencia.showmodal()= mrOk then begin
              if FPresencia.si.Checked then begin
                params.put('campos', 'visito_supervisor=1, nombre_supervisor='+comillas(FPresencia.CurvyEdit1.Text));
              end // if
              else
                 params.put('campos', 'visito_supervisor=0');
              visita.execute(VISITA_CERRAR, params);
              {*******29 Abril 2020***************
               Corrección, verificar si VISITA_CERRAR actualizó el campo fecha_termino
               **********************************}
              if visita.checarVisitaActiva(params) then begin
                params.put('fecha_termino', FormatDateTime(secuencias.secuencia, Now));
                managerLogDebug('[ULevantamiento.CregresarClick] Fallo actualización de fecha_termino... intentando actualizar id_movil_visita=' + params.get('id_movil_visita') + ' con fecha: ' + params.get('fecha_termino'));
                visita.execute(GENERICO, params);
                managerLogDebug('[ULevantamiento.CregresarClick] se actualizaron '+params.get('totRegistros')+' registros con la fecha_termino');
              end;
              {**********************************}
              ejecutar;
            end; //if Presencia OK
					end; // if mensaje
        end
        else
          ejecutar;
      end
      else begin
        {Corrección para que no salga de la ventana de levantamiento cuando aún
         hay información de la vivienda en los controles del filtro. Enero 2021}
        if (control.ItemIndex = 0) and (estatus.ItemIndex = 0) and (vivSel.Text = '') and (prog.Text = '') and (upm.Text = '') then
          inherited
        else //Limpiar los controles del filtro
          ejecutar;
      end; // else
    except
      on e: exception do
        managerException('[ULevantamiento.CregresarClick]', e);
    end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
  end;
end;

procedure TFLevantamiento.detallesViviendaClick(Sender: TObject);
begin
  try
    try
      inherited;
      datosGrid.RecNo:= tabla.Row;
      FLevantamientoDetalle:= TFLevantamientoDetalle.Create(Application);
      FLevantamientoDetalle.ShowModal;
    except
      on e: Exception do
        managerException('[ULevantamientoHogar.btnDetalleClick] ', e);
    end; //try-except
  finally
		freeandnil(FLevantamientoDetalle);
  end;
end;

procedure TFLevantamiento.cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
var
  transaccion : TTransaccion;
  cuestionario: TDatosCuestionario;
begin
  inherited;
  try
    try
      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      transaccion:= TTransaccion.create;
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
      cuestionario:= obtenerDatosCuestionario(boton, tabla, params, campo);
      if validarCuestionario(cuestionario.ESTATUS, boton, params, campo) then begin
        transaccion.execute(GENERA, params);
        {*---------21 de Octubre del 2020----------
         Se agregó validación para verificar que se haya hecho la inserción de la sentencia
         INSERT de los hogares adicionales registrados en el cuestionario
         en la tabla tr_movil_sentencias}
        params.put('verificacionVivienda', 'hogares');
        transaccion.execute(DUPLICAR, params);
      {*----------------------*}
      end;
      btnBusca.Click;
    except
    on e: exception do
      managerException('[TFLevantamiento.cambiaSemaforo] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFLevantamiento.findHogares;
begin

end;

procedure TFLevantamiento.clickAndCloseAllForms(Sender: TObject);
begin
 if not modoTrabajo then
  inherited;
end;

procedure TFLevantamiento.botonApagarClick(Sender: TObject);
begin
  if not modoTrabajo then
    inherited;
end;

procedure TFLevantamiento.botonCerrarClick(Sender: TObject);
begin
  if not modoTrabajo then
    inherited;
end;

procedure TFLevantamiento.construirParamsVisita(var params: TStrHashMap);
begin
	try
		params.put('fecha_inicio', FormatDateTime(secuencias.secuencia, Now));
		params.put('fecha_inicio_detalle', FormatDateTime(secuencias.secuencia, Now));
		params.put('fecha_termino_detalle', FormatDateTime(secuencias.secuencia, Now));
		params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
		params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
    params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
	except
		on e: exception do
			managerException('[ULevantamiento.construirParamsVisita] ', e);
	end; // try-except
end;



procedure TFLevantamiento.cargaParamsBitVerificacion(params: TStrHashMap);
begin
  try
    params.put('registro', FormatDateTime(secuencias.secuencia, Now));
    params.put('version_movil', getVersionBd);
    params.put('num_emp', USUARIO.NUM_EMP);
    params.put('cod_res', DATOS_MUESTRA.COD_RES_VIV);
    params.put('id_clave_operativa', IntToStr(USUARIO.ID_CLAVE_OPER));
    params.put('descripcion', comillas(semaforo.VISITAS_VIVIENDA+'='+ ds.DataSet.fieldByName(semaforo.VISITAS_VIVIENDA).asString+ ' '+
                              semaforo.VIVIENDA+'='+ ds.DataSet.fieldByName(semaforo.VIVIENDA).asString+ ' '+
                              semaforo.HOGAR+'='+ ds.DataSet.fieldByName(semaforo.HOGAR).asString+ ' '+
                              semaforo.VERIFICACION+'='+ ds.DataSet.fieldByName(semaforo.VERIFICACION).asString+ ' '+
                              semaforo.VISITAS_HOGAR+'='+ ds.DataSet.fieldByName(semaforo.VISITAS_HOGAR).asString+ ' '+
                              semaforo.SOCIODEMOGRAFICO+ '='+ ds.DataSet.fieldByName(semaforo.SOCIODEMOGRAFICO).asString+ ' '+
                              semaforo.SELECCIONADO+'='+ ds.DataSet.fieldByName(semaforo.SELECCIONADO).asString+ ' '+
                              semaforo.PRINCIPAL+'='+ds.DataSet.fieldByName(semaforo.PRINCIPAL).asString+' '+
                              semaforo.VICTIMIZACION+ '='+ ds.DataSet.fieldByName(semaforo.VICTIMIZACION).asString));
  except
  on e: exception do
    managerException('[TFLevantamiento.registraBitVerificacion] ', e);
  end; // try-except
end;


procedure TFLevantamiento.ajustaTabla;
var
  sobrante    : Integer;
  medidaTabla : Integer;
  I           : Integer;
begin
  if datosGrid <> nil then

  if datosGrid.RecordCount > 0 then begin
    medidaTabla := 0;
    for I := 0 to tabla.ColCount - 1 do
      if not(I in [5]) then
        medidaTabla := medidaTabla + tabla.ColWidths[I];
    sobrante := tabla.Width - medidaTabla;
    if (tabla.RowCount * tabla.RowHeights[0]) > tabla.Height then
      sobrante := sobrante - 47;
    tabla.ColWidths[5] := Round(sobrante * 1) - 5;
  end; // if datosGrid
end;

end.
