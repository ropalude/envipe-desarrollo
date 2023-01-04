unit UReporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, AdvGlowButton, UStrHashMap,
  IACheckControl, ImgList, Db, UContenedorMaestro;

type
  TFReporte = class(TFContenedorMaestro)
    PageControl1: TPageControl;
    A1: TTabSheet;
    B: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel14: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Panel3: TPanel;
    Panel12: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Panel13: TPanel;
    Label18: TLabel;
    Panel15: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Panel16: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Panel17: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Panel18: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Panel32: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Panel33: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    TabSheet5: TTabSheet;
    Panel37: TPanel;
    Panel39: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    Panel40: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    Panel41: TPanel;
    Label70: TLabel;
    Label71: TLabel;
    Panel42: TPanel;
    Label72: TLabel;
    Label73: TLabel;
    Panel24: TPanel;
    Panel27: TPanel;
    Label46: TLabel;
    Panel30: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Panel45: TPanel;
    Label55: TLabel;
    Label78: TLabel;
    Panel52: TPanel;
    Label91: TLabel;
    Label92: TLabel;
    Panel53: TPanel;
    Label93: TLabel;
    Label94: TLabel;
    Panel54: TPanel;
    Label95: TLabel;
    Label96: TLabel;
    Panel38: TPanel;
    oObservaciones: TLabel;
    observaciones: TMemo;
    ImageList1: TImageList;
    b162: TIACheckControl;
    b163: TIACheckControl;
    b161: TIACheckControl;
    b192: TIACheckControl;
    b193: TIACheckControl;
    b191: TIACheckControl;
    b52: TIACheckControl;
    b53: TIACheckControl;
    b51: TIACheckControl;
    b62: TIACheckControl;
    b63: TIACheckControl;
    b61: TIACheckControl;
    b72: TIACheckControl;
    b73: TIACheckControl;
    b71: TIACheckControl;
    b82: TIACheckControl;
    b83: TIACheckControl;
    b81: TIACheckControl;
    b152: TIACheckControl;
    b153: TIACheckControl;
    b151: TIACheckControl;
    c212: TIACheckControl;
    c213: TIACheckControl;
    c211: TIACheckControl;
    c172: TIACheckControl;
    c173: TIACheckControl;
    c171: TIACheckControl;
    c182: TIACheckControl;
    c183: TIACheckControl;
    c181: TIACheckControl;
    b262: TIACheckControl;
    b263: TIACheckControl;
    b261: TIACheckControl;
    c202: TIACheckControl;
    c203: TIACheckControl;
    c201: TIACheckControl;
    c222: TIACheckControl;
    c223: TIACheckControl;
    c221: TIACheckControl;
    a12: TIACheckControl;
    a11: TIACheckControl;
    a13: TIACheckControl;
    a22: TIACheckControl;
    a23: TIACheckControl;
    a21: TIACheckControl;
    a32: TIACheckControl;
    a33: TIACheckControl;
    a31: TIACheckControl;
    a42: TIACheckControl;
    a43: TIACheckControl;
    a41: TIACheckControl;
    a52: TIACheckControl;
    a53: TIACheckControl;
    a51: TIACheckControl;
    c192: TIACheckControl;
    c193: TIACheckControl;
    c191: TIACheckControl;
    b12: TComboBox;
    b171: TIACheckControl;
    b172: TIACheckControl;
    b15informante: TEdit;
    b173: TIACheckControl;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    b181: TIACheckControl;
    b182: TIACheckControl;
    b183: TIACheckControl;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    b202: TIACheckControl;
    b203: TIACheckControl;
    b201: TIACheckControl;
    Panel4: TPanel;
    Label6: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Panel7: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    b92: TIACheckControl;
    b91: TIACheckControl;
    b93: TIACheckControl;
    b10: TComboBox;
    b112: TIACheckControl;
    b111: TIACheckControl;
    b113: TIACheckControl;
    b142: TIACheckControl;
    b141: TIACheckControl;
    b143: TIACheckControl;
    d24informante: TEdit;
    b12especifique: TEdit;
    b13especifique: TEdit;
    b14especifique: TEdit;
    b15especifique: TEdit;
    b23especifique: TEdit;
    e43especifique: TEdit;
    A2: TTabSheet;
    Panel55: TPanel;
    Panel31: TPanel;
    Label63: TLabel;
    Label65: TLabel;
    a72: TIACheckControl;
    a73: TIACheckControl;
    a71: TIACheckControl;
    Panel43: TPanel;
    Label74: TLabel;
    Label75: TLabel;
    a82: TIACheckControl;
    a83: TIACheckControl;
    a81: TIACheckControl;
    Panel5: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    a62: TIACheckControl;
    a63: TIACheckControl;
    a61: TIACheckControl;
    Panel28: TPanel;
    Label54: TLabel;
    Panel36: TPanel;
    d2: TTabSheet;
    Panel68: TPanel;
    Panel64: TPanel;
    Label90: TLabel;
    Label97: TLabel;
    b212: TIACheckControl;
    b213: TIACheckControl;
    b211: TIACheckControl;
    Panel35: TPanel;
    Label41: TLabel;
    b17especifique: TEdit;
    Panel63: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    b222: TIACheckControl;
    b223: TIACheckControl;
    b221: TIACheckControl;
    Panel34: TPanel;
    Label40: TLabel;
    b18especifique: TEdit;
    Panel29: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    b232: TIACheckControl;
    b233: TIACheckControl;
    b231: TIACheckControl;
    Panel62: TPanel;
    Label79: TLabel;
    b13: TComboBox;
    Panel65: TPanel;
    Label80: TLabel;
    Label99: TLabel;
    b242: TIACheckControl;
    b243: TIACheckControl;
    b241: TIACheckControl;
    Panel25: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    b252: TIACheckControl;
    b253: TIACheckControl;
    b251: TIACheckControl;
    TabSheet1: TTabSheet;
    Panel69: TPanel;
    Panel70: TPanel;
    Label7: TLabel;
    Panel11: TPanel;
    Label45: TLabel;
    Label47: TLabel;
    c232: TIACheckControl;
    c233: TIACheckControl;
    c231: TIACheckControl;
    Panel47: TPanel;
    Label81: TLabel;
    //Label00: TLabel;
    //Labe103: TLabel;
    Label82: TLabel;
    c242: TIACheckControl;
    c243: TIACheckControl;
    c241: TIACheckControl;
    Panel49: TPanel;
    Label85: TLabel;
    Label86: TLabel;
    c262: TIACheckControl;
    c263: TIACheckControl;
    c261: TIACheckControl;
    Panel48: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    c272: TIACheckControl;
    c273: TIACheckControl;
    c271: TIACheckControl;
    Panel26: TPanel;
    Label48: TLabel;
    Label53: TLabel;
    c282: TIACheckControl;
    c283: TIACheckControl;
    c281: TIACheckControl;
    Panel71: TPanel;
    Label8: TLabel;
    Panel72: TPanel;
    Label98: TLabel;
    a7Fecha: TDateTimePicker;
    Panel73: TPanel;
    oPuestoSupervisor: TLabel;
    puestos: TComboBox;
    Panel74: TPanel;
    oNombreSupervisor: TLabel;
    nombre_sup: TEdit;
    pnl31: TPanel;
    codRes: TLabel;
    codResCaptura: TComboBox;
    Panel75: TPanel;
    oAmbito: TLabel;
    ambito: TComboBox;
    Label62: TLabel;
    Label64: TLabel;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CregresarClick(Sender: TObject); override;
    procedure CIktanButton1Click(Sender: TObject); override;
    procedure CIktanButton2Click(Sender: TObject); override;
    procedure CIktanButton3Click(Sender: TObject); override;
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure observacionesKeyPress(Sender: TObject; var Key: Char);
    procedure b15informanteKeyPress(Sender: TObject; var Key: Char);
    procedure d24informanteKeyPress(Sender: TObject; var Key: Char);
    procedure b12especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b13especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b14especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b15especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b17especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b18especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure b23especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure e43especifiqueKeyPress(Sender: TObject; var Key: Char);
    procedure a62ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b91ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b141ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b152ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b162ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b172ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b182ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b211ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b222ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b231ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure b262ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure c171ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
    procedure nombre_supKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    validar          : Boolean;
    erroresValidacion: String;
    c_cap            :String;
    procedure enableDisableNextPreview;
    function loadParams: TStrHashMap;
    function validafinalizado(params: TStrHashMap): Boolean;
    function evaluarRespuesta(campo:string; vista:string): string;
    function evaluaCombo(combo: TComboBox; vista: String): string;
    //function evaluaComboB12(combo: TComboBox; vista: String): string;
    procedure llenarRespuesta(campo, valor: string);
    procedure cargaDatos;
    procedure guardarReporte(finalizado: Boolean);
    procedure activaComponentes;
    Procedure llenarRespuestaFecha(calendario: TDateTimePicker; valor: string);
    procedure validarCampo(campo: String; valor: String; vista: String);
    function validarCampoIf(campo: String; valor: String; condicion: Boolean; vista: String): string;
    function evaluarFecha(campo: String; valor: String; condicion: Boolean; vista: String): string;
    procedure llenarRespuestaCombo(combo: TComboBox; valor: string);
    function evaluaCombo2(combo: TComboBox; vista: String): string;
  public
    { Public declarations }
  end;

