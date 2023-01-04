unit UDesplazamientoSeleccionado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UEncuentraSeleccionado, XConstantes;

type
  TFDesplazamientoSeleccionado = class(TFEncuentraSeleccionado)
    procedure FormCreate(Sender: TObject); override;
    procedure estatusChange(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDesplazamientoSeleccionado: TFDesplazamientoSeleccionado;

implementation

{$R *.dfm}

procedure TFDesplazamientoSeleccionado.FormCreate(Sender: TObject);
begin
  inherited;
  estatus.Clear;
  estatus.Items.Add('II.1 - Concertada');
  estatus.Items.Add('II.2 - Ausencia');
  estatus.Items.Add('II.3 - Otro (especifique)');
  estatus.Items.Add('III - Negativa (especifique)');
end;

procedure TFDesplazamientoSeleccionado.estatusChange(Sender: TObject);
begin
  if (estatus.ItemIndex = 2) or (estatus.ItemIndex= 3) then begin
    memo.Visible          := T;
    panelPendiente.Height := 69+113;
    Self.Height           := 258+133;
  end
  else begin
    memo.Visible          := F;
    panelPendiente.Height := 69;
    Self.Height           := 258;
  end;
end;
end.
