unit ULevantamientoHogar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, AdvPanel, ComCtrls, Db, UContenedorMaestro, AdvSmoothPanel,
  AdvSmoothExpanderPanel, CurvyControls, UStrHashMap, RLibrerias, REstatusEnvipe,
  RInterpreteCuestionario;

procedure PintarCelda(const Sender: TObject; ACol, ARow: Integer; Rect: TRect; const listaImagenes: TImageList; colInicio, colFin: Integer; valor:String= '*'; imageIndex: Integer= 1);

type
  TFLevantamientoHogar = class(TFContenedorMaestro)
    detalle: TPanel;
    ds: TDataSource;
    contendorPrincipal: TPanel;
    tabla: TDBAdvGrid;
    Botones: TPanel;
    btnDetalle: TAdvGlowButton;
    C_VIS_HOG: TPanel;
    AC_VIS_HOG: TAdvGlowButton;
    C_SDG: TPanel;
    AC_SDG: TAdvGlowButton;
    C_SEL: TPanel;
    AC_SEL: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    contenedorFiltro: TPanel;
    GroupBox3: TGroupBox;
    panelCentro: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    complemento: TComboBox;
    panelInferior: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    upm: TCurvyEdit;
    vivSel: TCurvyEdit;
    Panel1: TPanel;
    btnBusca: TAdvGlowButton;
    hogar: TCurvyEdit;
    panelSuperior: TPanel;
    Label3: TLabel;
    prog: TCurvyEdit;
    Label5: TLabel;
    estatus: TComboBox;
    procedure refrescarGrid(params: TStrHashMap = nil);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure formatForma;
    procedure tablaDblClick(Sender: TObject);
    procedure tablaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure CregresarClick(Sender: TObject);
    procedure CIktanButton1Click(Sender: TObject); override;
    procedure CIktanButton2Click(Sender: TObject); override;
    procedure AdvSmoothExpanderPanel1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1ExpandPanel(Sender: TObject);
    procedure fillControles;
    procedure construirParametros(var params: TStrHashMap);
    procedure estatusChange(Sender: TObject);
    procedure complementoChange(Sender: TObject);
    procedure hogarKeyPress(Sender: TObject; var Key: Char);
    procedure contruirParametrosEliminar(var parametros: TStrHashMap; user: TDatosUsr);
    procedure tablaRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure AC_VIS_HOGClick(Sender: TObject);
    procedure AC_SDGClick(Sender: TObject);
    procedure AC_SELClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
  private
    procedure agregaAdicional(params: TStrHashMap);
    procedure construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
    procedure cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
    function llenaUsuarioByCuentaPass(cuenta: String; password: String): TDatosUsr;
    procedure viviendaColectiva(params: TStrHashMap);
  public
    { Public declarations }
  protected
    colInicio, colFin       : Integer;
    campo, idMuestra, folio : string;
  end;

var
  FLevantamientoHogar: TFLevantamientoHogar;

implementation

uses
  ucontrasenia, ULibrerias,	UCierre, UArchivos,
  XConstantes, UGenerales,
  UDml, UCadenas, UDaoFactory, UISelect,
  CBD,  UMcc,   UUtileriasTablas,
  UTipos, CLevantamiento,
  UUtileriasEnvipe,
  StrUtils, CEstatusEnvipe, TVisitas,
  CUtileriasEnvipe, UPresencia,
  TypInfo, RLevantamiento,  UAccesoDatos,
  UVisitasEnvipe, UAccesoSemaforos, CInterpreteCuestionario,
  TLevantamiento, UHogarSeleccionado, ULevantamientoDetalle,
  UInterpreteEnvipe, TVisitasEnvipe;

{$R *.dfm}

procedure TFLevantamientoHogar.FormDestroy(Sender: TObject);
begin
  try
		restarTraza(hint);
	except
		on e: exception do
			managerException('[ULevantamientoHogar.FormDestroy] ', e);
	end; // try-except
end;