var
  FReporte: TFReporte;
  horaInicio: TDateTime;
  datosReporte: TDataSet;
  fechaCuest  : string;
  fecha_registro: string;
  hora_ini: string;

implementation

{$R *.dfm}

uses
  ULibrerias, UPropiedades, UDaoFactory, UGenerales, UDml, UISelect, RLibrerias, TReporte, XConstantes, CUtileriasEnvipe, UCadenas, StrUtils,
  CEstatusEnvipe;



procedure TFReporte.FormActivate(Sender: TObject);
var
  anchoExtra : integer;
begin
  {hint          :='|Reporte';
  CTraza.Caption:= sumarTraza(hint);
  TUseButtons   := 'iktanAvanzar|iktanFinalizar|iktanProcesar';
  inherited;
  CIktanButton3.Caption := 'Parcial';
  CIktanButton1.Caption := 'Siguiente';
  Cregresar.Caption     := 'Anterior';
  enableDisableNextPreview;
  fechaCuest            := FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now);    }
  try
    hint          :='|Reporte';
    CTraza.Caption:= sumarTraza(hint);
    TUseButtons   := 'iktanAceptar';
    inherited;
    CIktanButton3.Caption   := 'Parcial';
    CIktanButton1.Caption   := 'Siguiente';
    CIktanButton1.ImageIndex:= 30;
    CIktanButton2.ImageIndex:= 0;
    CIktanButton3.ImageIndex:= 26;
    enableDisableNextPreview;
    CIktanButton2.Enabled   := T;
    CIktanButton3.Enabled   := T;
    fechaCuest            := FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now);
  except
    on e: exception do
      managerException('[UReporte.FormActivate] ', e);
  end; // try-except
end;

procedure TFReporte.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  cargaDatos;
  activaComponentes;
end;

procedure TFReporte.FormDestroy(Sender: TObject);
begin
  TUISelect.freeDataSet(datosReporte);
  restarTraza(hint);
end;


procedure TFreporte.cargaDatos;
var
  params: TStrHashMap;
