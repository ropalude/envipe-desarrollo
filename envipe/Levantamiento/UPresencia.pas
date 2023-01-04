unit UPresencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ImgList, StdCtrls, ExtCtrls, IACheckControl,
  CurvyControls;

type
  TFPresencia = class(TForm)
    no: TIACheckControl;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    ImageList1: TImageList;
    si: TIACheckControl;
    CImageListButtons55: TImageList;
    Cancelar: TAdvGlowButton;
    Aceptar: TAdvGlowButton;
    Label2: TLabel;
    Label4: TLabel;
    CurvyEdit1: TCurvyEdit;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); virtual;
    procedure siChangeState(ASender: TPersistent; ANewStateSelected: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    campo, nombre : String;
  end;

var
  FPresencia: TFPresencia;

implementation
uses
  ULibrerias, XConstantes, UStrHashMap,TLevantamiento,
  UDaoFactory, UGenerales, UDml, UCadenas;

{$R *.dfm}

procedure TFPresencia.AceptarClick(Sender: TObject);
begin
  try
    if si.Checked then begin
      if CurvyEdit1.Text<> '' then
        ModalResult:= mrOk
      else
        mensajeError(TDml.getInstance.getMensaje('UPresencia', 'AceptarClick001'), TDml.getInstance.getTituloMensaje('UPresencia', 'AceptarClick001'));
    end // if
    else
      ModalResult:= mrOk;
  except
    on e: exception do
      managerException('[TFPresencia.AceptarClick] ', e);
    end; // try - except
end;

procedure TFPresencia.CancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFPresencia.FormCreate(Sender: TObject);
begin
  try
    Panel1.Color := ColorAplicativo.CONTRASTE;
    Panel2.Color := ColorAplicativo.CONTRASTE;
    Panel3.Color := ColorAplicativo.CONTRASTE;
    Panel4.Color := ColorAplicativo.CONTRASTE;
    formatButtonAccion(Aceptar);
    formatButtonAccion(Cancelar);
    no.Checked:= T;
  except
    on e: exception do
      managerException('[TFPresencia.FormCreate] ', e);
    end; // try - except
end;



procedure TFPresencia.siChangeState(ASender: TPersistent;
  ANewStateSelected: Boolean);
begin
  try
    if si.Checked then begin
      label4.Visible:= T;
      CurvyEdit1.Visible:= T;
    end
    else begin
      label4.Visible:= F;
      CurvyEdit1.Visible:= F;
    end;
  finally

  end;
end;

end.