procedure TFLevantamientoHogar.hogarKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in setNumeros) then
		Key := #0;
	if (Key = #13) then
    btnBusca.Click;
end;

procedure TFLevantamientoHogar.refrescarGrid(params: TStrHashMap = nil);
var
  I: Integer;
begin
  try
    tabla.visible:= F;
    ds.DataSet:= nil;
    TUISelect.freeDataSet(datosGrid);
    construirParametros(params);
    datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaLevantamiento', 'filtroHogares', params);
    ds.dataSet:= datosGrid;
    if datosGrid.RecordCount> 0 then begin
      tabla.DataSource:= ds;
      tabla.visible   := T;
    end // if datosGrid.RecordCount
    else begin
      tabla.visible  := F;
      detalle.caption:= generales.SIN_DATOS;
    end; // else
  except
    on e: exception do
      managerException('[ULevantamientoHogar.refrescarGrid] ', e);
  end; // try-except
end;

procedure TFLevantamientoHogar.tablaDblClick(Sender: TObject);
begin
  inherited;
  try
    if (generales.ETAPA_DESARROLLO.CODIGO= DETALLE_ETAPA.DESARROLLO.CODIGO) then begin
      if (datosGrid.RecordCount> 0) then begin
        datosGrid.RecNo:= tabla.row;
        upm.Text       := datosGrid.FieldByName('UPM').AsString;
        vivSel.Text    := datosGrid.FieldByName('VIV_SEL').AsString;
        prog.Text      := datosGrid.FieldByName('PROG').AsString;
        hogar.Text     := datosGrid.FieldByName('HOGAR').AsString;
        btnBuscaClick(Sender);
      end // if
      else begin
        upm.Text   := '';
        vivSel.Text:= '';
        prog.Text  := '';
        hogar.Text := '';
      end; // else
    end; // if estapa de desarrollo
  except
    on e: exception do
      managerException('[ULevantamientoHogar.tablaDblClick] ', e);
  end; // try-except

end;

procedure TFLevantamientoHogar.tablaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  try
    PintarCelda(Sender, ACol, ARow, Rect, ImageListVerificacion, colInicio, colfin );
  except
    on e: exception do
      managerException('[ULevantamiento.tablaDrawCell]', e);
  end; // except
end;

procedure TFLevantamientoHogar.tablaRowChanging(Sender: TObject; OldRow,
  NewRow: Integer; var Allow: Boolean);
begin
  try
    inherited;
    posicionaBotonesAccion(Sender, NewRow, Botones);
  except
    on e: exception do
      managerException('[TFLevantamientoHogar.tablaRowChanging]', e);
  end; // except
end;

procedure TFLevantamientoHogar.AC_SELClick(Sender: TObject);
begin
  try
    try
      AC_SEL.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      if verificarSemaforo(datosGrid.FieldByName('id_muestra').AsString, TBotonSemaforo.C_SEL, datosGrid.FieldByName('id_estatus').AsString) then begin
        FHogarSeleccionado            := TFHogarSeleccionado.Create(Application);
        FHogarSeleccionado.upm.text   := DATOS_MUESTRA.UPM;
        FHogarSeleccionado.vivSel.text:= DATOS_MUESTRA.VIV_SEL;
        FHogarSeleccionado.prog.text  := DATOS_MUESTRA.PROG;
        FHogarSeleccionado.hogar.text := DATOS_MUESTRA.HOGAR;
        FHogarSeleccionado.ShowModal;
        btnBusca.Click;
      end;
    except
      on e: Exception do
        managerException('[ULevantamientoHogar.AC_SELClick] ', e);
    end; //try-except
  finally
    AC_SEL.Enabled:= T;
    if Assigned(FHogarSeleccionado) then
  		freeandnil(FHogarSeleccionado);
  end;
end;

procedure TFLevantamientoHogar.AC_SDGClick(Sender: TObject);
var
  params: TStrHashMap;
  campo : string;
begin
  inherited;
  try
    try
      AC_SDG.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      params:= TStrHashMap.Create;
      if verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_SDG, DATOS_MUESTRA.ID_ESTATUS, datosGrid.FieldByName('c_sdg').AsString) then
        if verificarMensaje(DATOS_MUESTRA.ID_ESTATUS, TBotonSemaforo.VACIO) then begin
          construirParamsVisita(params, concentradoCuestionarios.CUES_SOCIO); // se inicializan parametros de visita
          params.put('especifique', 'SOCIODEMOGRAFICO, HOGAR '+ DATOS_MUESTRA.HOGAR);
          waitStart('Lanzando cuestionario...');
          managerLogDebug('[ULevantamiento.AC_SDGClick] lanzando cuestionario de la vivienda');
          concentradoCuestionarios.CUES_SOCIO.parametros:= DATOS_MUESTRA;
          TInterpreteEnvipe.getInstance.lanzaInterprete(TObject(concentradoCuestionarios.CUES_SOCIO.tipoCues));
          cambiaSemaforo(params, campo, concentradoCuestionarios.CUES_SOCIO.tabla, TBotonsemaforo.C_SDG);
        end;
    except
      on E: Exception do
        managerException('[TFLevantamientoHogar.AC_SDGClick] ', e);
    end; // exception
  finally
    AC_SDG.Enabled:= T;
    WaitEnd;
    FreeAndNil(params);
  end; // FINALLY