begin
  observaciones.Clear;
  horaInicio  := Now;
  try
    params    := TStrHashMap.Create;
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    datosReporte := TDaoFactory.getInstance.findViewCriteria('TrResultadosSup', 'byMuestra', params);
    if datosReporte.RecordCount <> 0 then begin
      llenarRespuesta('a1', datosReporte.FieldByName('A1').AsString);
      llenarRespuesta('a2', datosReporte.FieldByName('A2').AsString);
      llenarRespuesta('a3', datosReporte.FieldByName('A3').AsString);
      llenarRespuesta('a4', datosReporte.FieldByName('A4').AsString);
      llenarRespuesta('a5', datosReporte.FieldByName('A5').AsString);
      llenarRespuesta('a6', datosReporte.FieldByName('A6').AsString);
      llenarRespuesta('a7', datosReporte.FieldByName('A7').AsString);
      llenarRespuesta('a8', datosReporte.FieldByName('A8').AsString);
      llenarRespuesta('b5', datosReporte.FieldByName('B5').AsString);
      llenarRespuesta('b6', datosReporte.FieldByName('B6').AsString);
      llenarRespuesta('b7', datosReporte.FieldByName('B7').AsString);
      llenarRespuesta('b8', datosReporte.FieldByName('B8').AsString);
      llenarRespuesta('b9', datosReporte.FieldByName('B9').AsString);
      llenarRespuesta('b11', datosReporte.FieldByName('B11').AsString);
      llenarRespuesta('b14', datosReporte.FieldByName('B14').AsString);
      llenarRespuesta('b15', datosReporte.FieldByName('B15').AsString);
      llenarRespuesta('b16', datosReporte.FieldByName('B16').AsString);
      llenarRespuesta('b17', datosReporte.FieldByName('B17').AsString);
      llenarRespuesta('b18', datosReporte.FieldByName('B18').AsString);
      llenarRespuesta('b19', datosReporte.FieldByName('B19').AsString);
      llenarRespuesta('b20', datosReporte.FieldByName('B20').AsString);
      llenarRespuesta('b21', datosReporte.FieldByName('B21').AsString);
      llenarRespuesta('b22', datosReporte.FieldByName('B22').AsString);
      llenarRespuesta('b23', datosReporte.FieldByName('B23').AsString);
      llenarRespuesta('b24', datosReporte.FieldByName('B24').AsString);
      llenarRespuesta('b25', datosReporte.FieldByName('B25').AsString);
      llenarRespuesta('b26', datosReporte.FieldByName('B26').AsString);
      llenarRespuesta('c17', datosReporte.FieldByName('C17').AsString);
      llenarRespuesta('c18', datosReporte.FieldByName('C18').AsString);
      llenarRespuesta('c19', datosReporte.FieldByName('C19').AsString);
      llenarRespuesta('c20', datosReporte.FieldByName('C20').AsString);
      llenarRespuesta('c21', datosReporte.FieldByName('C21').AsString);
      llenarRespuesta('c22', datosReporte.FieldByName('C22').AsString);
      llenarRespuesta('c23', datosReporte.FieldByName('C23').AsString);
      llenarRespuesta('c24', datosReporte.FieldByName('C24').AsString);
      //llenarRespuesta('c25', datosReporte.FieldByName('C25').AsString);
      llenarRespuesta('c26', datosReporte.FieldByName('C26').AsString);
      llenarRespuesta('c27', datosReporte.FieldByName('C27').AsString);
      llenarRespuesta('c28', datosReporte.FieldByName('C28').AsString);

      b10.ItemIndex := b10.Items.IndexOf(datosReporte.FieldByName('B10').AsString);
      b12.ItemIndex := b12.Items.IndexOf(datosReporte.FieldByName('B12').AsString);
      b13.ItemIndex := b13.Items.IndexOf(datosReporte.FieldByName('B13').AsString);

      llenarRespuestaFecha(a7Fecha,datosReporte.FieldByName('A7_FECHA').AsString);

      b15informante.Text := datosReporte.FieldByName('B15_INFORMANTE').AsString;
      d24informante.Text := datosReporte.FieldByName('D24_INFORMANTE').AsString;
      b12especifique.Text := datosReporte.FieldByName('B12_ESPECIFIQUE').AsString;
      b13especifique.Text := datosReporte.FieldByName('B13_ESPECIFIQUE').AsString;
      b14especifique.Text := datosReporte.FieldByName('B14_ESPECIFIQUE').AsString;
      b15especifique.Text := datosReporte.FieldByName('B15_ESPECIFIQUE').AsString;
      b17especifique.Text := datosReporte.FieldByName('B17_ESPECIFIQUE').AsString;
      b18especifique.Text := datosReporte.FieldByName('B18_ESPECIFIQUE').AsString;
      b23especifique.Text := datosReporte.FieldByName('B23_ESPECIFIQUE').AsString;
      e43especifique.Text := datosReporte.FieldByName('E43_ESPECIFIQUE').AsString;
      observaciones.Lines.Text := datosReporte.FieldByName('OBSERVACIONES').AsString;
      nombre_sup.Text:= datosReporte.FieldByName('NOMBRE_SUP').AsString;
      llenarRespuestaCombo(puestos, datosReporte.FieldByName('B23_PREGUNTA').AsString);
      llenarRespuestaCombo(codResCaptura, datosReporte.FieldByName('COD_RES_CAPTURA').AsString);
      llenarRespuestaCombo(ambito, datosReporte.FieldByName('ID_AMBITO').AsString);
       //Tiempo de regiistro
      fecha_registro:= datosReporte.FieldByName('REGISTRO').AsString;
      hora_ini :=  datosReporte.FieldByName('HORA_INICIO').AsString;
    end
    else begin
      fecha_registro:= '';
      hora_ini :=  '';
    end;
  finally
    //TUISelect.freeDataSet(datosGrid);
  end;
end;




