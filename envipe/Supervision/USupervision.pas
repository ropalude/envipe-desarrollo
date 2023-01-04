unit USupervision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULevantamiento, AdvGlowButton, ExtCtrls, UStrHashMap;

type
  TFSupervision = class(TFLevantamiento)
    C_SUP: TPanel;
    AC_SUP: TAdvGlowButton;
    C_VSP: TPanel;
    AC_VSP: TAdvGlowButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AC_SUPClick(Sender: TObject);
    procedure C_VSPClick(Sender: TObject);
  private
    { Private declarations }
    procedure refrescarGrid(params: TStrHashMap = nil); override;
  public
    { Public declarations }
  end;

var
  FSupervision: TFSupervision;

implementation

{$R *.dfm}

uses
  ULibrerias, XConstantes, UISelect, CLevantamiento, UDaoFactory, RLibrerias, UVerificacionSP,
  UUtileriasTablas, CEstatusEnvipe, TSupervision, UUtileriasEnvipe, CUtileriasEnvipe, UReporte;



procedure TFSupervision.FormActivate(Sender: TObject);
begin
  try
    inherited;
      //fillControles;
      refrescarGrid();
      //formatForma;
      ajustaTabla;
  except
    on e: exception do
      managerException('[ULevantamientoSupervision.FormActivate] ', e);
  end; // try-except
end;

procedure TFSupervision.FormCreate(Sender: TObject);
begin
  btnMCC.Visible  := F;
  btnPdf.Visible  := T;
  btnPdf.Left     := detallesvivienda.Width;
  Botones.Width   := detallesvivienda.Width + btnPdf.Width;
  tabla.colWidths[1] := botones.Width;
  //Hint:= '|Supervisión';
  {*//inherited;
  colInicio := 10;
  colFin    := 13;
  cambiarTamanioForma(Self);*}
  inherited;
  restarTraza(hint);
  Hint:= '|Supervisión';
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

procedure TFSupervision.refrescarGrid(params: TStrHashMap = nil);
begin
	try
		try
			tabla.visible := F;
			construirParametros(params);
			TUISelect.freeDataSet(datosGrid);
			managerLogDebug('[ULevantamiento.refrescarGrid] cargando dataset : VistaLevantamiento, filtro,' + params.toString);
      params.put('nivel', USUARIO.NIVEL);
      params.put('entidad', Copy(USUARIO.CVE_OPERATIVA_USUARIO, 3, 2));
      datosGrid := TDaoFactory.getInstance.findViewCriteria('VistaLevantamiento', 'filtroSupervision', params);
			ds.dataSet := datosGrid;
			construirTotales(params);
      tabla.Columns.Items[5].Width:=365;
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

procedure TFSupervision.AC_SUPClick(Sender: TObject);
var
  params      : TStrHashMap;
  transaccion : TTransaccion;
begin
  try
    try
      AC_SUP.Enabled := F;
      datosGrid.RecNo:= tabla.row;
      fillDatosMuestra(datosGrid, tabla.Row);
      FReporte := TFREporte.Create(Application);
      transaccion := TTransaccion.create;
      params      := TStrHashMap.Create;
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      if not(datosGrid.FieldByName(semaforo.SUPERVISION).AsString = estatusSemaforos.FINALIZADO) then begin
          managerLogDebug('[ULevantamientoSupervision.AC_SUPClick] lanzando cuestionario de reporte de supervisión');
          if (FReporte.ShowModal = mrOk) then
            params.put('campos', semaforo.SUPERVISION + ' = ' + estatusSemaforos.FINALIZADO)
          else
            params.put('campos', semaforo.SUPERVISION + ' = ' + estatusSemaforos.PARCIAL);
          transaccion.execute(MODIFICAR, params);
      end; // if
    except
      on E: Exception do
        managerException('[ULevantamientoSupervision.AC_SUPClick] ', e);
    end;
  finally
    AC_SUP.Enabled := T;
    FreeAndNil(FReporte);
    FreeAndNil(params);
    FreeAndNil(transaccion);
    btnBusca.Click;
  end;
end;

procedure TFSupervision.C_VSPClick(Sender: TObject);
var
  params      : TStrHashMap;
  transaccion : TTransaccion;
  resultado  : Integer;
begin
  try
    try
      AC_VSP.Enabled:= F;
      datosGrid.RecNo:= tabla.row;
      fillDatosMuestra(datosGrid, tabla.Row);
      params          := TStrHashMap.create;
      transaccion     := TTransaccion.create;
      FVerificacionSP := TFVerificacionSP.Create(Application);
      if (not(datosGrid.FieldByName(semaforo.VERIFICACION_SP).AsString = estatusSemaforos.FINALIZADO) and  not(datosGrid.FieldByName(semaforo.VERIFICACION_SP).AsString = estatusSemaforos.NO_APLICA)) then begin
        resultado:= FVerificacionSP.showModal;
        case (resultado) of
          mrYes: begin
            params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
            params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
            params.put('campos', semaforo.VERIFICACION_SP + ' = ' + estatusSemaforos.FINALIZADO);
            transaccion.execute(MODIFICAR, params);
          end; // mrYes
        end; // case
      end;
    except
      on E: Exception do
        managerException('[ULevantamientoSupervision.AC_VSPClick] ', e);
    end;
  finally
    AC_VSP.Enabled:= T;
    FreeAndNil(FVerificacionSP);
    FreeAndNil(params);
    FreeAndNil(transaccion);
    btnBusca.Click;
  end;
end;

end.