end;

procedure TFLevantamientoHogar.AC_VIS_HOGClick(Sender: TObject);
begin
   try
    try
      AC_VIS_HOG.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      FVisitasEnvipe:= TFVisitasEnvipe.Create(Application, F, '0', T);
      FVisitasEnvipe.CIktanButton1.Visible:= F;
      FVisitasEnvipe.ShowModal;
    except
    on e: exception do
        managerException('[ULevantamientoHogar.AC_VIS_VIVClick]', e);
    end; // try-except
  finally
    AC_VIS_HOG.Enabled:= T;
    if Assigned(FVisitasEnvipe) then
      FreeAndNil(FVisitasEnvipe);
    refrescarGrid;
  end; // finally
end;

procedure TFLevantamientoHogar.AdvSmoothExpanderPanel1Click(Sender: TObject);
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
			managerException('[ULevantamientoHogar.AdvSmoothExpanderPanel1Click] ', e);
	end; // try-except
end;

procedure TFLevantamientoHogar.AdvSmoothExpanderPanel1ExpandPanel(
  Sender: TObject);
begin
  inherited;
	GroupBox3.visible:= AdvSmoothExpanderPanel1.Expanded;
	if (AdvSmoothExpanderPanel1.Expanded) and (panelInferior.Visible) then
		upm.SetFocus;
end;

procedure TFLevantamientoHogar.btnBuscaClick(Sender: TObject);
begin
  refrescarGrid;
  datosGrid.RecNo:= tabla.Row;
  fillDatosMuestra(datosGrid, tabla.Row);
  formatForma;
  if (upm.Text <> '') and (vivSel.Text <> '') and (hogar.Text <> '') then begin
    modoTrabajoHogar:= T;
    if datosGrid.FieldByName('id_estatus').AsString<> estatusEnvipe.EN_REVISION then
      posicionarBotonesSemaforo(datosGrid, tabla,self,ImageListVerificacion,modoTrabajoHogar,colInicio);
    posicionaBotonesAccion(tabla,1,botones);
  end // if
  else begin
    modoTrabajoHogar:= F;
    quitarBotones(tabla, Self, colInicio);
    Botones.Visible:= F;
  end; // else
  CIktanButton1.Enabled := (not modoTrabajoHogar) and (estatus.ItemIndex = 0);
  CIktanButton2.Enabled := (not modoTrabajoHogar) and (estatus.ItemIndex = 0);

  {Corrección para que se deshabilite en modo de trabajo el hogar y el combo de
   códigos del hogar, ya que anteriormente permitía cambiar de hogar sin darle al
   botón regresar ocasionando que se quedaran visitas abiertas. Enero 2021}
  hogar.Enabled    := not(modoTrabajoHogar);
  estatus.Enabled  := not(modoTrabajoHogar);
  btnBusca.Enabled := not(modoTrabajoHogar);
  {***********************************************}
end;

procedure TFLevantamientoHogar.btnDetalleClick(Sender: TObject);
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