procedure TFReporte.enableDisableNextPreview;
begin
  {CIktanButton3.Visible := F;
  Cregresar.Visible     := PageControl1.ActivePageIndex <> 0;
  CIktanButton1.Visible := PageControl1.ActivePageIndex <> (PageControl1.PageCount - 1);
  CIktanButton2.Visible :=  not(CIktanButton1.Visible);
  CIktanButton3.Visible := T;    }
  try
    CIktanButton3.Visible := F;
    if (PageControl1.ActivePageIndex = 0) then
      Cregresar.Caption   := 'Regresar'
    else
      Cregresar.Caption   := 'Anterior';
    CIktanButton1.Visible := PageControl1.ActivePageIndex <> (PageControl1.PageCount - 1);
    CIktanButton2.Visible :=  not(CIktanButton1.Visible);
    CIktanButton3.Visible := T;
  except
    on e: exception do
      managerException('[UReporte.enableDisableNextPreview] ', e);
  end; // try-except
end;

procedure TFReporte.llenarRespuesta(campo, valor: string);
begin
  try
    if valor<>'' then
      TIACheckControl(Self.FindComponent(campo + valor)).Checked := True;
  except
    on e: exception do
      managerException('[UReporte.llenarRespuesta] ', e);
  end; // try-except
end;

Procedure TFReporte.llenarRespuestaFecha(calendario: TDateTimePicker; valor: string);
begin
  try
    if valor<> '' then
       calendario.Date:=  StrToDate(valor);
  except
    on e: exception do
      managerException('[UReporte.llenarRespuestaFecha] ', e);
  end; // try-except
end;

procedure TFReporte.validarCampo(campo: String; valor: String; vista: String);
begin
  try
    if (((Trim(valor)='')or(valor='01/01/2018')) and validar) then begin
      (TLabel(self.FindComponent(vista))).Font.Color:= clRed;//ColorAplicativo.CONTRASTE;
       erroresValidacion:=erroresValidacion + RightStr(vista, Length(vista)-1)+', ';
    end  // if
    else
      (TLabel(self.FindComponent(vista))).Font.Color:= clBlack;
  except
    on e: exception do
      managerException('[UReporte.cambiaColorValidacion] ', e);
  end; // try-except
end;

