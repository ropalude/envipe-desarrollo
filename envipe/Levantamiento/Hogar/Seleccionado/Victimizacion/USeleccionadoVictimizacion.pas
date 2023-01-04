unit USeleccionadoVictimizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ULevantamiento, StdCtrls, CurvyControls, AdvSmoothPanel, UStrHashMap,
  AdvSmoothExpanderPanel, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, UContenedorMaestro, DB, RInterpreteCuestionario,
  REstatusEnvipe;

type
  TFSeleccionadoVictimizacion = class(TFContenedorMaestro)
    contendorPrincipal: TPanel;
    detalle: TPanel;
    tabla: TDBAdvGrid;
    Botones: TPanel;
    btnDetalle: TAdvGlowButton;
    C_VIC_1: TPanel;
    AC_VIC_1: TAdvGlowButton;
    C_VIC_4: TPanel;
    AC_VIC_4: TAdvGlowButton;
    C_VIC_5: TPanel;
    AC_VIC_5: TAdvGlowButton;
    ds: TDataSource;
    C_VIC_2: TPanel;
    AC_VIC_2: TAdvGlowButton;
    C_VIC_3: TPanel;
    AC_VIC_3: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    contenedorFiltro: TPanel;
    GroupBox3: TGroupBox;
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
    progresivo: TCurvyEdit;
    panelCentro: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    delito: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure refrescarGrid;
    procedure FormActivate(Sender: TObject);
    procedure formatForma;
    procedure tablaDblClick(Sender: TObject);
    procedure tablaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure btnBuscaClick(Sender: TObject);
    procedure CregresarClick(Sender: TObject);
    procedure construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
    procedure cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
    procedure AC_VIC_1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1ExpandPanel(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure fillControles;
    procedure delitoChange(Sender: TObject);
    function obtenerUltimaCaptura: String;
    procedure tablaClick(Sender: TObject);
    procedure tablaRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure CIktanButton1Click(Sender: TObject); override;  // iktanAgregar
    procedure CIktanButton2Click(Sender: TObject); override;  // iktanEliminar
    procedure tablaClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    procedure obtenerOpcDelito(delitoSelect: string);
  public
  protected
    colInicio, colFin: Integer;
    campo, idMuestra, hog : string;
  end;

var
  FSeleccionadoVictimizacion: TFSeleccionadoVictimizacion;

implementation
uses
  ULibrerias, UDaoFactory, UCadenas, UISelect,
  XConstantes, CLevantamiento, CBD, UUtileriasTablas, StrUtils,
  CUtileriasEnvipe, UUtileriasEnvipe, UDml,
  CInterpreteCuestionario, TypInfo, CEstatusEnvipe, UGenerales, TLevantamiento,
  UCambiaSemaforos, UAccesoSemaforos, RLevantamiento,
  UEncuentraSeleccionado, TVictimizacion, UJustificaVictimizacion,
  UInterpreteEnvipe, RLibrerias;
{$R *.dfm}

procedure TFSeleccionadoVictimizacion.FormCreate(Sender: TObject);
begin
  try
    {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
     cuestionario de victimización. Marzo 2021}
    if(not generales.INTERPRETE) then begin
       botonApagar.Enabled := F;
       botonCerrar.Enabled := F;
       pTrazado.Enabled    := F;
       colInicio         := 3;
       colFin            := tabla.ColCount- 1;
       Hint              := '|Victimización';
       vivSel.Text       := DATOS_MUESTRA.VIV_SEL;
       upm.Text          := DATOS_MUESTRA.UPM;
       hogar.Text        := DATOS_MUESTRA.HOGAR;
       progresivo.Text   := DATOS_MUESTRA.PROG;
       vivSel.Enabled    := F;
       upm.Enabled       := F;
       hogar.Enabled     := F;
       progresivo.Enabled:= F;
       CTraza.Caption    := sumarTraza(Hint);
       hog               := DATOS_MUESTRA.HOGAR;
       AdvSmoothExpanderPanel1.Caption.ColorStart := ColorAplicativo.CONTRASTE;
       AdvSmoothExpanderPanel1.Caption.ColorEnd := ColorAplicativo.CONTRASTE;
       AdvSmoothExpanderPanel1.ExpanderBorderColor := clWhite;
       AdvSmoothExpanderPanel1.ExpanderColor := clWhite;
       AdvSmoothExpanderPanel1.ExpanderDownColor := clWhite;
       AdvSmoothExpanderPanel1.ExpanderHoverColor := clWhite;
       fillControles;
       formatForma;
       CIktanButton2.Enabled := F;
       CIktanButton1.Enabled := F;
      //refrescarGrid;
    end;
  except
    on e: exception do
      managerException('[TFSeleccionadoVictimizacion.FormCreate] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.FormDestroy(Sender: TObject);
begin
  try
    restarTraza(hint);
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.FormDestroy] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.refrescarGrid;
var
  params                        : TStrHashMap;
  delitoSelect, idVictimizacion : String;
begin
  try
    params:= TStrHashMap.Create;
    try
      delitoSelect    :='0';
      idVictimizacion := '';
      tabla.visible   := F;
      ds.DataSet      := nil;
      TUISelect.freeDataSet(datosGrid);

      if (delito.ItemIndex <> 0) then begin
        {*Se agregan delitos de especifique 6.1-6.5, 15.1-15.5 Enero 2022*}
        delitoSelect := stringreplace(delito.Items[delito.ItemIndex], '.', '',[rfReplaceAll, rfIgnoreCase]);
        delitoSelect := stringreplace(delitoSelect, '-', ' ',[rfReplaceAll, rfIgnoreCase]);
        delitoSelect := Trim(Copy(delitoSelect, 0, 3));
        //params.put('condicion', 'tc_envipe_delitos.id_envipe_delito='+ Trim(Copy(delito.Items[delito.ItemIndex], 0, 2)))
        params.put('condicion', 'tc_envipe_delitos.id_envipe_delito='+ delitoSelect);
      end else
        params.put('condicion', '1=1');

      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaSeleccionadoVictimizacion', 'filtro', params);
      ds.dataSet:= datosGrid;
      if datosGrid.RecordCount> 0 then begin
        tabla.DataSource:= ds;
        //Botones.visible := datosGrid.RecordCount> 0;
        tabla.visible   := T;
        //tablaClick(tabla);
        datosGrid.RecNo:= tabla.row;
        idVictimizacion := ds.DataSet.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString;
        CIktanButton2.Enabled := (delito.ItemIndex <> 0) and ((StrToInt(delitoSelect) < 60) or ((StrToInt(delitoSelect) > 60) and not isEmpty(idVictimizacion) )) and (datosGrid.FieldByName('TOTAL').AsInteger > 0) and DATOS_MUESTRA.ASIGNADO and ((DATOS_MUESTRA.ID_ESTATUS<>estatusEnvipe.FINALIZADO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.LIBERADO_DE_CAMPO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.ELIMINADO_REINICIO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.VICTIMIZACION_COMPLETO));
        CIktanButton1.Enabled := (delito.ItemIndex <> 0) and ((StrToInt(delitoSelect) < 60) or ((StrToInt(delitoSelect) > 60) and not isEmpty(idVictimizacion) )) and (datosGrid.FieldByName('TOTAL').AsInteger < 5) and DATOS_MUESTRA.ASIGNADO and ((DATOS_MUESTRA.ID_ESTATUS<>estatusEnvipe.FINALIZADO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.LIBERADO_DE_CAMPO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.ELIMINADO_REINICIO) AND (DATOS_MUESTRA.ID_ESTATUS<> estatusEnvipe.VICTIMIZACION_COMPLETO));
      end // if datosGrid.RecordCount
      else begin
        tabla.visible  := F;
        detalle.caption:= generales.SIN_DATOS;
      end; // else
    except
      on e: exception do
        managerException('[USeleccionadoVictimizacion.refrescarGrid] ', e);
    end; // try-except
  finally
    FreeAndNil(params);
    Application.ProcessMessages;
  end; // try-finally
end;

procedure TFSeleccionadoVictimizacion.FormActivate(Sender: TObject);
begin
  try
    {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
     cuestionario de victimización. Marzo 2021}
    if(not generales.INTERPRETE) then begin
       TUseButtons      := 'iktanAgregar|iktanEliminar';
       inherited;
       btnBuscaClick(btnBusca);
    end;
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.FormActivate] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.formatForma;
begin
  try
    Self.Color             := clWhite;
    btnBusca.Images        := CImageListButtons40;
    btnDetalle.Images      := CImageListButtons40;
    btnBusca.ImageIndex    := 3;
    btnDetalle.ImageIndex  := 12;
    tabla.DefaultRowHeight := 60;//Botones.height + 1;
    Label1.Caption         := CONTROL_ETIQUETA+ ':';
    Botones.Visible        := F;
    GroupBox3.visible      := T;
    formatButtonAccion(btnBusca);
  except
    on e:exception do
      managerException('USeleccionadoVictimizacion.formatForma',e);
  end; //try-except
