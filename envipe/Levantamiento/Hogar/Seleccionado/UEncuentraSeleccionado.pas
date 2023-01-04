unit UEncuentraSeleccionado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, IACheckControl, StdCtrls, ComCtrls, ExtCtrls, AdvGlowButton,
  Buttons, AdvPanel, XConstantes;

type
  TFEncuentraSeleccionado = class(TForm)
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
    panelPendiente: TPanel;
    Label2: TLabel;
    estatus: TComboBox;
    memo: TMemo;
    procedure FormCreate(Sender: TObject); virtual;
    procedure btn1Click(Sender: TObject);
    procedure respuesta(Sender: TObject);
    procedure estatusChange(Sender: TObject); virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEncuentraSeleccionado: TFEncuentraSeleccionado;

implementation

uses
  ULibrerias, UStrHashMap,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe;

{$R *.dfm}


procedure TFEncuentraSeleccionado.estatusChange(Sender: TObject);
begin
  if Copy(estatus.Items[estatus.ItemIndex], 0, 1) = '6'  then begin
    memo.Visible          := T;
    panelPendiente.Height := 69+113;
    if no.Visible then
      Self.Height           := 258+133
    else
      Self.Height           := 180+133;
  end
  else begin
    memo.Visible          := F;
    panelPendiente.Height := 69;
    if no.Visible then
      Self.Height           := 258
    else
      Self.Height           := 180;
  end;
end;

procedure TFEncuentraSeleccionado.btn1Click(Sender: TObject);
begin
  if (no.Checked) then
    if (estatus.ItemIndex <> -1) then  begin
      if  estatus.ItemIndex <> 5 then
        ModalResult:= mrOk
      else
        if length(memo.Text) > 10 then
          ModalResult:= mrOk
        else
          mensajeError('Debe dar una justificación de por lo menos 10 caracteres.');
    end
    else
      mensajeError('Debe seleccionar por lo menos una opción para poder continuar.')
  else
    ModalResult:= mrOk;
end;

procedure TFEncuentraSeleccionado.FormCreate(Sender: TObject);
begin
  Panel1.Color := ColorAplicativo.CONTRASTE;
  Panel2.Color := ColorAplicativo.CONTRASTE;
  Panel3.Color := ColorAplicativo.CONTRASTE;
  Panel4.Color := ColorAplicativo.CONTRASTE;
  formatButtonAccion(btn1);
  si.Checked            := T;
  panelPendiente.Visible:= F;
  memo.Visible          := F;
  respuesta(si);
end;

procedure TFEncuentraSeleccionado.respuesta(Sender: TObject);
begin
  memo.Visible:= F;
  if si.Checked then begin
    Self.Height := 189;
    panelPendiente.Visible := F;
  end
  else begin
    panelPendiente.Height   := 69;
    Self.Height             := Self.Height + panelPendiente.Height;
    panelPendiente.Visible  := T;
    estatus.ItemIndex       := 0;
  end;
end;

end.