procedure TFReporte.observacionesKeyPress(Sender: TObject; var Key: Char);
begin
  try
   if (Key= #13) or ((not (key in setLetrasNumerosArroba)) and (Key<> #08)) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.observacionesKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.guardarReporte(finalizado: Boolean);
var
  transaccion : TTransaccion;
  params      : TStrHashMap;
begin
  try
    try
      ID_GENERICO:= DATOS_MUESTRA.ID_MUESTRA;
      params     := loadParams;
      params.put('c_cap', c_cap);
      transaccion:= TTransaccion.create;
      transaccion.fecha       :=fechaCuest;
      transaccion.finalizado  :=finalizado;
      if datosReporte.RecordCount > 0 then
        transaccion.execute(MODIFICAR, loadParams)
      else
        transaccion.execute(AGREGAR, loadParams);
      mensajeInfo(TDml.getInstance.getMensaje('UReporte', 'CIktanButton1Click001'));
    except
      on e: exception do
        managerException('[UReporte.guardarReporte] ', e);
    end; // try-except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFReporte.activaComponentes();
begin
  try
    a7Fecha.Enabled        := a62.Checked;
    if not (a62.Checked) then begin
         a7Fecha.Date:= StrToDate('01/01/2018');
      end;
    b15informante.Enabled  := b91.Checked;
    Label10.Enabled  := b91.Checked;
    d24informante.Enabled  := b141.Checked;
    Label39.Enabled  := b141.Checked;
    b12especifique.Enabled := b152.Checked;
    Label61.Enabled  := b152.Checked;
    b13especifique.Enabled := b162.Checked;
    Label60.Enabled  := b162.Checked;
    b14especifique.Enabled := b172.Checked;
    Label59.Enabled  := b172.Checked;
    b15especifique.Enabled := b182.Checked;
    Label58.Enabled  := b182.Checked;
    b17especifique.Enabled := b211.Checked;
    Label41.Enabled  := b211.Checked;
    b18especifique.Enabled := b222.Checked;
    Label40.Enabled  := b222.Checked;
    b13.Enabled            := b231.Checked;
    Label79.Enabled  := b231.Checked;
    b23especifique.Enabled := b262.Checked;
    //Label62  := b262.Checked;
    e43especifique.Enabled := c171.Checked;
    Label64.Enabled  := c171.Checked;
  except
    on e: exception do
      managerException('[UReporte.activaComponentes] ', e);
  end; // try-except
end;

procedure TFReporte.llenarRespuestaCombo(combo: TComboBox; valor: string);
var posicion : Integer;
begin
try
  if combo.Name= 'puestos' then
  begin
    posicion := AnsiIndexStr(valor,['SR','SC','JD','ROE','SP','AI']);
    combo.ItemIndex := posicion;
  end // if
  else begin
    if valor<> '' then
      if valor= 'NA' then
        combo.ItemIndex := 0
      else
        combo.ItemIndex := StrToInt(valor);
    end; // else
   if combo.Name= 'ambito' then
   begin
      posicion := AnsiIndexStr(valor,['1','2','3']);
      combo.ItemIndex := posicion;
   end;
  except
    on e: exception do
      managerException('[UReporte.llenarRespuestaCombo] ', e);
  end; // try-except
end;

function TFReporte.evaluarRespuesta(campo:string; vista:string): string;
//SE AGREGÓ VALIDACION DE COLORACION DE COMPONENTES NO CONTESTADOS
begin
  try
    Result := '';
    if (TIACheckControl(self.FindComponent(campo + '1'))).Checked then
      Result := '1'
    else
      if TIACheckControl(self.FindComponent(campo + '2')).Checked then
        Result:= '2'
      else
        if TIACheckControl(self.FindComponent(campo + '3')).Checked then
          Result:= '3';
    if validar then
      validarCampo(campo, Result,vista);
  except
    on e: exception do
      managerException('[UReporte.evaluarRespuesta] ', e);
  end; // try-except
end;

function TFReporte.evaluaCombo(combo: TComboBox; vista: String): string;
begin
  try
    Result:= '';
    if combo.ItemIndex>= 0 then
    begin
      if combo.Name= 'b13' then
           Result := IntToStr(combo.ItemIndex +1)
      else
           Result := IntToStr(combo.ItemIndex);
     end;


    if combo.Name= 'puestos' then
    begin
      if combo.ItemIndex>= 0 then
       case combo.ItemIndex of
          0: Result := 'SR';
          1: Result := 'SC';
          2: Result := 'JD';
          3: Result := 'ROE';
          4: Result := 'SP';
          5: Result := 'AI';
       end; // CASE
      end; //if
    if combo.Name= 'ambito' then
    begin
      if combo.ItemIndex>= 0 then
       case combo.ItemIndex of
          0: Result := '1';
          1: Result := '2';
          2: Result := '3';
       end; // CASE
      end; //if
    if validar then
      validarCampo(LeftStr(combo.Name, Length(combo.Name)-1), Result,vista);
  except
    on e: exception do
      managerException('[UReporte.evaluaCombo] ', e);
  end; // try-except
end;
 {
function TFReporte.evaluaComboB12(combo: TComboBox; vista: String): string;
begin
  Result := '';
  if combo.ItemIndex >= 0 then
  begin
    if combo.ItemIndex = 31 then
      Result := '31'
    else
      Result := combo.Items[combo.ItemIndex];
  end;
end;
  }
function TFReporte.evaluaCombo2(combo: TComboBox; vista: String): string;
begin
  try
    Result:= '';
    {if combo.ItemIndex>= 0 then
      Result := IntToStr(combo.ItemIndex);

    if combo.Name= 'puestos' then
    begin
      if combo.ItemIndex>= 0 then
       case combo.ItemIndex of
          0: Result := 'SR';
          1: Result := 'SC';
          2: Result := 'JD';
          3: Result := 'ROE';
          4: Result := 'SP';
          5: Result := 'AI';
       end; // CASE
    end; //if
   } if combo.Name= 'codResCaptura' then
    begin
      if combo.ItemIndex>= 0 then
        case combo.ItemIndex of
          0: Result := '00';
          1: Result := '01';
          2: Result := '02';
          3: Result := '03';
          4: Result := '04';
          5: Result := '05';
          6: Result := '06';
          7: Result := '07';
          8: Result := '08';
          9: Result := '09';
          10: Result := '10';
          11: Result := '11';
          12: Result := '12';
          13: Result := '13';
        end; // CASE
    end; //if
    {if combo.Name= 'ambito' then
    begin
      if combo.ItemIndex>= 0 then
       case combo.ItemIndex of
          0: Result := '1';
          1: Result := '2';
          2: Result := '3';
       end; // CASE
      end; //if   }
    if validar then
      validarCampo(LeftStr(combo.Name, Length(combo.Name)-1), Result,vista);
  except
    on e: exception do
      managerException('[UReporte.evaluaCombo] ', e);
  end; // try-except
end;

function TFReporte.validarCampoIf(campo: String; valor: String; condicion: Boolean; vista: String): string;
begin
  try
    Result:= '';
    if condicion then begin
      validarCampo(campo, valor, vista);
       Result:= valor;
    end; // if
  except
    on e: exception do
      managerException('[UReporte.validarCampoIf] ', e);
  end; // try-except
end;

function TFReporte.loadParams: TStrHashMap;
var
  id_ambito, texto, cod_neg :  string;
  I: Integer;
  a7_Fecha: String;
begin
  Result  := TStrHashMap.Create;
  Result.put('id_muestra',              DATOS_MUESTRA.ID_MUESTRA);
 if fecha_registro = '' then Result.put('registro',  FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, Now))
 else Result.put('registro',             FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO,StrToDateTime(fecha_registro)));
  //Result.put('registro',                FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now));
  Result.put('num_emp',                 usuario.NUM_EMP);
  //Result.put('hora_inicio',             FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, horaInicio));
 if hora_ini='' then Result.put('hora_inicio',  FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO,horaInicio))
 else Result.put('hora_inicio',             FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO,StrToDateTime(hora_ini)));
  Result.put('hora_fin',                FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now));
  Result.put('fecha_captura',           fechaCuest);
  // Result.put('cod_res_captura',         rellenaConCerosI(IntToStr(codResCaptura.ItemIndex),2));
  cod_neg:= copy(DATOS_MUESTRA.COD_RES_VIV,0,2);
  Result.put('cod_res',                 cod_neg);
  Result.put('id_clave_operativa_e',    TDaoFactory.getInstance.toField('VistaReporteSup','DatosE', Result,'id_clave_operativa'));
  Result.put('nombre_en',               TDaoFactory.getInstance.toField('VistaReporteSup','DatosE', Result,'nombre'));
  Result.put('id_clave_operativa_je',   TDaoFactory.getInstance.toField('VistaReporteSup','DatosJE', Result,'id_clave_operativa'));
  Result.put('nombre_je',               TDaoFactory.getInstance.toField('VistaReporteSup','DatosJE', Result,'nombre'));
  Result.put('c_cap',                   estatusSemaforos.FINALIZADO);

  //*******************Sección A
  Result.put('a1',                      evaluarRespuesta('a1','Label19'));                                                    // Pregunta 1
  Result.put('a2',                      evaluarRespuesta('a2','Label21'));                                                    // Pregunta 2
  Result.put('a3',                      evaluarRespuesta('a3','Label16'));                                                    // Pregunta 3
  Result.put('a4',                      evaluarRespuesta('a4','Label25'));                                                    // Pregunta 4
  Result.put('a5',                      evaluarRespuesta('a5','Label23'));                                                    // Pregunta 5
  Result.put('a6',                      evaluarRespuesta('a6','Label14'));                                                    // Pregunta 6
  a7_Fecha:= evaluarFecha('a7_fecha',DateToStr(a7Fecha.Date),a62.Checked,'Label54');
    if a7_Fecha <> '' then
      Result.put('a7_fecha',         FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, StrToDateTime(a7_Fecha)));
  Result.put('a7',                      evaluarRespuesta('a7','Label63'));                                                    // Pregunta 7
  Result.put('a8',                      evaluarRespuesta('a8','Label74'));                                                    // Pregunta 8
  //*******************Sección B
  Result.put('b5',                      evaluarRespuesta('b5','Label30'));                                                    // Pregunta 9
  Result.put('b6',                      evaluarRespuesta('b6','Label32'));                                                    // Pregunta 10
  Result.put('b7',                      evaluarRespuesta('b7','Label11'));   //AGREGAR LABELS                                                 // Pregunta 11
  Result.put('b8',                      evaluarRespuesta('b8','Label36'));                                                    // Pregunta 12
  //******************Sección C
  Result.put('b9',                      evaluarRespuesta('b9','Label9'));                                                    // Pregunta 13
    //if b91.Checked then
    Result.put('b15_informante',      validarCampoIf('b15_informante',b15informante.Text,b91.Checked,'Label10'));                                                             // Pregunta Informante 13
  //Result.put('b12',                     evaluaComboB12(b12,'Label76'));                                                       // Pregunta 14
  //Result.put('b10',                     evaluaCombo(b10,'Label107'));
  Result.put('b12',                     evaluaCombo(b12,'Label76'));                                                       // Pregunta 14
  Result.put('b10',                     evaluaCombo(b10,'Label107'));                                                            // Pregunta 15
  Result.put('b11',                     evaluarRespuesta('b11','Label105'));                                                   // Pregunta 16
  Result.put('b14',                     evaluarRespuesta('b14','Label101'));                                                   // Pregunta 17
    //if b141.Checked then
      //Result.put('d24_informante',          d24informante.Text);
    Result.put('d24_informante',      validarCampoIf('d24_informante',d24informante.Text,b141.Checked,'Label39'));                                                               // Pregunta Informante 17
  //******************Sección D
  Result.put('b15',                     evaluarRespuesta('b15','Label56'));                                                   // Pregunta 18
  //if b152.Checked then Result.put('b12_especifique',         b12especifique.Text);
  Result.put('b12_especifique',      validarCampoIf('b12_especifique',b12especifique.Text,b152.Checked,'Label61'));                                    // Pregunta Especifique 18
  Result.put('b16',                     evaluarRespuesta('b16','Label55'));                                                   // Pregunta 19
  //if b162.Checked then Result.put('b13_especifique',         b13especifique.Text);
  Result.put('b13_especifique',      validarCampoIf('b13_especifique',b13especifique.Text,b162.Checked,'Label60'));                                   // Pregunta Especifique 19
  Result.put('b17',                     evaluarRespuesta('b17','Label27'));                                                   // Pregunta 20
  //if b172.Checked then Result.put('b14_especifique',         b14especifique.Text);
  Result.put('b14_especifique',      validarCampoIf('b14_especifique',b14especifique.Text,b172.Checked,'Label59'));                                   // Pregunta Especifique 20
  Result.put('b18',                     evaluarRespuesta('b18','Label1'));                                                   // Pregunta 21
  //if b182.Checked then Result.put('b15_especifique',         b15especifique.Text);
  Result.put('b15_especifique',      validarCampoIf('b15_especifique',b15especifique.Text,b182.Checked,'Label58'));                                   // Pregunta Especifique 21
  Result.put('b19',                     evaluarRespuesta('b19','Label51'));                                                   // Pregunta 22
  Result.put('b20',                     evaluarRespuesta('b20','Label3'));                                                   // Pregunta 23
  //******************Sección D
  Result.put('b21',                     evaluarRespuesta('b21','Label90'));                                                   // Pregunta 24
  //if b211.Checked then Result.put('b17_especifique',         b17especifique.Text);                                  // Pregunta Especifique 24
  Result.put('b17_especifique',      validarCampoIf('b17_especifique',b17especifique.Text,b211.Checked,'Label41'));                                   // Pregunta Especifique 21
  Result.put('b22',                     evaluarRespuesta('b22','Label87'));                                                   // Pregunta 25
  //if b222.Checked then Result.put('b18_especifique',         b18especifique.Text);                                  // Pregunta Especifique 25
  Result.put('b18_especifique',      validarCampoIf('b18_especifique',b18especifique.Text,b222.Checked,'Label40'));                                   // Pregunta Especifique 21
  Result.put('b23',                     evaluarRespuesta('b23','Label49'));                                                   // Pregunta 26
   if b231.Checked then Result.put('b13',evaluaCombo(b13,'Label79'));                                                          // Pregunta Especifique 26
  Result.put('b24',                     evaluarRespuesta('b24','Label80'));                                                   // Pregunta 27
  Result.put('b25',                     evaluarRespuesta('b25','Label42'));                                                   // Pregunta 28
  //******************Sección E
  Result.put('b26',                     evaluarRespuesta('b26','Label72'));                                                   // Pregunta 29
  //if b262.Checked then Result.put('b23_especifique',         b23especifique.Text);                                  // Pregunta Especifique 29
  Result.put('b23_especifique',      validarCampoIf('b23_especifique',b23especifique.Text,b262.Checked,'Label62'));                                   // Pregunta Especifique 21
  Result.put('c17',                     evaluarRespuesta('c17','Label70'));                                                   // Pregunta 30
  //if c171.Checked then Result.put('e43_especifique',         e43especifique.Text);                                  // Pregunta Especifique 30
  Result.put('e43_especifique',      validarCampoIf('e43_especifique',e43especifique.Text,c171.Checked,'Label64'));                                   // Pregunta Especifique 21
  Result.put('c18',                     evaluarRespuesta('c18','Label93'));                                                   // Pregunta 31
  Result.put('c19',                     evaluarRespuesta('c19','Label68'));                                                   // Pregunta 32
  Result.put('c20',                     evaluarRespuesta('c20','Label91'));                                                   // Pregunta 33
  Result.put('c21',                     evaluarRespuesta('c21','Label95'));                                                   // Pregunta 34
  Result.put('c22',                     evaluarRespuesta('c22','Label66'));                                                   // Pregunta 35
  //******************Sección E
  Result.put('c23',                     evaluarRespuesta('c23','Label45'));                                                   // Pregunta 36
  Result.put('c24',                     evaluarRespuesta('c24','Label81'));                                                   // Pregunta 37
  //Result.put('c25',                     evaluarRespuesta('c25','Label13'));                                                   // Pregunta 38
  Result.put('c26',                     evaluarRespuesta('c26','Label85'));                                                   // Pregunta 39
  Result.put('c27',                     evaluarRespuesta('c27','Label83'));                                                   // Pregunta 40
  Result.put('c28',                     evaluarRespuesta('c28','Label48'));                                                   // Pregunta 41