end;

procedure TFSeleccionadoVictimizacion.tablaClick(Sender: TObject);
begin
  //CIktanButton1.Enabled := tabla.Row > -1;
  //datosGrid.RecNo:= tabla.row;
  //CIktanButton2.Enabled := (delito.ItemIndex <> 0) and (delito.ItemIndex <> 6) and (delito.ItemIndex <> 15) and (datosGrid.FieldByName('TOTAL').AsInteger > 0);
  //CIktanButton1.Enabled := (delito.ItemIndex <> 0) and (delito.ItemIndex <> 6) and (delito.ItemIndex <> 15) and (datosGrid.FieldByName('TOTAL').AsInteger < 5);
end;

procedure TFSeleccionadoVictimizacion.tablaClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  if ACol = 2 then begin
    tabla.ShowHint:= True;
    tabla.Hint    := tabla.Cells[ACol,ARow];
  end // if
  else
    tabla.ShowHint:= False;
end;

procedure TFSeleccionadoVictimizacion.tablaDblClick(Sender: TObject);
begin
  inherited;
  try
    if (generales.ETAPA_DESARROLLO.CODIGO = DETALLE_ETAPA.DESARROLLO.CODIGO) then begin
      if (datosGrid.RecordCount> 0) then begin
        datosGrid.RecNo:= tabla.row;
