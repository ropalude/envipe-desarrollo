unit UHogarSeleccionado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, AdvPanel, ComCtrls, Db, UContenedorMaestro, AdvSmoothPanel,
  AdvSmoothExpanderPanel, CurvyControls, UStrHashMap, RInterpreteCuestionario,
  REstatusEnvipe;

type
  TFHogarSeleccionado = class(TFContenedorMaestro)
    detalle: TPanel;
    ds: TDataSource;
    contendorPrincipal: TPanel;
    tabla: TDBAdvGrid;
    Botones: TPanel;
    btnDetalle: TAdvGlowButton;
    C_VIC: TPanel;
    AC_VIC: TAdvGlowButton;
    C_PRI: TPanel;
    AC_PRI: TAdvGlowButton;
    contenedorFiltro: TPanel;
    GroupBox3: TGroupBox;
    panelInferior: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    upm: TCurvyEdit;
    vivSel: TCurvyEdit;
    hogar: TCurvyEdit;
    Label3: TLabel;
    prog: TCurvyEdit;
    procedure refrescarGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure formatForma;
    procedure tablaRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure btnDetalleClick(Sender: TObject);
    procedure tablaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
    procedure construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
    procedure CIktanButton1Click(Sender: TObject); override;
    procedure AC_PRIClick(Sender: TObject);
    procedure AC_VICClick(Sender: TObject);
    {Se quitó el modulo de desplazamiento Feb 2020
    procedure AC_DESClick(Sender: TObject);}
  private
  public
    { Public declarations }
  protected
    colInicio, colFin: Integer;
    campo, idMuestra : string;
  end;

var
  FHogarSeleccionado: TFHogarSeleccionado;

implementation

uses
  ucontrasenia, ULibrerias,	UCierre, UArchivos,
  RLibrerias, XConstantes, UGenerales,
  UDml, UCadenas, UDaoFactory, UISelect,
  CBD,  UMcc,   UUtileriasTablas,
  UTipos, CLevantamiento, ULevantamientoDetalle,
  USeleccionInstrumento, TLevantamiento, UCambiaSemaforos,
  StrUtils, CEstatusEnvipe,
  CUtileriasEnvipe, UUtileriasEnvipe,
  CInterpreteCuestionario, TypInfo, UAccesoSemaforos, RLevantamiento, UCambio,
  UEncuentraSeleccionado, USeleccionadoVictimizacion,
  UInterpreteEnvipe;
{$R *.dfm}


procedure TFHogarSeleccionado.FormDestroy(Sender: TObject);
begin
  try
		restarTraza(hint);
	except
		on e: exception do
			managerException('[UHogarSeleccionado.FormDestroy] ', e);
	end; // try-except
end;

procedure TFHogarSeleccionado.refrescarGrid;
var
  parametros   : TStrHashMap;
  sqlqcondicion: string;
begin
  try
    tabla.visible  := F;
    Botones.visible:= F;
    modoTrabajo    := F;
    quitarBotones(tabla,Self,colInicio);
    ds.DataSet:= nil;
    parametros:= TStrHashMap.Create;
    TUISelect.freeDataSet(datosGrid);
    // Descartar los eliminados
    sqlqcondicion:= 'id_estatus not in ('+ estatusEnvipe.ELIMINADO_REINICIO + ') and ';
    parametros.put('condicion', sqlqcondicion+ 'upm='+ comillas(DATOS_MUESTRA.UPM)+ ' and viv_sel='+ comillas(DATOS_MUESTRA.VIV_SEL)+ ' and prog='+ comillas(DATOS_MUESTRA.PROG)+ ' and hogar='+ comillas(DATOS_MUESTRA.HOGAR));
    datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaLevantamiento', 'filtroHogares', parametros);
    ds.dataSet:= datosGrid;
    //construirTotales(params);
    if datosGrid.RecordCount> 0 then begin
      tabla.DataSource:= ds;
      Botones.visible := T;
      tabla.visible   := T;
      modoTrabajo     := T;
      posicionarBotonesSemaforo(datosGrid, tabla,self,ImageListVerificacion,modotrabajo,colInicio);
      C_PRI.Height := 48;
      C_VIC.Height := 48;
      {Se quitó el modulo de desplazamiento Feb 2020
      C_DES.Height := 48;}
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