//  texto:= '   ';
//  if not (length(observaciones.Text)< 10) then begin
//    for I:= 0 to observaciones.Lines.Count- 1 do begin
//      if  not isEmpty(observaciones.Lines[I]) then
//        texto:=texto+allTrim(observaciones.Lines[I],'A')+' ';
//    end; // for I
//  end;
//Result.put('observaciones',       texto);
  Result.put('cod_res_captura',     evaluaCombo2(codResCaptura,'codRes'));
  Result.put('observaciones',       observaciones.Lines.Text);
  validarCampo('oObservaciones',    Trim(observaciones.Lines.Text),'oObservaciones');
  Result.put('nombre_sup',          nombre_sup.Text);
  validarCampo('oNombreSupervisor', nombre_sup.Text,'oNombreSupervisor');
  Result.put('b23_pregunta',        evaluaCombo(puestos,'oPuestoSupervisor'));
  Result.put('id_ambito',           evaluaCombo(ambito,'oAmbito'));


end;

function TFReporte.evaluarFecha(campo: String; valor: String; condicion: Boolean; vista: String): string;
begin
  try
    Result:= '';
    if condicion then begin
      validarCampo(campo, valor, vista);
       Result:= valor;
    end; // if
    if ((valor='') or (valor='01/01/2018')) then
    begin
        Result:= '';
    end; //if
  except
    on e: exception do
      managerException('[UReporte.validarCampoDate] ', e);
  end; // try-except
