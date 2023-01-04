unit UJustificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel, XConstantes;

type
  TFJustificacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CCabecerax: TAdvPanel;
    Panel5: TPanel;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    panelPendiente: TPanel;
    memo: TMemo;
    CImageListButtons55: TImageList;
    procedure FormCreate(Sender: TObject); virtual;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FJustificacion: TFJustificacion;

implementation

uses
  ULibrerias, UStrHashMap,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFJustificacion.btn2Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFJustificacion.btn1Click(Sender: TObject);
begin
  if length(memo.Text) > 10 then
    ModalResult:= mrOk
  else
    mensajeError(TDml.getInstance.getMensaje('UJustificacion', 'btnAceptarClick001'));
end;

procedure TFJustificacion.FormActivate(Sender: TObject);
begin
  memo.SetFocus;
end;

procedure TFJustificacion.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btn1);
  formatButtonAccion(btn2);
  panelPendiente.Visible:= T;
end;

end.