//        upm.Text       := datosGrid.FieldByName('UPM').AsString;
//        vivSel.Text    := datosGrid.FieldByName('VIV_SEL').AsString;
        upm.Text       := DATOS_MUESTRA.UPM;
        vivSel.Text    := DATOS_MUESTRA.VIV_SEL;
        btnBuscaClick(Sender);
      end // if
      else begin
        upm.Text       := '';
        vivSel.Text    := '';
      end; // else
    end; // if estapa de desarrollo
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.tablaDblClick] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.tablaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  try
    drawCellTabla(Sender, ACol, ARow, Rect, ImageListVerificacion, colInicio, colfin );
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.tablaDrawCell]', e);
  end; // except
end;

procedure TFSeleccionadoVictimizacion.tablaRowUpdate(Sender: TObject; OldRow,
  NewRow: Integer);
begin
//  CIktanButton1.Enabled := datosGrid.FieldByName('TOTAL').AsInteger > 0;
//  CIktanButton2.Enabled := datosGrid.FieldByName('TOTAL').AsInteger < 5;
end;

function TFSeleccionadoVictimizacion.obtenerUltimaCaptura: String;
var
  params: TStrHashMap;
begin
  try
    try
      result:= '0';
      params:= TStrHashMap.Create;
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      result:= TDaoFactory.getInstance.toField('TrEnvipeVictimizaciones', 'ultimaCaptura', params, 'total');
      if result<> '1' then
        result:= '0';
    except
      on e: exception do
        managerException('[USeleccionadoVictimizacion.obtenerUltimaCaptura]', e);
    end;
  finally
    FreeAndNil(params);
  end; // try-finally
end;

procedure TFSeleccionadoVictimizacion.AC_VIC_1Click(Sender: TObject);
var
  parametros: TStrHashMap;
  totalGeneral: Integer;
  totalRest   : Integer;
