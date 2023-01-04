unit UVerificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons;

type
  TFVerificacion = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Aceptar: TAdvGlowButton;
    Cancelar: TAdvGlowButton;
    Liberar: TAdvGlowButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    UPM: TLabel;
    CODIGO: TLabel;
    VIV_SEL: TLabel;
    PROG: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure LiberarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVerificacion: TFVerificacion;

implementation

uses
  ULibrerias, XConstantes, UStrHashMap, TLevantamiento,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe, CEstatusEnvipe, UCadenas,
  ULevantamiento;

{$R *.dfm}


procedure TFVerificacion.AceptarClick(Sender: TObject);
begin
  try
    if mensajeConfirmacion(TDml.getInstance.getMensaje('UVerificacion', 'confirmarRetorno')) then
      ModalResult:= mrOk;
  except
    on e: exception do
      managerException('[TFVerificacion.AceptarClick] ', e);
  end; // try - except
end;

procedure TFVerificacion.CancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFVerificacion.FormCreate(Sender: TObject);
begin
  try
    Panel1.Color:= ColorAplicativo.CONTRASTE;
    Panel2.Color:= ColorAplicativo.CONTRASTE;
    Panel3.Color:= ColorAplicativo.CONTRASTE;
    Panel4.Color:= ColorAplicativo.CONTRASTE;
    formatButtonAccion(Aceptar);
    formatButtonAccion(Cancelar);
    formatButtonAccion(Liberar);
    UPM.Caption    := DATOS_MUESTRA.UPM;
    PROG.Caption   := DATOS_MUESTRA.PROG;
    VIV_SEL.Caption:= DATOS_MUESTRA.VIV_SEL;
    CODIGO.Caption := DATOS_MUESTRA.COD_RES_VIV;
  except
    on e: exception do
      managerException('[TFVerificacion.FormCreate] ', e);
  end; // try-except
end;

procedure TFVerificacion.LiberarClick(Sender: TObject);
begin
  try
    if mensajeConfirmacion(TDml.getInstance.getMensaje('UVerificacion', 'confirmarLiberacion')) then
      ModalResult:= mrYes;
  except
    on e: exception do
      managerException('[TFVerificacion.LiberarClick] ', e);
  end; // try-except
end;

end.
