unit UCredenciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel, CurvyControls;

type
  TFCredenciales = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CCabecerax: TAdvPanel;
    Panel5: TPanel;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    cuenta: TCurvyEdit;
    password: TCurvyEdit;
    Label1: TLabel;
    Label2: TLabel;
    CImageListButtons55: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure passwordKeyPress(Sender: TObject; var Key: Char);
    procedure cuentaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCredenciales: TFCredenciales;

implementation

uses
  ULibrerias, XConstantes, UStrHashMap,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFCredenciales.btn2Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFCredenciales.cuentaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in setCaracteresCuenta) then
    key:= #0;
  if (Key= #13) then
    password.SetFocus;
end;

procedure TFCredenciales.btn1Click(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TFCredenciales.FormActivate(Sender: TObject);
begin
  cuenta.SetFocus;
end;

procedure TFCredenciales.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btn1);
  formatButtonAccion(btn2);
end;

procedure TFCredenciales.passwordKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in setCaracteresCuenta) then
    key:= #0;
  if (Key= #13) then
    btn1Click(btn1);
end;

end.