begin
  inherited;
  try
    try
      TAdvGlowButton(Sender).Enabled:= F;
      parametros:= TStrHashMap.Create;
      parametros.put('complemento', '0');
      if not(datosGrid.FieldByName('C_VIC_'+ IntToStr(TAdvGlowButton(Sender).Tag)).AsString = estatusSemaforos.NO_APLICA) then begin
        fillDatosMuestra(datosGrid,tabla.Row);
        if ((datosGrid.FieldByName('C_VIC_'+ IntToStr(TAdvGlowButton(Sender).Tag)).AsString = estatusSemaforos.SIN_INICIAR) or (datosGrid.FieldByName('C_VIC_'+ IntToStr(TAdvGlowButton(Sender).Tag)).AsString = estatusSemaforos.PARCIAL)) and DATOS_MUESTRA.ASIGNADO then begin
          if (TAdvGlowButton(Sender).Tag = 1) or (datosGrid.FieldByName('C_VIC_'+ IntToStr(TAdvGlowButton(Sender).Tag - 1)).AsString = estatusSemaforos.FINALIZADO) then begin
            if verificarMensaje(DATOS_MUESTRA.ID_ESTATUS, C_VIC_1_, DATOS_MUESTRA.ID_MUESTRA) then begin
              construirParamsVisita(parametros, concentradoCuestionarios.CUES_VICTIMIZACION); // se inicializan parametros de visita
              parametros.put('especifique', 'VICTIMIZACION, HOGAR '+ DATOS_MUESTRA.HOGAR);
              DATOS_MUESTRA.param_modulo  := IntToStr(TAdvGlowButton(Sender).Tag);
              DATOS_MUESTRA.param_p_p_1_36:= obtenerUltimaCaptura;
              if datosGrid.FieldByName('TOTAL').AsInteger> 5 then
                DATOS_MUESTRA.param_modulo_de:= '5'
              else
                DATOS_MUESTRA.param_modulo_de:= datosGrid.FieldByName('TOTAL').AsString;
              if datosGrid.FieldByName('ID_ENVIPE_DELITO').AsInteger< 10 then
                DATOS_MUESTRA.param_bpcod:= '0'+datosGrid.FieldByName('ID_ENVIPE_DELITO').asString
              else
                DATOS_MUESTRA.param_bpcod:= datosGrid.FieldByName('ID_ENVIPE_DELITO').asString;
              DATOS_MUESTRA.param_r_sel    := DATOS_MUESTRA.NUM_REN_SEL;
              DATOS_MUESTRA.param_p_p_1_36 := obtenerUltimaCaptura;
              {* Se quito la ventana para seleccionar especifiques Enero 2022
              if (delito.ItemIndex= 6) or (delito.ItemIndex= 15) then
                obtenerDelito(IntToStr(TAdvGlowButton(Sender).Tag))
              else
                DATOS_MUESTRA.DELITO:= '1';*}
              //Obtiene el bpcod_opc (1..5) de los especifique (delitos 06 y 15) para los demás delitos es 1
              DATOS_MUESTRA.DELITO:= datosGrid.FieldByName('DELITO').AsString;
              obtenerOpcDelito(DATOS_MUESTRA.DELITO);

              parametros.put('bpcod_opcion', DATOS_MUESTRA.DELITO); //Corrección para que tome solo 1 registro al filtrar en la tabla de modulo cuando se trate de un especifique. 25 Marzo 2022
              waitStart('Lanzando cuestionario...');
              managerLogDebug('[ULevantamiento.AC_VIC_1Click] lanzando cuestionario de  ' + GetEnumName(TypeInfo(TTipoCuestionario), ord(VICTIMIZACION)));
              concentradoCuestionarios.CUES_VICTIMIZACION.parametros:= DATOS_MUESTRA;
              TInterpreteEnvipe.getInstance.lanzaInterprete(TObject(concentradoCuestionarios.CUES_VICTIMIZACION.tipoCues));
              WaitEnd;
              campo:='C_VIC_'+ IntToStr(TAdvGlowButton(Sender).Tag);
              btnBusca.Click;
              parametros.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
              parametros.put('seguimientoHogar', 'Hogar '+ DATOS_MUESTRA.HOGAR + ', Victimización');
              parametros.put('bpcod', DATOS_MUESTRA.param_bpcod);
              parametros.put('nd_tipo', DATOS_MUESTRA.param_modulo);
              cambiaSemaforo(parametros, campo, concentradoCuestionarios.CUES_VICTIMIZACION.tabla, TBotonSemaforo.C_VIC_);
              totalGeneral := TDaoFactory.getInstance().toField('TrEnvipeVictimizaciones', 'totalMuestra', parametros, 'TOTAL');
              totalRest    := TDaoFactory.getInstance().toField('TrEnvipeVictimizaciones', 'ultimaCaptura', parametros, 'TOTAL');
            end; // if
          end // if
          else
            mensajeError('Los cuestionarios de victimización deben ser contestados ordenadamente');
        end;
      end;
    except
    on e: exception do
        managerException('[USeleccionadoVictimizacion.AC_SDGClick]', e);
    end; // try-excep
  finally
    TAdvGlowButton(Sender).Enabled:= T;
    //WaitEnd;
    refrescarGrid;
    fillDatosMuestra(datosGrid,tabla.Row);
    if (DATOS_MUESTRA.ID_ESTATUS <> estatusEnvipe.VICTIMIZACION_INCOMPLETO) or (DATOS_MUESTRA.ID_ESTATUS <> estatusEnvipe.PRINCIPAL_COMPLETO) then begin
      delito.ItemIndex:= 0;
      CregresarClick(Cregresar);
    end;
    FreeAndNil(parametros);
    btnBusca.Click;
  end; // finally
end;

procedure TFSeleccionadoVictimizacion.AdvSmoothExpanderPanel1Click(
  Sender: TObject);
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
      managerException('[USeleccionadoVictimizacion.AdvSmoothExpanderPanel1Click] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.AdvSmoothExpanderPanel1ExpandPanel(
  Sender: TObject);
begin
  inherited;
  GroupBox3.visible := AdvSmoothExpanderPanel1.Expanded;
  if (AdvSmoothExpanderPanel1.Expanded) and (panelInferior.Visible) then
    upm.SetFocus;
end;

