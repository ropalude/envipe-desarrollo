unit USeleccionEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel;

type
  TFSeleccionEmpleados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CCabecerax: TAdvPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    si: TIACheckControl;
    no: TIACheckControl;
    Panel5: TPanel;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccionEmpleados: TFSeleccionEmpleados;

implementation

uses
  ULibrerias, XConstantes, UStrHashMap,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFSeleccionEmpleados.btn2Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFSeleccionEmpleados.btn1Click(Sender: TObject);
begin
  if (si.Checked) or (no.Checked) then
    ModalResult:= mrOk
  else
    mensajeWarm(TDml.getInstance.getMensaje('seleccionEmpleados','selOpcion'));
end;

procedure TFSeleccionEmpleados.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btn1);
  formatButtonAccion(btn2);
end;

end.
