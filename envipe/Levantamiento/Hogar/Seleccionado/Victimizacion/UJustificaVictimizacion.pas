unit UJustificaVictimizacion;

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
    memo: TMemo;
    CImageListButtons55: TImageList;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject); virtual;
    procedure btn1Click(Sender: TObject);

    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure memoKeyPress(Sender: TObject; var Key: Char);
    procedure memoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoAccion  : TAccion;
    tipoDelito  : Integer;
    idVictimiza : string;
    idJustificacion: string;
  end;

var
  FJustificacion: TFJustificacion;

implementation

uses
  ULibrerias, UStrHashMap, TVictimizacion,
  UDaoFactory, UGenerales, UDml, RLibrerias,
  UCadenas;

{$R *.dfm}


procedure TFJustificacion.btn2Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFJustificacion.btn1Click(Sender: TObject);
var
  params: TStrHashMap;
  transaccion: TTransaccionVic;
  texto     :  string;
  I         : Integer;
begin
  params      := TStrHashMap.Create;
  transaccion := TTransaccionVic.Create;
  if length(memo.Text) >= 20 then begin


    for I:= 0 to memo.Lines.Count- 1 do begin
      if  not isEmpty(memo.Lines[I]) then
        texto:=texto+allTrim(memo.Lines[I],'A')+' ';
    end; // for I


    idJustificacion := TDaoFactory.getInstance.getIdKey;
    params.put('id_envipe_vic_justifica', idJustificacion);
    params.put('justificacion',        texto);
    params.put('id_envipe_delito', IntToStr(tipoDelito));
    params.put('id_envipe_victimizacion', idVictimiza);
    params.put('registro', FormatDateTime(secuencias.SECUENCIA, now));
    params.put('num_emp', USUARIO.NUM_EMP);
    case tipoAccion of
      AGREGAR: params.put('id_movil_tipo_accion', '1');
      ELIMINAR:params.put('id_movil_tipo_accion', '2');
    end; // case
    transaccion.execute(BITACORA, params);
    ModalResult:= mrOk
  end;
  FreeAndNil(params);
  FreeAndNil(transaccion);
end;

procedure TFJustificacion.FormActivate(Sender: TObject);
begin
  case tipoAccion of
  AGREGAR:  Label1.Caption := 'Ingresa el motivo por el cual estas agregando';
  ELIMINAR: Label1.Caption := 'Ingresa el motivo por el cual estas eliminando';
  end;
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
  btn1.Enabled := F;
end;

procedure TFJustificacion.memoChange(Sender: TObject);
begin
  btn1.Enabled := Length(memo.Text) >= 20;
end;

procedure TFJustificacion.memoKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in setLetrasNumeros)) then
    key:= #0;
end;

end.