end;

function TFReporte.validafinalizado(params: TStrHashMap): Boolean;
var
  valores, pregunta: TStringList;
  campos: string;
  I: Integer;
  valor: string;
begin
  Result := F;
  campos  := '';
  valores := TStringList.Create;
  valores.Add('a1-01');
  valores.Add('a2-02');
  valores.Add('a3-03');
  valores.Add('a4-04');
  valores.Add('a5-05');
  valores.Add('a6-06');
  if a62.Checked then valores.Add('a7_fecha-06.Fecha');
  valores.Add('a7-07');
  valores.Add('a8-08');
  valores.Add('b5-09');
  valores.Add('b6-10');
  valores.Add('b7-11');
  valores.Add('b8-12');
  valores.Add('b9-13');
  if b91.Checked then valores.Add('b15_informante-13.Informante');
  valores.Add('b12-14');
  valores.Add('b10-15');
  valores.Add('b11-16');
  valores.Add('b14-17');
  if b141.Checked then valores.Add('d24_informante-17.Informante');
  valores.Add('b15-18');
  if b152.Checked then valores.Add('b12_especifique-18.Especifique');
  valores.Add('b16-19');
  if b162.Checked then valores.Add('b13_especifique-19.Especifique');
  valores.Add('b17-20');
  if b172.Checked then valores.Add('b14_especifique-20.Especifique');
  valores.Add('b18-21');
  if b182.Checked then valores.Add('b15_especifique-21.Especifique');
  valores.Add('b19-22');
  valores.Add('b20-23');
  valores.Add('b21-24');
  if b211.Checked then valores.Add('b17_especifique-24.Especifique');
  valores.Add('b22-25');
  if b222.Checked then valores.Add('b18_especifique-25.Especifique');
  valores.Add('b23-26');
  if b231.Checked then valores.Add('b13-26.Especifique');
  valores.Add('b24-27');
  valores.Add('b25-28');
  valores.Add('b26-29');
  if b262.Checked then valores.Add('b23_especifique-29.Especifique');

  valores.Add('c17-30');
  if c171.Checked then valores.Add('e43_especifique-30.Especifique');
  valores.Add('c18-31');
  valores.Add('c19-32');
  valores.Add('c20-33');
  valores.Add('c21-34');
  valores.Add('c22-35');
  valores.Add('c23-36');
  valores.Add('c24-37');
  //valores.Add('c25-38');
  valores.Add('c26-38');
  valores.Add('c27-39');
  valores.Add('c28-40');
  valores.Add('cod_res_captura-Codigo de resultado');
  valores.Add('observaciones- Observaciones');
  valores.Add('nombre_sup- Nombre Supervisor');
  valores.Add('b23_pregunta-Puesto Supervisor');
  valores.Add('id_ambito-Ambito');

  pregunta:= TStringList.Create;
  for I := 0 to valores.Count - 1 do   begin
     pregunta.Clear;
     pregunta.Delimiter:='-';
     pregunta.StrictDelimiter := True;
     pregunta.DelimitedText:=valores[I];
    if isEmpty(params.get(pregunta[0])) then begin
      if not isEmpty(campos) then
        campos:= campos + ', ';
      valor := pregunta[1];

      campos := campos + valor;
    end; // if isEmpty
    end;
  params.put('valores', campos);
  if not isEmpty(params.get('valores')) then
    mensajeError(TDml.getInstance.getMensaje('UReporte', 'CIktanButton1Click003', params), TDml.getInstance.getTituloMensaje('UReporte', 'CIktanButton1Click003'))
  else
    Result:= T;
end;