procedure TFHogarSeleccionado.tablaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
  try
    drawCellTabla(Sender, ACol, ARow, Rect, ImageListVerificacion, colInicio, colfin );
  except
    on e: exception do
      managerException('[ULevantamiento.tablaDrawCell]', e);
  end; // except
end;

procedure TFHogarSeleccionado.tablaRowChanging(Sender: TObject; OldRow,
  NewRow: Integer; var Allow: Boolean);
begin
  inherited;
	posicionaBotonesAccion(sender,newRow,botones);
end;

procedure TFHogarSeleccionado.FormCreate(Sender: TObject);
begin
  inherited;
  try
    {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
     cuestionario principal. Marzo 2021}
    if(not generales.INTERPRETE) then begin
       botonApagar.Enabled := F;
       botonCerrar.Enabled := F;
       pTrazado.Enabled    := F;
       colInicio  := 3;
       colFin     := tabla.ColCount- 1;
       Hint       := '|Seleccionado';
       CTraza.Caption:= sumarTraza(Hint);
       refrescarGrid;
    end;
  except
    on e: exception do
      managerException('[ULevantamientoHogar.FormCreate] ', e);
  end; // try-except
end;

{procedure TFHogarSeleccionado.AC_DESClick(Sender: TObject);
var
  params: TStrHashMap;
  campo : string;
  transaccion: TTransaccion;
begin
  inherited;
  try
    try
       if not (datosGrid.FieldByName('c_des').AsString = estatusSemaforos.FINALIZADO) then begin
         AC_DES.Enabled:= F;
         fillDatosMuestra(datosGrid,tabla.Row);
         params:= TStrHashMap.Create;
         construirParamsVisita(params, concentradoCuestionarios.CUES_DESPLAZAMIENTO); // se inicializan parametros de visita
         params.put('especifique', 'DESPLAZAMIENTO, HOGAR '+ DATOS_MUESTRA.HOGAR);
         if ((datosGrid.FieldByName('c_pri').AsString = estatusSemaforos.FINALIZADO) and ((datosGrid.FieldByName('c_vic').AsString = estatusSemaforos.FINALIZADO) or (datosGrid.FieldByName('c_vic').AsString = estatusSemaforos.NO_APLICA))) then begin
              waitStart('Lanzando cuestionario...');
              managerLogDebug('[UHogarSeleccionado.AC_DESClick] lanzando módulo de desplazamiento');
              concentradoCuestionarios.CUES_DESPLAZAMIENTO.parametros:= DATOS_MUESTRA;
              TInterpreteEnvipe.getInstance.lanzaInterprete(TObject(concentradoCuestionarios.CUES_DESPLAZAMIENTO.tipoCues));
              cambiaSemaforo(params, campo, concentradoCuestionarios.CUES_DESPLAZAMIENTO.tabla, TBotonSemaforo.C_DES);
              waitEnd;
         end; // if
       end;//Módulo desplazamiento terminado
    except
      on e: Exception do
        managerException('[UHogarSeleccionado.AC_DESClick] ', e);
    end;
  finally
    AC_DES.Enabled:= T;
    {*if Assigned() then
      FreeAndNil();*}
    {refrescarGrid;
  end;
end;}

procedure TFHogarSeleccionado.AC_PRIClick(Sender: TObject);
var
  params: TStrHashMap;
  campo : string;
  transaccion: TTransaccion;
begin
  inherited;
  try
    try
      AC_PRI.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      params:= TStrHashMap.Create;
      if verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_PRI, DATOS_MUESTRA.ID_ESTATUS, datosGrid.FieldByName('c_pri').AsString) then
        if verificarMensaje(DATOS_MUESTRA.ID_ESTATUS, TBotonSemaforo.VACIO) then begin
          FEncuentraSeleccionado:= TFEncuentraSeleccionado.Create(Application);
          FEncuentraSeleccionado.Label1.Caption:= '¿Está disponible '+ ds.DataSet.FieldByName('informante').AsString+ ' para realizar la entrevista?';
          construirParamsVisita(params, concentradoCuestionarios.CUES_PRINCIPAL); // se inicializan parametros de visita
          params.put('especifique', 'SELECCIONADO, HOGAR '+ DATOS_MUESTRA.HOGAR);
          FEncuentraSeleccionado.ShowModal;
          if (FEncuentraSeleccionado.si.Checked) then begin
            waitStart('Lanzando cuestionario...');
            managerLogDebug('[ULevantamiento.AC_PRIClick] lanzando cuestionario de la vivienda');
            concentradoCuestionarios.CUES_PRINCIPAL.parametros:= DATOS_MUESTRA;
            TInterpreteEnvipe.getInstance.lanzaInterprete(TObject(concentradoCuestionarios.CUES_PRINCIPAL.tipoCues));
            cambiaSemaforo(params, campo, concentradoCuestionarios.CUES_PRINCIPAL.tabla, TBotonSemaforo.C_PRI);
          end // if
          else begin
            campo:='cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO)+ ',cod_neg_hog='+ comillas(Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
            params.put('cod_res_hog', RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO);
            params.put('cod_neg_hog', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
            if Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1) = '6'  then begin
               campo:= campo + ',PRINCIPAL_ESPECIFIQUE='+ comillas(FEncuentraSeleccionado.memo.Text);
               params.put('principal_especifique', FEncuentraSeleccionado.memo.Text);
               params.put('especifique', FEncuentraSeleccionado.memo.Text);
            end; // if
            params.put('campos', campo);
            params.put('id_estatus', DATOS_MUESTRA.ID_ESTATUS);
            params.put('id_muestra', ds.DataSet.FieldByName('id_muestra').AsString);
            params.put('id_envipe2023_muestra', ds.DataSet.FieldByName('id_envipe2023_muestra').AsString);
            params.put('id_movimiento', ds.DataSet.FieldByName('id_movimiento').AsString);
            params.put('vivienda', '0');
            params.put('complemento', '0');
            params.put('clave', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
            params.put('id_movil_causa_negativa',TDaoFactory.getInstance.toField('TcMovilCausasNegativas', 'byDescripcionViviendaHogar', params, 'id_movil_causa_negativa'));
            params.put('codigoVivienda', ds.DataSet.FieldByName('cod_res_viv').AsString);
            params.put('seguimientoHogar', ds.DataSet.FieldByName('hogar').AsString);
            transaccion:= TTransaccion.create;
            transaccion.execute(MODIFICAR, params);
          end; // else
        end;
    except
      on E: Exception do
        managerException('[TFLevantamientoHogar.AC_PRIClick] ', e);
    end; // exception
  finally
    AC_PRI.Enabled:= T;
    WaitEnd;
    FreeAndNil(params);
  end; // FINALLY
end;

procedure TFHogarSeleccionado.AC_VICClick(Sender: TObject);
begin
  try
    try
      AC_VIC.Enabled:= F;
      fillDatosMuestra(datosGrid,tabla.Row);
      if (verificarSemaforo(DATOS_MUESTRA.ID_MUESTRA, TBotonSemaforo.C_VIC, DATOS_MUESTRA.ID_ESTATUS)) and (datosGrid.FieldByName('c_vic'). AsString <> estatusSemaforos.NO_APLICA) then begin
        FSeleccionadoVictimizacion := TFSeleccionadoVictimizacion.Create(Application);
        FSeleccionadoVictimizacion.ShowModal;
      end; // if
    except
      on e: Exception do
        managerException('[UHogarSeleccionado.AC_VICClick] ', e);
    end;
  finally
    AC_VIC.Enabled:= T;
    if Assigned(FSeleccionadoVictimizacion) then
      FreeAndNil(FSeleccionadoVictimizacion);
    refrescarGrid;
  end;
end;

procedure TFHogarSeleccionado.btnDetalleClick(Sender: TObject);
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

procedure TFHogarSeleccionado.FormActivate(Sender: TObject);
begin
 {Para corregir el error del bloqueo de la BD cuando inicia el lanzado del
  cuestionario principal. Marzo 2021}
  if(not generales.INTERPRETE) then begin
    TUseButtons:= 'iktanModificar';
    inherited;
    formatForma;
    CIktanButton1.Visible:=F;
  end;
end;

procedure TFHogarSeleccionado.formatForma;
begin
	try
		Self.Color := clWhite;
		btnDetalle.Images                          := CImageListButtons40;
		btnDetalle.ImageIndex                      := 12;
		tabla.DefaultRowHeight                     := Botones.height + 1;
    Label1.Caption                             := CONTROL_ETIQUETA+ ':';
    upm.Enabled                                := F;
    vivSel.Enabled                             := F;
    hogar.Enabled                              := F;
    prog.Enabled                               := F;
    posicionaBotonesAccion(tabla,1,botones);
		formatButtonAccion(btnDetalle);
    GroupBox3.visible            := T;
    contenedorFiltro.visible     := T;
	except
		on e:exception do
			managerException('ULevantamientoHogar.formatForma',e);
	end; //try-except
end;

procedure TFHogarSeleccionado.cambiaSemaforo(params: TStrHashMap; campo, tabla: String; boton: TBotonSemaforo);
var
  transaccion : TTransaccion;
  cuestionario: TDatosCuestionario;
  campos      : string;
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
      if cuestionario.ESTATUS = 'I' then begin
        WaitEnd;    
		{Mostrar justificación solo en cuestionario principal, cuando se agregue el modulo de desplazamiento
        if not (TBotonSemaforo(boton) = TBotonSemaforo.C_DES) then begin}
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
          campo:='cod_res_hog='+ comillas(RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO)+ ',cod_neg_hog='+ comillas(Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1))+ ', ';
          params.put('cod_res_hog', RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO);
          params.put('cod_neg_hog', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
          if Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1) = '6'  then begin
            campo:= campo + 'PRINCIPAL_ESPECIFIQUE='+ comillas(FEncuentraSeleccionado.memo.Text)+ ', ';
            params.put('principal_especifique', FEncuentraSeleccionado.memo.Text);
             params.put('especifique', FEncuentraSeleccionado.memo.Text);
          end; // if
          params.put('vivienda', '0');
          params.put('clave', Copy(FEncuentraSeleccionado.estatus.Items[FEncuentraSeleccionado.estatus.ItemIndex], 0, 1));
          params.put('id_movil_causa_negativa',TDaoFactory.getInstance.toField('TcMovilCausasNegativas', 'byDescripcionViviendaHogar', params, 'id_movil_causa_negativa'));
        //end;		
      end;
      if validarCuestionario(cuestionario.ESTATUS, boton, params, campo) then
        transaccion.execute(GENERA, params);
      refrescarGrid;;
    except
    on e: exception do
      managerException('[TFLevantamientoHogar.cambiaSemaforo] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFHogarSeleccionado.construirParamsVisita(var params: TStrHashMap; cuestionario: TCuestionariosEnvipe);
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

procedure TFHogarSeleccionado.CIktanButton1Click(Sender: TObject); // Agregar
begin
  try
    try
      FCambio:=  TFCambio.Create(Application, 'tr_envipe2019_s3sociodem', 'tr_muestras_envipe2019', 'num_ren_sel', datosGrid.FieldByName('id_muestra').AsString);
      FCambio.ShowModal;
      refrescarGrid;
    except
      on e: Exception do
        managerException('[TFHogarSeleccionado.CIktanButton1Click] ', e);
    end; // try-except
  finally
    FreeAndNil(FCambio);
  end; // try-finally
end;
end.

