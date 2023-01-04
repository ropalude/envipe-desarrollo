unit UPrincipalEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPrincipal, UContenedorMaestro, UARchivos, RLibrerias, ULibrerias;

type
  TFPrincipalEnvipe = class(TFPrincipal)
    procedure FormCreate(Sender: TObject);
    procedure menu00022Execute(Sender: TObject); // Levantamiento
    procedure menu00004Execute(Sender: TObject); override; // Agenda
    procedure menu00023Execute(Sender: TObject); override; // Envios
    procedure menu50026Execute(Sender: TObject);
    procedure menu00033Execute(Sender: TObject);           // Seguimiento
    procedure FormActivate(Sender: TObject); // Supervision
    procedure menu00021Execute(Sender: TObject); // Exportar
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalEnvipe: TFPrincipalEnvipe;

implementation

uses
  ULevantamiento, XConstantes, UGeneralesEnvipe, UGenerales, UAgendaEnvipe,
  UEnviosFiltroEnvipe, USupervision, ActnList, UCierre, UCierreEnvipe, CPrincipal,
  USeguimiento, UExportarEnvipe;

{$R *.dfm}

procedure TFPrincipalEnvipe.FormActivate(Sender: TObject);
begin
  inherited;
  try
    if (USUARIO.ID_ROL = ROL_ISE) or (USUARIO.ID_ROL = ROL_ADMIN) then begin
      TAction(ActionList1.Actions[25]).Caption:= 'Supervisión';
      TAction(ActionList1.Actions[25]).ImageIndex := 36;
      TAction(ActionList1.Actions[32]).Caption:= 'Seguimiento';
      TAction(ActionList1.Actions[32]).ImageIndex := 25;
    end // ADMIN, ISE
    else
      if (USUARIO.ID_ROL = ROL_SR) or (USUARIO.ID_ROL = ROL_SC) or (USUARIO.ID_ROL = ROL_SOPORTE) then begin
        TAction(ActionList1.Actions[32]).Caption   := 'Seguimiento';
        TAction(ActionList1.Actions[32]).ImageIndex:= 25;
      end // SR, SC
      else
        if USUARIO.ID_ROL = ROL_SUPERVISOR then begin
          TAction(ActionList1.Actions[21]).Caption   := 'Supervisión';
          TAction(ActionList1.Actions[21]).ImageIndex:= 36;
          TAction(ActionList1.Actions[32]).Caption   := 'Seguimiento';
          TAction(ActionList1.Actions[32]).ImageIndex:= 25;
        end // SUPERVISOR, JEFE, AI
        else
          if USUARIO.ID_ROL = ROL_ENTREVISTADOR then begin
            // Levantamiento va normal
            TAction(ActionList1.Actions[21]).Caption   := 'Levantamiento';
            TAction(ActionList1.Actions[21]).ImageIndex:= 21;
          end; // Entrevistador
  except
    on e: exception do
      managerException('[UPrincipalEnvipe.FormActivate] ', e);
  end; // try-except
end;

procedure TFPrincipalEnvipe.FormCreate(Sender: TObject);
begin
  inherited;
  try
    color:=clWhite;
    ActionList1.Actions[25].OnExecute:= menu50026Execute;
    datosInstalacion.TYPE_INSTALL:= TENVIPE.Create('generico', computerIdName);
    cierre:= TCierreEnvipe.Create;
  except
    on e: exception do
      managerException('[UPrincipalEnvipe.FormCreate] ', e);
  end; // try-except
end;

procedure TFPrincipalEnvipe.menu00022Execute(Sender: TObject);
begin
  inherited;
  if not cierre.isCierre then
  try
    generales.DETENER_HILOS := T;
    FLevantamiento:= TFLevantamiento.Create(Application);
    FLevantamiento.showModal;
  finally
    freeAndNil(FLevantamiento);
    generales.DETENER_HILOS := F;
  end; // try-finally
end;

procedure TFPrincipalEnvipe.menu00021Execute(Sender: TObject);
begin
  try
    try
      managerLogInfo('[UPrincipalEnvipe.menu00021Execute] Se lanza FExportar MOVIL Envipe');
      FExportarEnvipe:= TFExportarEnvipe.Create(Application);
      FExportarEnvipe.showModal;
    except
      on e: exception do
        managerException('[UPrincipalEnvipe.menu00021Execute]', e);
    end; // try - except
  finally
    freeAndNil(FExportarEnvipe);
  end; // try-finally
end;

procedure TFPrincipalEnvipe.menu00004Execute(Sender: TObject); // Agenda
begin
  if not cierre.isCierre then
    inherited;
end;

procedure TFPrincipalEnvipe.menu00023Execute(Sender: TObject); // Envios
begin
  if not cierre.isCierre then
  try
    try
      FEnviosFiltroEnvipe:= TFEnviosFiltroEnvipe.Create(Application);
      FEnviosFiltroEnvipe.ShowModal;
    except
      on e: exception do
        managerException('[UPrincipalEnvipe.menu00023Execute]', e);
    end; // try - except
  finally
    FreeAndNil(FEnviosFiltroEnvipe);
  end; // try - finally
end;

procedure TFPrincipalEnvipe.menu50026Execute(Sender: TObject); // Supervision
begin
  if not cierre.isCierre then
  try
    try
      FSupervision := TFSupervision.Create(Application);
      FSupervision.ShowModal;
    except
      on e: exception do
        managerException('[UPrincipalEnvipe.menu50026Execute]', e);
    end; // try-except
  finally
    FreeAndNil(FSupervision);
  end; // try-finally
end;

procedure TFPrincipalEnvipe.menu00033Execute(Sender: TObject); // SEGUIMIENTO
begin
  inherited;
  if not cierre.isCierre then begin
    try
      try
        generales.DETENER_HILOS := T;
        FSeguimiento             := TFSeguimiento.Create(Application);
        //FLevantamientoSupervision.verificacion:= '1';
        FSeguimiento.ShowModal;
      except
        on e: exception do
          managerException('[UPrincipalEnvipe.menu00033Execute]', e);
      end; // try-except
    finally
      FreeAndNil(FSeguimiento);
      generales.DETENER_HILOS := F;
    end; // try-finally
  end; // if
end;

end.
