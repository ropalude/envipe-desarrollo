unit UEnviosFiltroEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UEnviosFiltro, UEnviosEnvipe;

type
  TFEnviosFiltroEnvipe = class(TFEnviosFiltro)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnviosFiltroEnvipe: TFEnviosFiltroEnvipe;

implementation

uses
  CEnvios, XConstantes;

{$R *.dfm}

procedure TFEnviosFiltroEnvipe.FormCreate(Sender: TObject);
begin
  ID_GENERICO:= '';
  envioComun:= TEnviosEnvipe.create;
end;

procedure TFEnviosFiltroEnvipe.FormDestroy(Sender: TObject);
begin
  FreeAndNil(envioComun);
end;

end.
