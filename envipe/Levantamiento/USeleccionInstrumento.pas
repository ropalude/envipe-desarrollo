unit USeleccionInstrumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel;

type
  TFSeleccionInstrumento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CCabecerax: TAdvPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    electronico: TIACheckControl;
    papel: TIACheckControl;
    Panel5: TPanel;
    btn1: TAdvGlowButton;
    fecha: TDateTimePicker;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure papelClick(Sender: TObject);
    procedure electronicoClick(Sender: TObject);
    procedure fechaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccionInstrumento: TFSeleccionInstrumento;

implementation

uses
  ULibrerias, XConstantes, UStrHashMap, Cingreso,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFSeleccionInstrumento.btn1Click(Sender: TObject);
begin
  if electronico.Checked or papel.Checked then
    ModalResult:= mrOk
  else
    mensajeError(TDml.getInstance.getMensaje('UGenerales','seleccioneUno'));
end;

procedure TFSeleccionInstrumento.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btn1);
  fecha.Visible := F;
  label2.Visible:= F;
  fecha.DateTime := now;
  electronicoClick(electronico);
end;

procedure TFSeleccionInstrumento.electronicoClick(Sender: TObject);
begin
  fecha.Visible:= F;
  label2.Visible:= F;
  fecha.CleanupInstance;
  Self.Height := 180;
end;

procedure TFSeleccionInstrumento.papelClick(Sender: TObject);
begin
  fecha.Visible:= T;
  label2.Visible:= T;
  Self.Height := 225;
end;

procedure TFSeleccionInstrumento.fechaChange(Sender: TObject);
var
  fechasRango : TFechasRango;
  params      : TStrHashMap;
  inicio      : integer;
  fin         : integer;
  actual      : integer;
begin
  params := TStrHashMap.Create;
  fechasRango:= obtieneRangoFechas;
  inicio  := StrToInt(fechasRango.fechaInicial);
  fin     := StrToInt(FormatDateTime(secuencias.FECHA_TABLAS, now));
  actual  := StrToInt(FormatDateTime(secuencias.FECHA_TABLAS, fecha.Date));
  if not((actual<=fin)and(actual>=inicio)) then begin
    params.put('inicio', Copy(fechasRango.fechaInicial, 7, 2)+'/'+Copy(fechasRango.fechaInicial, 5, 2)+'/'+Copy(fechasRango.fechaInicial, 1, 4));
    params.put('fin', FormatDateTime(secuencias.FECHA_STANDARD, now));
    mensajeError(TDml.getInstance.getMensaje('USeleccionInstrumento','fechasLimite',params),TDml.getInstance.getTituloMensaje('USeleccionInstrumento','fechasLimite'));
    fecha.DateTime := now;
  end;
  FreeAndNil(params);
end;

end.
