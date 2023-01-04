unit UAgendaEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UAgendaX;

type
  TFAgendaEnvipe = class(TFAgendaX)
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CIktanButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    agregarForsozo: Boolean;
  end;

var
  FAgendaEnvipe: TFAgendaEnvipe;

implementation

uses
  CAgenda, UStrHashMap, CUtileriasEnvipe, ULibrerias, CLevantamiento;

{$R *.dfm}

procedure TFAgendaEnvipe.FormCreate(Sender: TObject);
var
  params: TStrHashMap;
begin
  try
    try
      params := TStrHashMap.Create;
      agendaHerencia.MODULO          := 'VistaFiltradoGenerico';
      agendaHerencia.ID_XML          := 'upmVivProg';
      agendaHerencia.PARAMS          := params;
      agendaHerencia.WORK_MODE       := modoTrabajo;
      if agendaHerencia.WORK_MODE then
        agendaHerencia.ID_SELECCIONADO := DATOS_MUESTRA.ID_MUESTRA;
      inherited;
      comboComplemento.Width    := 450;
      comboComplemento.Enabled  := not modoTrabajo;
    except
      on e: exception do
        managerException('[UAgendaEnvipe.FormCreate] ', e);
    end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
  end;
end;

procedure TFAgendaEnvipe.FormActivate(Sender: TObject);
begin
  inherited;
  try
    Cregresar.Visible:= not agregarForsozo;
  except
    on e: Exception do
      managerException('[UAgendaEnvipe.FormActivate] ', e);
  end; //try-except
end;

procedure TFAgendaEnvipe.CIktanButton1Click(Sender: TObject);
begin
  try
    inherited;
    if (citaAgregada and agendaHerencia.WORK_MODE) then
      ModalResult:= MrOk;
  except
    on e: exception do
      managerException('[UAgendaEnvipe.CIktanButton1Click]', e);
  end;  // try-except
end;

end.






