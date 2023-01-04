unit UVisitasEnvipe;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UVisitas, XConstantes, StdCtrls, ExtCtrls;
type
  TFVisitasEnvipe = class(TFVisitas)
    cotenedorControlVivienda: TPanel;
    labelUPM: TLabel;
    upm: TLabel;
    labelHogar: TLabel;
    prog: TLabel;
    labelVivSel: TLabel;
    vivSel: TLabel;
    labelProg: TLabel;
    hogar: TLabel;
  procedure FormActivate(Sender: TObject);
  procedure CIktanButton1Click(Sender: TObject); override;//agregar
  procedure formatForma; override;
  constructor Create(AOwner: TComponent; const pAgregar: boolean; const pVivienda: string; const pHogar: boolean);
  procedure consultarClick(Sender: TObject); override;
  private
    { Private declarations }
    agregar     : boolean;
    vivienda    : string;
    mostrarHogar: boolean;
  public
    { Public declarations }
  protected
    function ocultarAgregar:boolean; override;
    procedure refrescarGrid(); override;

  end;
var
  FVisitasEnvipe: TFVisitasEnvipe;
implementation
{$R *.dfm}
uses
  CUtileriasEnvipe, UStrHashMap, ULibrerias, UVisitasEnvipeAgregar,
  UCadenas, CLevantamiento, UDaoFactory, StrUtils, CVisitas, RVisitas, CEstatusEnvipe;

constructor TFVisitasEnvipe.Create(AOwner: TComponent; const pAgregar: boolean; const pVivienda: string; const pHogar: boolean);
begin
  inherited Create(AOwner);
  agregar           := pAgregar;
  vivienda          := pVivienda;
  mostrarHogar      := pHogar;
  labelHogar.Visible:= mostrarHogar;
  hogar.Visible     := mostrarHogar;
end;

procedure TFVisitasEnvipe.refrescarGrid();
var
  params :TStrHashMap;
begin
  try
    try
      params:= TStrHashMap.Create;
      params.put('id_muestra',DATOS_MUESTRA.ID_MUESTRA);
      params.put('hogar', DATOS_MUESTRA.HOGAR);
      params.put('complemento', vivienda);
      params.put('folio', DATOS_MUESTRA.FOLIO);
      params.put('id_estatus_eliminado', estatusEnvipe.ELIMINADO_REINICIO);
      if vivienda= '1' then
        inherited refrescarGrid(params,'VistaLevantamiento','visitasVivienda')
      else
        inherited refrescarGrid(params,'VistaLevantamiento','visitasHogar');
    except
      on e: exception do
        managerException('[UVisitasEnvipe.refrescarGrid] ', e);
    end; // try-except
  finally
    if Assigned(params) then
      freeandnil(params);
  end; //try-finally
end;

procedure TFVisitasEnvipe.consultarClick(Sender: TObject);
var
	i     : integer;
  codRes: string;
  codNeg: string;
  corte : integer;