procedure TFLevantamientoHogar.FormCreate(Sender: TObject);
begin
  inherited;
  try
    {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
     cuestionario sociodemográfico. Marzo 2021}
    if(not generales.INTERPRETE) then begin
      botonApagar.Enabled:= F;
      botonCerrar.Enabled:= F;
      pTrazado.Enabled   := F;
      colInicio          := 4;
      colFin             := tabla.ColCount- 1;
      vivSel.Text        := DATOS_MUESTRA.VIV_SEL;
      upm.Text           := DATOS_MUESTRA.UPM;
      prog.text          := DATOS_MUESTRA.PROG;
      Hint               := '|Hogares';
      CTraza.Caption     := sumarTraza(Hint);
      refrescarGrid;
    end;
  except
    on e: exception do
      managerException('[ULevantamientoHogar.FormCreate] ', e);
  end; // try-except
end;

procedure TFLevantamientoHogar.FormActivate(Sender: TObject);
begin
  {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
   cuestionario sociodemográfico. Marzo 2021}
  if(not generales.INTERPRETE) then begin
    TUseButtons      := 'iktanAgregar|iktanEliminar';
    inherited;
    fillControles;
    formatForma;
    complemento.Visible:= F;
  end;
end;

procedure TFLevantamientoHogar.formatForma;
var
  params: TStrHashMap;
begin
  try
    Self.Color := clWhite;
    AdvSmoothExpanderPanel1.Caption.ColorStart := ColorAplicativo.CONTRASTE;
    AdvSmoothExpanderPanel1.Caption.ColorEnd   := ColorAplicativo.CONTRASTE;
    AdvSmoothExpanderPanel1.ExpanderBorderColor:= clWhite;
    AdvSmoothExpanderPanel1.ExpanderColor      := clWhite;
    AdvSmoothExpanderPanel1.ExpanderDownColor  := clWhite;
    AdvSmoothExpanderPanel1.ExpanderHoverColor := clWhite;
    btnBusca.Images                            := CImageListButtons40;
    btnDetalle.Images                          := CImageListButtons40;
    btnBusca.ImageIndex                        := 3;
    btnDetalle.ImageIndex                      := 12;
    Label1.Caption                             := CONTROL_ETIQUETA+ ':';
    tabla.colWidths[1]                         := 80;
    tabla.DefaultRowHeight                     := Botones.height + 1;
    tabla.CellControls[1, tabla.Row]           := Botones;
    formatButtonAccion(btnBusca);
    formatButtonAccion(btnDetalle);
    Label8.Visible     := F;
    params             := TStrHashMap.create;
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
    CIktanButton1.Visible:= accesoTipoInstalacion(params) and ((DATOS_MUESTRA.ID_ESTATUS<>estatusEnvipe.FINALIZADO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.LIBERADO_DE_CAMPO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.ELIMINADO_REINICIO));
    CIktanButton2.Visible:= accesoTipoInstalacion(params) and ((DATOS_MUESTRA.ID_ESTATUS<>estatusEnvipe.FINALIZADO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.LIBERADO_DE_CAMPO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.ELIMINADO_REINICIO));
    GroupBox3.visible    := AdvSmoothExpanderPanel1.Expanded;
  except
    on e:exception do
      managerException('ULevantamientoHogar.formatForma',e);
  end; //try-except
end;

procedure TFLevantamientoHogar.CregresarClick(Sender: TObject);
var
  visita: TVisitaEnvipe;
  params: TStrHashMap;
procedure ejecutar;
	begin
		modoTrabajoHogar := False;
    hogar.Text := '';
		btnBusca.Click;
		quitarBotones(tabla, Self, colInicio);
    tabla.CellControls[1, tabla.Row]:= Botones;
	end;
