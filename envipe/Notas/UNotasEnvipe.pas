unit UNotasEnvipe;

interface

uses
  SysUtils, UNotasX;

type
  TFNotasEnvipe = class(TFNotasX)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FNotasEnvipe: TFNotasEnvipe;

implementation

uses
  CNotasX, UStrHashMap, CUtileriasEnvipe, ULibrerias, CLevantamiento;
{$R *.dfm}

procedure TFNotasEnvipe.FormCreate(Sender: TObject);
var
  params: TStrHashMap;
begin
  try
    try
      params := TStrHashMap.Create;
      notasHerencia.MODULO          := 'VistaFiltradoGenerico';
      notasHerencia.ID_XML          := 'upmVivProg';
      notasHerencia.PARAMS          := params;
      notasHerencia.WORK_MODE       := modoTrabajo;
      if notasHerencia.WORK_MODE then
        notasHerencia.ID_SELECCIONADO := DATOS_MUESTRA.ID_MUESTRA;
      inherited;
      comboComplemento.Width    := 450;
      comboComplemento.Enabled  := not modoTrabajo;
    except
      on e: exception do
        managerException('[UNotasEnoe.FormCreate] ', e);
    end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
  end;
end;

end.