begin
	try
    try
      codNeg                                     := '';
      corte                                      := 2;
      datosVisita.RecNo                          := tabla.Row;
      //FVisitasEnvipeAgregar                      := TFVisitasEnvipeAgregar.Create(Application, '0,1', '0,1', mostrarHogar);
      {Marzo 2020. Se corrigió la descripción de los códigos mandando de parámetro el valor de vivienda (1=vivienda, 0=hogar)}
      FVisitasEnvipeAgregar                      := TFVisitasEnvipeAgregar.Create(Application, vivienda, '0,1', mostrarHogar);
      FVisitasEnvipeAgregar.CurvyMemo1.Lines.Text:= datosVisita.FieldByName('situacion').AsWideString + datosVisita.FieldByName('situacion2').AsWideString + datosVisita.FieldByName('situacion3').AsWideString + datosVisita.FieldByName('situacion4').AsWideString;
      FVisitasEnvipeAgregar.formatForma;
      FVisitasEnvipeAgregar.cargarCombo;
      if mostrarHogar then
        corte:= 1;
      codRes:= Copy(datosVisita.FieldByName('codigo_respuesta').AsString, 1, corte);
      if Length(datosVisita.FieldByName('codigo_respuesta').AsString)> 2 then
        codNeg:= Copy(datosVisita.FieldByName('codigo_respuesta').AsString, corte+ 2, 1);
      for I := 0 to FVisitasEnvipeAgregar.ComboBox1.Items.Count - 1 do
        if Copy(FVisitasEnvipeAgregar.ComboBox1.Items[i], 1, corte)= codRes then
          break;
      FVisitasEnvipeAgregar.ComboBox1.ItemIndex   := i;
      FVisitasEnvipeAgregar.panelNegativas.Visible:= F;
      FVisitasEnvipeAgregar.Panel2.Visible        := F;
      FVisitasEnvipeAgregar.CurvyMemo1.Visible    := F;
      FVisitasEnvipeAgregar.comboNegativas.Enabled:= F;
      FVisitasEnvipeAgregar.Label4.Visible        := F;
      for I := 0 to FVisitasEnvipeAgregar.comboNegativas.Items.Count - 1 do
        if Copy(FVisitasEnvipeAgregar.comboNegativas.Items[i], 1, 1)= codNeg then begin
          FVisitasEnvipeAgregar.panelNegativas.Visible:= T;
          FVisitasEnvipeAgregar.Panel2.Visible        := (((vivienda= '1') and ((codNeg= '3') or (codNeg= '4'))) or ((vivienda= '0') and (codNeg= '6')));
          FVisitasEnvipeAgregar.Label4.Visible        := FVisitasEnvipeAgregar.Panel2.Visible;
          FVisitasEnvipeAgregar.CurvyMemo1.Visible    := FVisitasEnvipeAgregar.Label4.Visible;
          break;
        end; // if
      FVisitasEnvipeAgregar.comboNegativas.ItemIndex:= i;
      FVisitasEnvipeAgregar.vAccion:= vaCONSULTAR;
      FVisitasEnvipeAgregar.ShowModal;
    except
			on e: Exception do
				managerException('[UVisitasEnvipe.consultarClick]',e);
    end;
	finally
		if Assigned(FVisitasEnvipeAgregar) then
			freeandnil(FVisitasEnvipeAgregar);
	end;
end;

function TFVisitasEnvipe.ocultarAgregar:boolean;
var
	params: TStrHashMap;
  cVal:String;
begin
	try
		params:= TStrHashMap.Create;
		try
		 params.put('id_muestra',DATOS_MUESTRA.ID_MUESTRA);
     Result:= T;
		except
			on e: Exception do
				managerException('[UVisitasEnvipe.ocultarAgregar]',e);
    end;
	finally
		if Assigned(params) then
			FreeAndNil(params);
	end;//if
end;

procedure TFVisitasEnvipe.CIktanButton1Click(Sender: TObject);//agregar
begin
	try
    try
      FVisitasEnvipeAgregar:= TFVisitasEnvipeAgregar.Create(Application, '1', '0', mostrarHogar);
      FVisitasEnvipeAgregar.GroupBox3.Caption:= 'Vivienda';
      FVisitasEnvipeAgregar.ShowModal;
      refrescarGrid;
    except
      on e:exception do begin
        managerException('[UVisitas.CIktanButton1Click]',e);
      end;
    end;
  finally
		if Assigned(FVisitasEnvipeAgregar) then
			FreeAndNil(FVisitasEnvipeAgregar);
  end;//finally
end;

procedure TFVisitasEnvipe.FormActivate(Sender: TObject);
var
  params  : TStrHashMap;
begin
  try
    useButons := 'iktanAgregar';
    inherited;
    C_FOTO.Visible:= false;
    params:= TStrHashMap.Create;
    params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
    CIktanButton1.Visible:= agregar;
  finally
    FreeAndNil(params);
  end;
end;

procedure TFVisitasEnvipe.formatForma;
begin
  try
    Label1.Visible := F;
    control.Visible:= F;
    Label2.Visible := F;
    folio.Visible  := F;
    cotenedorControlVivienda.Parent:= GroupBox3;
    upm.Caption                    := DATOS_MUESTRA.UPM;
    vivSel.Caption                 := DATOS_MUESTRA.VIV_SEL;
    prog.Caption                   := DATOS_MUESTRA.PROG;
    hogar.Caption                  := DATOS_MUESTRA.HOGAR;
    if vivienda= '0' then begin
      tabla.Columns[1].Header:= 'Visita vivienda';
      tabla.Columns[1].Width := 150;
    end; // if
    tabla.Columns[5].width:= 100;
    tabla.Columns[6].width:= 750;
    inherited;
  except
    on e: exception do
      managerException('[UVisitasEnvipe.formatForma] ', e);
  end; // try-except
end;

end.