procedure TFSeleccionadoVictimizacion.btnBuscaClick(Sender: TObject);
begin
  try
    refrescarGrid;
    datosGrid.RecNo:= tabla.Row;
    if (datosGrid.RecordCount = 1) and (delito.ItemIndex <> 0) then begin
      modoTrabajoVic:= T;
      posicionarBotonesSemaforo(datosGrid, tabla,self,ImageListVerificacion,modoTrabajoVic,colInicio);

    end // if
    else begin
      modoTrabajoVic                 := F;
      quitarBotones(tabla, Self, colInicio);
    end; // else
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.btnBuscaClick] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.CregresarClick(Sender: TObject);
begin
  try
    if delito.ItemIndex <> 0 then begin
      delito.ItemIndex:= 0;
      btnBuscaClick(btnBusca);
    end // if
    else
      inherited;
  except
    on e: exception do
      managerException('[USeleccionadoVictimizacion.CregresarClick]', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.delitoChange(Sender: TObject);
begin
  inherited;
  btnBuscaClick(btnBusca);
end;

procedure TFSeleccionadoVictimizacion.construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
begin
  try
    //params.put('folio', DATOS_MUESTRA.folio);
    params.put('hogar', DATOS_MUESTRA.hogar);
    params.put('fecha_inicio', FormatDateTime(secuencias.secuencia, Now));
    params.put('fecha_inicio_detalle', FormatDateTime(secuencias.secuencia, Now));
    params.put('fecha_termino_detalle', FormatDateTime(secuencias.secuencia, Now));
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
    params.put('tipo_cues_visita', inttostr(ord(cuestionario.tipoCues)));
  except
    on e: exception do
      managerException('[ULevantamiento.construirParamsVisita] ', e);
  end; // try-except
end;

procedure TFSeleccionadoVictimizacion.cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
var
  transaccion        : TTransaccion;
  cuestionario       : TDatosCuestionario;
  campos             : string;
begin
  inherited;
  try
    try

      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      transaccion:= TTransaccion.create;
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_envipe_victimizacion', ds.DataSet.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString);
      params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
      cuestionario:= obtenerDatosCuestionario(boton, tabla, params, campo);
      campos      := '';
      if cuestionario.ESTATUS = 'I' then begin
        WaitEnd;
        FEncuentraSeleccionado:= TFEncuentraSeleccionado.Create(Application);
        FEncuentraSeleccionado.no.Checked            := T;
        FEncuentraSeleccionado.no.Visible            := F;
        FEncuentraSeleccionado.si.Visible            := F;
        FEncuentraSeleccionado.Label1.Visible        := F;
        FEncuentraSeleccionado.panelPendiente.Visible:= T;
        FEncuentraSeleccionado.panelPendiente.top    := 5;
        FEncuentraSeleccionado.Label3.Caption        := 'Justificación';
        FEncuentraSeleccionado.estatus.ItemIndex     := 0;
        FEncuentraSeleccionado.ShowModal;
        campos:='cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO)+ ',cod_neg_hog='+ comillas(Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
        params.put('cod_res_hog', RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO);
        params.put('cod_neg_hog', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
        if Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1) = '7'  then begin
           campos:= campos + ',PRINCIPAL_ESPECIFIQUE='+ comillas(FEncuentraSeleccionado.memo.Text);
           params.put('principal_especifique', FEncuentraSeleccionado.memo.Text);
           params.put('especifique', FEncuentraSeleccionado.memo.Text);
        end; // if
        params.put('vivienda', '0');
        params.put('complemento', '0');
        params.put('clave', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
        params.put('id_movil_causa_negativa',TDaoFactory.getInstance.toField('TcMovilCausasNegativas', 'byDescripcionViviendaHogar', params, 'id_movil_causa_negativa'));
        campo:= campo+'|'+campos;
      end;
      if validarCuestionario(cuestionario.ESTATUS, boton, params, campo) then
        transaccion.execute(COMPLEMENTAR, params);
      btnBusca.Click;

    except
    on e: exception do
      managerException('[TFLevantamiento.AC_MODClick] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
    if Assigned(FEncuentraSeleccionado) then
      FreeAndNil(FEncuentraSeleccionado);
  end; // try-finally
end;

procedure TFSeleccionadoVictimizacion.fillControles;
var
  datos  : TDataSet;
  params : TStrHashMap;
begin
  try
    try
      params := TStrHashMap.Create;
      delito.Clear;
      delito.Items.Add('Todos');
      //datos := TDaoFactory.getInstance.findViewCriteria('TcCDelitos', 'row');
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      datos := TDaoFactory.getInstance.findViewCriteria('VistaGeneraDelitos', 'tcDelitos', params);

      while not datos.Eof do begin
        delito.Items.Add(datos.FieldByName('DESCRIPCION').AsString);
        datos.Next;
      end; // while
      delito.ItemIndex := 0;
    except
      on e: exception do
        managerException('[ULevantamiento.fillControles] ', e);
    end; // try-except
  finally
    freeandnil(datos);
    freeAndNil(params);
  end;
end;

//procedure campoModificacion(var params: TStrHashMap; tipoDelito: Integer);
procedure campoModificacion(var params: TStrHashMap; descripcionDelito: String);
var
  delitoSelect : String;
  tipoDelito: Integer;
begin
  delitoSelect := stringreplace(descripcionDelito, '.', '',[rfReplaceAll, rfIgnoreCase]);
  delitoSelect := stringreplace(delitoSelect, '-', ' ',[rfReplaceAll, rfIgnoreCase]);
  delitoSelect := Trim(Copy(delitoSelect, 0, 3));
  tipoDelito   := StrToInt(delitoSelect);
  if (tipoDelito > 60) and (tipoDelito < 66) then
    tipoDelito := 6;
  if (tipoDelito > 150) and (tipoDelito < 156) then
    tipoDelito := 15;

  case tipoDelito of
    1,2,3,4: begin
      params.put('campo', 'ap6_6_m');
      params.put('tabla', 'tr_envipe2023_eleg_ap6_4');
      params.put('condicion', 'id_envipe2023_eleg_ap6_4='+params.get('id_envipe2023_eleg'));
    end;
    5,6,7,8,9,10,11,12,13,14,15: begin
      params.put('campo', 'ap7_4_m');
      params.put('tabla', 'tr_envipe2023_eleg_ap7_3');
      params.put('condicion', 'id_envipe2023_eleg_ap7_3='+params.get('id_envipe2023_eleg'));
    end;
  end;
end;

procedure TFSeleccionadoVictimizacion.CIktanButton1Click(Sender: TObject);  // AGREGAR
var
  params      : TStrHashMap;
  transaccion : TTransaccionVic;
  idVictimiza : string;
begin
  datosGrid.RecNo:= tabla.Row;
  params      := TStrHashMap.Create;
  transaccion := TTransaccionVic.Create;
  if datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString = '' then
    idVictimiza := TDaoFactory.getInstance.getIdKey
  else
    idVictimiza := datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString;
  FJustificacion := TFJustificacion.Create(Application);
  FJustificacion.tipoAccion := AGREGAR;
  FJustificacion.tipoDelito := datosGrid.FieldByName('ID_ENVIPE_DELITO').AsInteger;
  FJustificacion.ShowModal;
  if FJustificacion.ModalResult = mrOk then begin
    //campoModificacion(params, delito.ItemIndex);
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    params.put('delito',datosGrid.FieldByName('delito').AsString);
    //encontrar el delito a modificar
    params.put('id_envipe2023_eleg', TDaoFactory.getInstance.toField('VistaSeleccionadoVictimizacion', 'idsEnvipeDelito', params, 'id_envipe2023_eleg'));
    campoModificacion(params, delito.Items[delito.ItemIndex]);

    if datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString = '' then begin
      params.put('total',                 '1');
      params.put('registro',              FormatDateTime(secuencias.SECUENCIA, now));
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_envipe_delito',  datosGrid.FieldByName('ID_ENVIPE_DELITO').AsString);
      params.put('c_vic_1',               '1');
      params.put('c_vic_2',               '11');
      params.put('c_vic_3',               '11');
      params.put('c_vic_4',               '11');
      params.put('c_vic_5',               '11');
      params.put('id_envipe_victimizacion', idVictimiza);
      transaccion.execute(AGREGAR, params);
    end  // if datosGrid
    else begin
      params.put('total',                         IntToStr(datosGrid.FieldByName('TOTAL').AsInteger + 1));
      params.put('c_vic_1',                       datosGrid.FieldByName('C_VIC_1').AsString);
      params.put('c_vic_2',                       datosGrid.FieldByName('C_VIC_2').AsString);
      params.put('c_vic_3',                       datosGrid.FieldByName('C_VIC_3').AsString);
      params.put('c_vic_4',                       datosGrid.FieldByName('C_VIC_4').AsString);
      params.put('c_vic_5',                       datosGrid.FieldByName('C_VIC_5').AsString);
      params.put('c_vic_' + params.get('total'),  '1');
      params.put('id_envipe_victimizacion',   datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString);
      transaccion.execute(MODIFICAR, params);
    end; // else
    params.put('id_envipe_vic_justifica', FJustificacion.idJustificacion);
    transaccion.execute(COMPLEMENTO, params);
  end;
  FreeAndNil(FJustificacion);
  FreeAndNil(params);
  FreeAndNil(transaccion);
  //refrescarGrid;
  btnBuscaClick(btnBusca);
end;

procedure getUltimoCuestionario(var params: TStrHashMap; ultimoId: string);
var
  I         : integer;
  datosTemp : TDataSet;
begin
  params.put('condicion', '1=1');
  params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
  params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
  datosTemp := TDaoFactory.getInstance.findViewCriteria('VistaSeleccionadoVictimizacion', 'filtro', params);
  datosTemp.First;
  while not datosTemp.Eof do begin
    if not (datosTemp.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString = ultimoId) then begin
      params.put('id_envipe_victimizacion', datosTemp.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString);
      for I := 5 downto 1 do
        if datosTemp.FieldByName('C_VIC_' + IntToStr(I)).AsString = estatusSemaforos.FINALIZADO then begin
          params.put('campo', 'c_vic_' + IntToStr(I));
          if not isEmpty(params.get('campo')) then
            datosTemp.Last;
        end;
    end;
    datosTemp.Next;
  end;
end;

procedure TFSeleccionadoVictimizacion.CIktanButton2Click(Sender: TObject);  // ELIMINAR
var
  params      : TStrHashMap;
  transaccion : TTransaccionVic;
  transCierre : TTransaccion;
  totalGeneral: Integer;
  totalRest   : Integer;
  datosExtra  : TDataSet;
begin
  try
  datosGrid.RecNo:= tabla.Row;
  params      := TStrHashMap.Create;
  construirParamsVisita(params, concentradoCuestionarios.CUES_VICTIMIZACION); // se inicializan parametros de visita
  params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
  params.put('total', IntToStr(datosGrid.FieldByName('TOTAL').AsInteger - 1));
  if StrToInt(params.get('total')) >= 5 then
    params.put('total', '4');
  totalGeneral := TDaoFactory.getInstance().toField('TrEnvipeVictimizaciones', 'totalMuestra', params, 'TOTAL');
  totalRest    := TDaoFactory.getInstance().toField('TrEnvipeVictimizaciones', 'ultimaCaptura', params, 'TOTAL');
  if not (datosGrid.FieldByName('C_VIC_' + IntTostr(StrToInt(params.get('total'))+1)).AsString = estatusSemaforos.FINALIZADO) then begin
    if (totalRest >= 2) or ((totalRest = 1) and mensajeConfirmacion(TDml.getInstance.getMensaje('USeleccionadoVictimizacion', 'CIktanButton2Click001'))) then begin
        FJustificacion := TFJustificacion.Create(Application);
        FJustificacion.tipoAccion := ELIMINAR;
        FJustificacion.tipoDelito := datosGrid.FieldByName('ID_ENVIPE_DELITO').AsInteger;
        FJustificacion.idVictimiza:= datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString;
        FJustificacion.ShowModal;
        if FJustificacion.ModalResult = mrOk then begin
          transaccion := TTransaccionVic.Create;
          params.put('id_envipe_victimizacion', datosGrid.FieldByName('ID_ENVIPE2023_VICTIMIZACION').AsString);
          params.put('c_vic_1',                 datosGrid.FieldByName('C_VIC_1').AsString);
          params.put('c_vic_2',                 datosGrid.FieldByName('C_VIC_2').AsString);
          params.put('c_vic_3',                 datosGrid.FieldByName('C_VIC_3').AsString);
          params.put('c_vic_4',                 datosGrid.FieldByName('C_VIC_4').AsString);
          params.put('c_vic_5',                 datosGrid.FieldByName('C_VIC_5').AsString);
          params.put('c_vic_' + IntTostr(StrToInt(params.get('total'))+1),  '11');
          //campoModificacion(params, delito.ItemIndex);
          params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
          params.put('delito', datosGrid.FieldByName('delito').AsString);
          //encontrar el delito a modificar
          params.put('id_envipe2023_eleg', TDaoFactory.getInstance.toField('VistaSeleccionadoVictimizacion', 'idsEnvipeDelito', params, 'id_envipe2023_eleg'));
          campoModificacion(params, delito.Items[delito.ItemIndex]);

          params.put('upm', copy(DATOS_MUESTRA.UPM, 1, 6));
          params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
          params.put('nd_tipo', IntTostr(StrToInt(params.get('total'))+1));
          params.put('bpcod', rellenaConCerosI(datosGrid.FieldByName('ID_ENVIPE_DELITO').AsString, 2));

          {**Corrige incidencia para agregar-borrar-agregar el mismo delito, ocasionando un null en la actualización
             de la tabla del modulo al borrar logicamnte el cuestionario (upm con X). Feb 2022**}
          obtenerOpcDelito(datosGrid.FieldByName('delito').AsString); //Setea el valor de bpcod_opc en DATOS_MUESTRA.DELITO y bpcod (delitos 6 y 15) en DATOS_MUESTRA.param_bpcod
          if StrToInt(params.get('bpcod')) > 60 then
            params.put('bpcod', DATOS_MUESTRA.param_bpcod);
          params.put('id_del', params.get('upm') + 'X' + DATOS_MUESTRA.VIV_SEL + DATOS_MUESTRA.HOGAR + DATOS_MUESTRA.NUM_REN_SEL + params.get('bpcod') + params.get('nd_tipo') + DATOS_MUESTRA.DELITO);

          {**Corrección para eliminar lógicamente los registros del cuestionario en las tablas dependientes del modulo
             tomando como llave el id_del antes de ser modificado. Marzo 2022**}
          params.put('tabla_dep', 'tr_envipe2023_modulo_c');
          params.put('id_del_ant', DATOS_MUESTRA.UPM + DATOS_MUESTRA.VIV_SEL + DATOS_MUESTRA.HOGAR + DATOS_MUESTRA.NUM_REN_SEL + params.get('bpcod') + params.get('nd_tipo') + DATOS_MUESTRA.DELITO);
          /////////////////////////////////////////////////

          params.put('bpcod_opcion', DATOS_MUESTRA.DELITO); //Corrección para que actualice la tabla del modulo de acuerdo al bpcod_opc en los especifiques de los delitos 06 y 15. 29 Marzo 2022

          transaccion.execute(ELIMINAR, params);
          FreeAndNil(transaccion);
          if totalGeneral = 1 then begin
            transCierre := TTransaccion.create;
            {Se agrego para que actualice el id_estatus así como el código de resultado
            de la vivienda Marzo 10, 2020}
            params.put('complemento', '0');
            params.put('id_estatus', estatusEnvipe.PRINCIPAL_COMPLETO);
            {----------------------------}
            params.put('insertarVictimizaciones', '1');
            transCierre.execute(GENERICO, params);
            FreeAndNil(transCierre);
          end
          else
            if totalRest=1 then begin
              transCierre := TTransaccion.create;
              //params.put('id_clave_operativa', IntToStr(USUARIO.ID_CLAVE_OPER));
              params.put('campo', '');
              if StrToInt(params.get('total')) = 0 then
                getUltimoCuestionario(params, params.get('id_envipe_victimizacion'))
              else
                params.put('campo', 'c_vic_' + params.get('total'));
              params.put('valor', estatusSemaforos.PARCIAL);
              mensajeInfo(TDml.getInstance.getMensaje('USeleccionadoVictimizacion', 'CIktanButton2Click003'));
              transCierre.execute(COMPLEMENTAR, params);
              FreeAndNil(transCierre);
            end;
        end; // if FJustificacion.ModalResult
        FreeAndNil(FJustificacion);
    end; // if (totalGeneral >= 2)
  end // if not (datosGri
  else
    mensajeError(TDml.getInstance.getMensaje('USeleccionadoVictimizacion', 'CIktanButton2Click002'));
  FreeAndNil(params);
  btnBuscaClick(btnBusca);
  finally
    if totalGeneral = 1  then begin
      delito.ItemIndex := 0;
      CregresarClick(Cregresar);
    end
    else
      if totalRest = 1 then
        CregresarClick(Cregresar);
  end;
end;

procedure TFSeleccionadoVictimizacion.obtenerOpcDelito(delitoSelect: String);
begin
  DATOS_MUESTRA.DELITO := '1';

  if ((StrToInt(delitoSelect)) > 60) and ((StrToInt(delitoSelect)) < 66) then begin
    DATOS_MUESTRA.DELITO := Copy(delitoSelect, 2, 2);
    DATOS_MUESTRA.param_bpcod := '06';
  end;
  if ((StrToInt(delitoSelect)) > 150) and ((StrToInt(delitoSelect)) < 156) then begin
    DATOS_MUESTRA.DELITO := Copy(delitoSelect, 3, 3);
    DATOS_MUESTRA.param_bpcod := '15';
  end;

  {* Se quito la ventana para seleccionar especifiques Enero 2022
  try
    if datosGrid.FieldByName('C_VIC_'+ boton).AsString = estatusSemaforos.SIN_INICIAR then begin
      FSeleccionaDelito:= TFSeleccionaDelito.create(Application);
      if delito.ItemIndex= 6 then
        FSeleccionaDelito.delito:= '06'
      else
        FSeleccionaDelito.delito:= '15';
      FSeleccionaDelito.ShowModal;
      DATOS_MUESTRA.DELITO:= split(FSeleccionaDelito.delitos.Items[FSeleccionaDelito.delitos.itemIndex], ':')[0];
    end // if
    else
      DATOS_MUESTRA.DELITO:= '0';
  except
    on e: exception do
      managerException('[TFSeleccionadoVictimizacion.obtenerDelito] ', e);
  end;  *}
end;

end.
