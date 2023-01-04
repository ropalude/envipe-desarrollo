{*------------------------------------------------------------------------------
  Componente del sistema para el Registro en al aplicación.

  @author INEGI
  @version 1.0.0.0
-------------------------------------------------------------------------------}
unit UNumeroHogares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvGlowButton, AdvPanel,
  ImgList, UContenedorMaestro, pngimage, Grids, DBGrids, DB, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid;

type
  TFNumeroHogares = class(TForm)
    imagenesBotones: TImageList;
    AdvPanel1: TAdvPanel;
		lineaContraste: TPanel;
    tituloMsj: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    btnAceptar: TAdvGlowButton;
    DataS: TDataSource;
    hogares: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNumeroHogares: TFNumeroHogares;

implementation

{$R *.dfm}

Uses
  ULibrerias,Xconstantes;

procedure TFNumeroHogares.btnAceptarClick(Sender: TObject);
begin
  modalResult:= mrOk;
end;

procedure TFNumeroHogares.FormCreate(Sender: TObject);
begin
  inherited;
  cambiarTamanioForma(self);
	lineacontraste.color:=COLORAPLICATIVO.contraste;
  formatButtonAccion(btnAceptar);
end;

end.
