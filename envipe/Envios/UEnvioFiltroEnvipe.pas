unit UEnvioFiltroEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UEnviosFiltro;

type
  TFEnvioFiltroEnvipe = class(TFEnviosFiltro)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnvioFiltroEnvipe: TFEnvioFiltroEnvipe;

implementation

{$R *.dfm}
uses
  UEnviosEnvipe, XConstantes, CEnvios;

procedure TFEnvioFiltroEnvipe.FormCreate(Sender: TObject);
begin
  ID_GENERICO:= '';
  envioComun:= TEnviosEnvipe.create;
end;

procedure TFEnvioFiltroEnvipe.FormDestroy(Sender: TObject);
begin
  FreeAndNil(envioComun);
end;

end.