begin
  try
    if modoTrabajoHogar Then	begin
        visita:= TVisitaEnvipe.Create(nil,'TrEnvipeMuestras', '');
        params:= TStrHashMap.Create;
        construirParamsVisita(params, concentradoCuestionarios.CUES_SOCIO);
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
                params.put('actualizar_fecha', 'TRUE');
                managerLogDebug('[ULevantamientoHogar.CregresarClick.CregresarClick] Fallo actualización de fecha_termino... intentando actualizar id_movil_visita=' + params.get('id_movil_visita') + ' con fecha: ' + params.get('fecha_termino'));
                visita.execute(GENERICO, params);
                managerLogDebug('[ULevantamientoHogar.CregresarClick] se actualizaron '+params.get('totRegistros')+' registros con la fecha_termino');
              end;
              {**********************************}
              ejecutar;
            end;
					end; // if
        end //if cerrar visita
        else begin
          {*Se agregó 10 Dic ENVIPE 2021 para que pregunte por el supervisor cuando
            se ha cerrado la visita con código 06*}
          if (TDaoFactory.getInstance.toField('VisitaDetalle', 'getCodHog', params, 'total') > '0') then begin
            FPresencia:= TFPresencia.create(Application);
            if FPresencia.showmodal()= mrOk then begin
              if FPresencia.si.Checked then
                params.put('campos', 'visito_supervisor=1, nombre_supervisor='+comillas(FPresencia.CurvyEdit1.Text))
              else // if
                params.put('campos', 'visito_supervisor=0');
              visita.execute(GENERICO, params);
            end;
          end;

          ejecutar;
        end
    end //if modoTrabajoHogar
    else begin
      inherited;
    end; // else
  except
    on e: exception do
      managerException('[ULevantamientohOGAR.CregresarClick]', e);
  end; // try-except
end;

procedure TFLevantamientoHogar.estatusChange(Sender: TObject);
begin
  if Copy(estatus.Items[estatus.ItemIndex], 0, 1) <> 'C' then begin
    complemento.Visible:= F;
    Label8.Visible     := F;
    hogar.Text  := '';
    btnBusca.Click ;
  end // if
  else begin
    complemento.Visible:= T;
    Label8.Visible     := T;
    complementoChange(complemento);
  end; // else
end;