procedure TFReporte.CregresarClick(Sender: TObject); // Previo
begin
  {PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
  enableDisableNextPreview;        }
  try
    if (PageControl1.ActivePageIndex = 0) then begin
      if mensajeConfirmacion(TDml.getInstance.getMensaje('UReporte', 'CregresarClick001')) then
        inherited;
    end // if
    else begin
      PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
      enableDisableNextPreview;
    end;
  except
    on e: exception do
      managerException('[UReporte.CregresarClick] ', e);
  end; // try-except
end;

procedure TFReporte.CIktanButton1Click(Sender: TObject);  // Siguiente
begin
{
  PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
  enableDisableNextPreview;  }
  try
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
    enableDisableNextPreview;
    //CIktanButton1Click(Sender);
  except
    on e: exception do
      managerException('[UReporte.CIktanButton1Click] ', e);
  end; // try-except
end;

procedure TFReporte.CIktanButton2Click(Sender: TObject); // Finalizar
var
  params : TStrHashMap;
begin
  try
    validar          := T;
    params := TStrHashMap.Create;
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    if validafinalizado(loadParams) then
      if mensajeConfirmacion(TDml.getInstance.getMensaje('UReporte', 'CIktanButton1Click002'), TDml.getInstance.getTituloMensaje('UReporte', 'CIktanButton1Click002')) then begin
        c_cap:= estatusSemaforos.FINALIZADO;
        guardarReporte(T);
        if (TDaoFactory.getInstance.toField('TrResultadosSup', 'byMuestra', params, 'id_resultado_sup') <> 0) then
          ModalResult := mrOk
        else
          ModalResult := mrCancel;
      end;
  finally
    FreeAndNil(params);
  end;
end;

procedure TFReporte.CIktanButton3Click(Sender: TObject); // Parcial
begin
 validar          := F;
  c_cap           := estatusSemaforos.PARCIAL;
  guardarReporte(F);
  ModalResult := mrCancel;
end;

procedure TFReporte.nombre_supKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 try
    if (not (key in setLetrasNumerosArroba)) and (Key<> #08) then
      key:= #0;
  except
    on e: exception do
      managerException('[UReporte.nombre_supKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.e43especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.e43NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b12especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b12NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b13especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b13NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b141ChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
begin
  inherited;
      d24informante.Enabled:= b141.Checked;
      Label39.Enabled  := b141.Checked;
      if not(b141.Checked) then begin
        d24informante.Text:= '';
      end;
end;

procedure TFReporte.b14especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b14NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b152ChangeState(ASender: TPersistent;  ANewStateSelected: Boolean);
begin
  inherited;
      b12especifique.Enabled:= b152.Checked;
      Label61.Enabled  := b152.Checked;
      if not(b152.Checked) then  begin
        b12especifique.Text:= '';
      end;
end;

procedure TFReporte.b15especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b15NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b15informanteKeyPress(Sender: TObject; var Key: Char);
begin
  try
    //if not (key in setLetrasNumerosArroba) then
    if (not (key in setLetrasNumerosArroba)) and (Key<> #08) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b15NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b162ChangeState(ASender: TPersistent;  ANewStateSelected: Boolean);
begin
  inherited;
      b13especifique.Enabled:= b162.Checked;
      Label60.Enabled  := b162.Checked;
      if not(b162.Checked) then begin
        b13especifique.Text:= '';
      end;
end;

procedure TFReporte.b172ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      b14especifique.Enabled:= b172.Checked;
      Label59.Enabled  := b172.Checked;
      if not (b172.Checked) then begin
        b14especifique.Text:= '';
      end;
end;

procedure TFReporte.b17especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b17NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b182ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      b15especifique.Enabled:= b182.Checked;
      Label58.Enabled  := b182.Checked;
      if not (b182.Checked) then begin
        b15especifique.Text:= '';
      end;
end;

procedure TFReporte.b18especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b18NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b211ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      b17especifique.Enabled:= b211.Checked;
      Label41.Enabled  := b211.Checked;
      if not(b211.Checked) then  begin
        b17especifique.Text:= '';
      end;
end;

procedure TFReporte.b222ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      b18especifique.Enabled:= b222.Checked;
      Label40.Enabled  := b222.Checked;
      if not(b222.Checked) then begin
        b18especifique.Text:= '';
      end;
end;

procedure TFReporte.b231ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      b13.Enabled:= b231.Checked;
       Label79.Enabled  := b231.Checked;
      if not(b231.Checked) then begin
          //b13.ItemIndex:= -1;
      end;
end;

procedure TFReporte.b23especifiqueKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.b23NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.b262ChangeState(ASender: TPersistent;    ANewStateSelected: Boolean);
begin
  inherited;
      b23especifique.Enabled:= b262.Checked;
      Label62.Enabled  := b262.Checked;
      if not(b262.Checked) then begin
        b23especifique.Text:= '';
      end;
end;

procedure TFReporte.b91ChangeState(ASender: TPersistent;      ANewStateSelected: Boolean);
begin
  inherited;
    b15informante.Enabled:= b91.Checked;
    Label10.Enabled:= b91.Checked;
    if not(b91.Checked) then begin
      b15informante.Text:= '';
    end;
end;

procedure TFReporte.c171ChangeState(ASender: TPersistent;     ANewStateSelected: Boolean);
begin
  inherited;
      e43especifique.Enabled:= c171.Checked;
      Label64.Enabled  := c171.Checked;
      if not(c171.Checked) then begin
          e43especifique.Text:= '';
      end;
end;

procedure TFReporte.d24informanteKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if not (key in setLetrasNumerosArroba) then
      key:= #0;
  except
    on e: Exception do
      managerException('[UReporte.d24NombreKeyPress] ', e);
  end; // try-except
end;

procedure TFReporte.a62ChangeState(ASender: TPersistent;   ANewStateSelected: Boolean);
begin
  inherited;
      a7fecha.Enabled:= a62.Checked;
      if not (a62.Checked) then begin
         a7Fecha.Date:= StrToDate('01/01/2018');
      end;
end;

end.


