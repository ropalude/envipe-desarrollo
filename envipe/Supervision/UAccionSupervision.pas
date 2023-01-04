unit UAccionSupervision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel, XConstantes;

type
  TFAccionSupervision = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CCabecerax: TAdvPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    panelPendiente: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    btnRetorno: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnLiberar: TAdvGlowButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    UPM: TLabel;
    PROG: TLabel;
    VIV_SEL: TLabel;
    CODIGO: TLabel;
    procedure FormCreate(Sender: TObject); virtual;
    procedure btnRetornoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAccionSupervision: TFAccionSupervision;

implementation

uses
  ULibrerias, UStrHashMap,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFAccionSupervision.btnCancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFAccionSupervision.btnLiberarClick(Sender: TObject);
begin
  ModalResult:= mrYes;
end;

procedure TFAccionSupervision.btnRetornoClick(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TFAccionSupervision.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btnRetorno);
  formatButtonAccion(btnCancelar);
  formatButtonAccion(btnLiberar);
end;

end.