procedure TFLevantamientoHogar.cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
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
      params.put('complemento', '0');
      cuestionario:= obtenerDatosCuestionario(boton, tabla, params, campo);
      if validarCuestionario(cuestionario.ESTATUS, boton, params, campo) then
        transaccion.execute(GENERA, params);
      btnBusca.Click;
    except
    on e: exception do
      managerException('[TFLevantamientoHogar.cambiaSemaforo] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFLevantamientoHogar.CIktanButton1Click(Sender: TObject); // Agregar
var
  params                  : TStrHashMap;
  cerrarVivienda,colectiva: boolean;
begin
  try
    try
      colectiva     := F;
      cerrarVivienda:= F;
      params        := TStrHashMap.Create;
      if ((datosGrid.RecordCount<6) and (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'agregarAdicional')))) or (datosGrid.RecordCount=6) then begin
        fillDatosMuestra(datosGrid,datosGrid.RecordCount);
        params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
        params.put('id_envipe2021_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
        params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
        params.put('id_estatus', estatusEnvipe.VIVIENDA_COMPLETO);
        if datosGrid.RecordCount=6 then
          mensajeInfo(TDml.getInstance.getMensaje('ULevantamientoHogar', 'confirmaAdicional'))
        else if (datosGrid.RecordCount< 6) then begin
          agregaAdicional(params);
          mensajeInfo(TDml.getInstance.getMensaje('ULevantamiento','CIktanButton1Click001',params));
        end; // if
        btnBusca.Click;
      end
      else
    except
      on e: Exception do
        managerException('[TFLevantamientoHogar.CIktanButton1Click] ', e);
    end; // try-except
  finally
    FreeAndNil(params);
    if cerrarVivienda then begin
      modoTrabajoHogar:= F;
      CregresarClick(Cregresar);
    end;

  end; // try-finally
end;

procedure TFLevantamientoHogar.agregaAdicional(params: TStrHashMap);
var
  transaccion  : TTransaccion;
  campo        : string;
  numeroHogares: Integer;
begin
  inherited;
  try
    try
      numeroHogares:= strtoInt(ds.DataSet.FieldByName('numero_hogares').AsString);
      numeroHogares:= numeroHogares+ 1;
      campo        := 'COD_RES_HOG='+ comillas('D')+ ', C_VIS_HOG='+ comillas(estatusSemaforos.SIN_INICIAR)+', C_SDG='+ comillas(estatusSemaforos.SIN_INICIAR)+', C_PRI='+ comillas(estatusSemaforos.SIN_INICIAR)+', C_VIC='+ comillas(estatusSemaforos.SIN_INICIAR)+', C_SEL='+ comillas(estatusSemaforos.SIN_INICIAR);

      {*Se agregó validación para que al agregar un nuevo hogar cuando ya se tiene el principal
        con informante inadecuado cambie la coloración de los semáforos de vivienda y del hogar.
        Febrero 2021*}
      if (numeroHogares >= 2) and (ds.DataSet.FieldByName('c_hog').AsString = estatusSemaforos.NO_APLICA)
          and (ds.DataSet.FieldByName('c_viv').AsString = estatusSemaforos.NO_APLICA) then
          params.put('actualizaSemaforosHogViv', '1');
      {******************************************************}

      params.put('campos', campo);
      params.put('numero_hogares', IntToStr(numeroHogares));
      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      construirParamsVisita(params, concentradoCuestionarios.CUES_SOCIO); // se inicializan parametros de visita
      params.put('especifique', 'Se agregó hogar adicional');
      transaccion:= TTransaccion.create;
      transaccion.execute(AGREGAR, params);
      {*---------19 de Octubre del 2020----------
       Se agregó validación para verificar que se haya hecho la inserción de la sentencia
       INSERT del nuevo hogar en la tabla tr_movil_sentencias***}
      params.put('verificacionVivienda', 'agregarHogar');
      transaccion.execute(DUPLICAR, params);
      {*----------------------*}
    except
    on e: exception do
      managerException('[TFLevantamiento.agregaAdicional] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFLevantamientoHogar.CIktanButton2Click(Sender: TObject);  // Eliminar
var
  transaccion: TTransaccion;
  params     : TStrHashMap;
begin
  try
    params      := TStrHashMap.Create;
    transaccion := TTransaccion.create;
    try
      fillDatosMuestra(datosGrid,datosGrid.RecordCount);
      ID_GENERICO := DATOS_MUESTRA.ID_MUESTRA;
      params.put('numero', ds.DataSet.FieldByName('numero_hogares').AsString);
      if (ds.DataSet.FieldByName('numero_hogares').AsString<> '1') and (datosGrid.FieldByName('c_sdg').AsString= estatusSemaforos.SIN_INICIAR) then begin
        if (mensajeConfirmacion(TDml.getInstance.getMensaje('ULevantamiento', 'eliminarAdicional', params))) then begin
          params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
          construirParamsVisita(params,concentradoCuestionarios.CUES_SOCIO);
          if transaccion.execute(FINALIZAR, params)then
            mensajeInfo(TDml.getInstance.getMensaje('ULevantamiento','CIktanButton2Click001',params))
          else
            mensajeWarm(TDml.getInstance.getMensaje('ULevantamiento','CIktanButton2Click002',params));
          btnBusca.Click;
        end;
      end
      else begin
        if datosGrid.FieldByName('hogar').AsString = '1' then
          mensajeError(TDml.getInstance.getMensaje('ULevantamiento', 'eliminarPrincipal'))
        else
          mensajeError(TDml.getInstance.getMensaje('ULevantamiento', 'eliminarAdicionalParcial'))
      end;
    except
      on e: Exception do
        managerException('[TFLevantamientoHogar.CIktanButton2Click] ', e);
    end; // try-except
  finally
    FreeAndNil(params);
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFLevantamientoHogar.fillControles;
var
	datos: TDataSet;
	params: TStrHashMap;
begin
	try
		try
      params := TStrHashMap.Create;
      estatus.Clear;
      complemento.Clear;
      estatus.Items.Add('Todos');
      complemento.Items.Add('Todos');
      params.put('vivienda', '0');
      params.put('tipo', '0,1');
			datos := TDaoFactory.getInstance.findViewCriteria('TcMovilResultadosEntre', 'resultadoViviendaHogar', params);
			while not datos.Eof do begin
        estatus.Items.Add(datos.FieldByName('descripcion').AsString);
        datos.Next;
      end; // while
			estatus.ItemIndex := 0;
      datos := TDaoFactory.getInstance.findViewCriteria('TcMovilCausasNegativas', 'resultadoViviendaHogar', params);
			while not datos.Eof do begin
        complemento.Items.Add(datos.FieldByName('descripcion').AsString);
        datos.Next;
      end; // while
      complemento.ItemIndex:= 0;
		except
			on e: exception do
				managerException('[ULevantamiento.fillControles] ', e);
		end; // try-except
	finally
		freeandnil(datos);
		freeandnil(params);
	end;
end;

function getSentenciaCondicion(sentencias, condicion: String): string;
var
  sentencia: TStringList;
  indice   : integer;
begin
  try
    Result   := '';
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

procedure TFLevantamientoHogar.complementoChange(Sender: TObject);
begin
  hogar.Text:= '';
	btnBusca.Click ;
end;

procedure TFLevantamientoHogar.construirParametros(var params: TStrHashMap);
var
	sqlcondicion   : String;
	validaCondicion: boolean;
	asignados_entrevistador,liberado_entrevistador,liberado_supervisor:String;
begin
	try
		if not Assigned(params) then
			params := TStrHashMap.Create;
    // Descartar los eliminados
    sqlcondicion:= 'id_estatus not in ('+ estatusEnvipe.ELIMINADO_REINICIO + ') | ';
		// Armando parametros combos
    if estatus.ItemIndex > 0 then begin
      if Copy(estatus.Items[estatus.ItemIndex], 0, 1) <> RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO then begin
        sqlcondicion := sqlcondicion + ' cod_res_hog=' + comillas(Trim(Copy(estatus.Items[estatus.ItemIndex], 0, 2))) + ' | ';
        validaCondicion:= T;
      end
      else begin
        if complemento.ItemIndex <> 0 then begin
          sqlcondicion := sqlcondicion + ' cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO+ '.'+ Trim(Copy(complemento.Items[complemento.ItemIndex], 0, 1))) + ' | ';
          validaCondicion:= T;
        end
        else begin
          sqlcondicion := sqlcondicion + ' cod_res_hog like ' + comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO+ '%')+ '|';
          validaCondicion:= T;
        end;
      end;
    end;
	  // Armando parametros especificos
		if (panelInferior.Visible) then begin
			if upm.Text <> '' then begin
        sqlcondicion := sqlcondicion + 'upm=' + comillas(UPM.text)+'|';
        sqlcondicion := sqlcondicion + ' viv_sel=' + comillas(VIVSEL.text)+'|';
        sqlcondicion := sqlcondicion + ' prog=' + comillas(prog.text)+'|';
        if hogar.Text <> '' then begin
          sqlcondicion := sqlcondicion + ' hogar=' + comillas(hogar.Text)+'|';
          modoTrabajoHogar := T;
        end
        else
          modoTrabajoHogar := F;
        Botones.Enabled:= T;
      end // if
			else begin
        modoTrabajoHogar := False;
        quitarBotones(tabla, Self, colInicio);
        Botones.Enabled:= F;
      end; // if-else
		end;// if (panelInferior.Visible)
		if isEmpty(sqlcondicion) then begin
      params.put('condicion', DML_DEFAULT);
      modoTrabajoHogar:= False;
    end
		else
      params.put('condicion', getSentenciaCondicion('|'+ sqlcondicion, ' and '));
	except
		on e: exception do
			managerException('[ULevantamiento.construirParametros] ', e);
	end; // try-except
end;

function TFLevantamientoHogar.llenaUsuarioByCuentaPass(cuenta: String; password: String): TDatosUsr;
var
  params: TStrHashMap;
  datos : TDataSet;
begin
  try
    try
      params:= TStrHashMap.Create;
      params.put('cuenta', uppercase(cuenta));
      params.put('passwd', password);
      datos := TDaoFactory.getInstance.findViewCriteria('VistaUsuariosAcceso', 'usuarioByCuentaPass', params);
      if (datos.RecordCount > 0) then begin
        Result.NUM_EMP              := datos.fieldByName('NUM_EMP').AsString;
        Result.cuenta               := datos.fieldByName('CUENTA').AsString;
        Result.password             := datos.fieldByName('PASSWD').AsString;
        Result.ID_ROL               := TRolesUsuarios(datos.fieldByName('ID_MOVIL_MENU_ROL').asInteger);
        Result.ROL                  := datos.fieldByName('ROL_DESCRIPCION').AsString;
        Result.RFC                  := datos.fieldByName('RFC').AsString;
        Result.NOMBRE               := datos.fieldByName('NOMBRE_COMPLETO').AsString;
        Result.PUESTO               := datos.fieldByName('PUESTO').AsString;
        Result.NIVEL                := datos.fieldByName('NIVEL').AsString;
        Result.CVE_OPERATIVA_USUARIO:= datos.fieldByName('CLAVE').AsString;
        Result.ID_CLAVE_OPER        := strVal(datos.fieldByName('ID_CLAVE_OPER').AsString);
        Result.ID_ENCUESTA          := generales.ID_APLICACION;
      end // if
      else
        Mensaje(TDml.getInstance.getMensaje('UIngreso', 'cIktanButton1Click'), mtInformation, [mbOk], TDml.getInstance.getTituloMensaje('UIngreso', 'cIktanButton1Click'));
    except
      on e: exception do
				managerException('[ULevantamiento.llenaUsuarioByCuentaPass] ', e);
    end;
  finally
    FreeAndNil(params);
    FreeAndNil(datos);
  end; // try-finally
end;

procedure TFLevantamientoHogar.contruirParametrosEliminar(var parametros: TStrHashMap; user: TDatosUsr);
begin
  parametros.put('id_muestra_eliminado', DATOS_MUESTRA.ID_MUESTRA);
  parametros.put('registro', FormatDateTime(secuencias.secuencia, Now));
  parametros.put('num_emp', user.NUM_EMP);
  parametros.put('id_encuesta', user.ID_ENCUESTA);
end;

procedure PintarCelda(const Sender: TObject; ACol, ARow: Integer; Rect: TRect; const listaImagenes: TImageList; colInicio, colFin: Integer; valor:String= '*'; imageIndex: Integer= 1);
var
	bitmap    : TBitmap;
	tabla     : TDBAdvGrid;
	valCell   : String;
	listaArray: TStringarray;
begin
	try
		if valor<> '*' then
			listaArray:= split(valor, ',');
		if (ARow> 0) and (ACol in [colInicio .. colFin]) then
		try
			tabla:= TDBAdvGrid(sender);
			try
				bitmap := TBitmap.Create;
				valCell:= ifThenStrng(tabla.cells[ACol, ARow]='', '1', tabla.cells[ACol, ARow]);
        if tabla.Cells[colFin, ARow] = estatusSemaforos.NO_APLICA then
          valCell:= estatusSemaforos.NO_APLICA;
				listaImagenes.GetBitmap(strtoint(ifThenStrng(valor= '*', valCell, ifThenStrng(AnsiIndexStr(valCell, listaArray)>= 0, inttostr(imageIndex), valCell))), bitmap);
				tabla.canvas.stretchDraw(Rect, bitmap);
			finally
				if Assigned(bitmap) then
					FreeAndNil(bitmap);
			end; // try-finally
		except
		on e: Exception do
			raise Exception.Create('[UUtileriasTablas.drawCellTabla]'+ e.Message);
		end; // try-except
	finally
		if assigned(listaArray) then
			listaArray:= nil;
	end; // try-finally
end;

procedure TFLevantamientoHogar.construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
begin
	try
    params.put('hogar', DATOS_MUESTRA.hogar);
		params.put('fecha_inicio', FormatDateTime(secuencias.secuencia, Now));
		params.put('fecha_inicio_detalle', FormatDateTime(secuencias.secuencia, Now));
		params.put('fecha_termino_detalle', FormatDateTime(secuencias.secuencia, Now));
		params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
		params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
    params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
    params.put('tipo_cues_visita', inttostr(ord(cuestionario.tipoCues)));
	except
		on e: exception do
			managerException('[ULevantamiento.construirParamsVisita] ', e);
	end; // try-except
end;

procedure TFLevantamientoHogar.viviendaColectiva(params: TStrHashMap);
var
  transaccion: TTransaccion;
  campo      : string;
begin
  try
    try
      fillDatosMuestra(datosGrid, 1);
      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      construirParamsVisita(params, concentradoCuestionarios.CUES_SOCIO); // se inicializan parametros de visita
      campo:= 'COD_RES_VIV='+ comillas(RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION)+ ',COD_NEG_VIV='+ comillas('1');
      params.put('campos', campo);
      transaccion:= TTransaccion.create;
      transaccion.execute(GENERA, params);
    except
      on e: exception do
        managerException('[TFLevantamientoHogar.viviendaColectiva] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

end.

