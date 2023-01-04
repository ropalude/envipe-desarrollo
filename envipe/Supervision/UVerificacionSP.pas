unit UVerificacionSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ImgList, StdCtrls, ExtCtrls, IACheckControl, Db, UStrHashMap,
  CurvyControls, ComCtrls;

type
  TFVerificacionSP = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    ImageList1: TImageList;
    CImageListButtons55: TImageList;
    Cancelar: TAdvGlowButton;
    Aceptar: TAdvGlowButton;
    grp1: TGroupBox;
    lblupm: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblprog: TLabel;
    lblviv_sel: TLabel;
    lbl4: TLabel;
    lblmza: TLabel;
    grp2: TGroupBox;
    lblSeleccionado: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lblResidentes: TLabel;
    lblPersonasHogar: TLabel;
    lbl12: TLabel;
    lblInformante: TLabel;
    grp3: TGroupBox;
    lblcve_oper: TLabel;
    pgcres: TPageControl;
    ts1: TTabSheet;
    lbl10: TLabel;
    p12: TIACheckControl;
    p11: TIACheckControl;
    lbl11: TLabel;
    ts2: TTabSheet;
    lbl13: TLabel;
    lbl14: TLabel;
    p22: TIACheckControl;
    p21: TIACheckControl;
    ts3: TTabSheet;
    lbl15: TLabel;
    lbl16: TLabel;
    p31: TIACheckControl;
    p32: TIACheckControl;
    ts4: TTabSheet;
    pO1: TIACheckControl;
    pO2: TIACheckControl;
    pO4: TIACheckControl;
    pO3: TIACheckControl;
    pO5: TIACheckControl;
    pO7: TIACheckControl;
    pO6: TIACheckControl;
    observaciones: TCurvyMemo;
    btnatras: TAdvGlowButton;
    btnradelante: TAdvGlowButton;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); virtual;
    procedure btnatrasClick(Sender: TObject);
    procedure btnradelanteClick(Sender: TObject);
    procedure pOpcionClick(Sender: TObject);
  private
    { Private declarations }
    function validaRespuestas: boolean;
    function loadParams: TStrHashMap;
    function evaluarRespuesta(campo:string): string;
    function evaluarOpciones(opcion:string): string;
    procedure enableDisableNextPreview;
    procedure cargaDatos;
  public
    { Public declarations }
  end;

var
  FVerificacionSP: TFVerificacionSP;
  horaInicio: TDateTime;
  datosVerificacionSP: TDataSet;
  fechaCuest,observacion  : string;


implementation
uses
  ULibrerias, XConstantes, TVerificacionSP,
  UDaoFactory, UGenerales, UDml, CUtileriasEnvipe, UCadenas;

{$R *.dfm}

procedure TFVerificacionSP.AceptarClick(Sender: TObject);
var
  transaccion : TTransaccion;
begin
try
    try
      if validaRespuestas then begin
        transaccion:= TTransaccion.create;
        transaccion.execute(MODIFICAR, loadParams);
        ModalResult:= mrYes;
      end
      else
        mensajeError(TDml.getInstance.getMensaje('UVerificacionSP','AceptarClick001'));
    except
      on e: exception do
        managerException('[TFVerificacionSP.AceptarClick] ', e);
    end; // try - except
  finally
    FreeAndNil(transaccion);
  end; // try-finally
end;

procedure TFVerificacionSP.CancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFVerificacionSP.btnradelanteClick(Sender: TObject);
begin
  pgcres.ActivePageIndex := pgcres.ActivePageIndex + 1;
  enableDisableNextPreview;
end;

procedure TFVerificacionSP.btnatrasClick(Sender: TObject);
begin
  pgcres.ActivePageIndex := pgcres.ActivePageIndex - 1;
  enableDisableNextPreview;
end;

procedure TFVerificacionSP.enableDisableNextPreview;
begin
  btnatras.Visible      := pgcres.ActivePageIndex <> 0;
  btnradelante.Visible  := pgcres.ActivePageIndex < (pgcres.PageCount - 1);
  Aceptar.Visible       := pgcres.ActivePageIndex = (pgcres.PageCount - 1);
end;

procedure TFVerificacionSP.FormCreate(Sender: TObject);
begin
  try
    pgcres.ActivePageIndex := 0;
    Panel1.Color := ColorAplicativo.CONTRASTE;
    Panel2.Color := ColorAplicativo.CONTRASTE;
    Panel3.Color := ColorAplicativo.CONTRASTE;
    Panel4.Color := ColorAplicativo.CONTRASTE;
    formatButtonAccion(Aceptar);
    formatButtonAccion(Cancelar);
    formatButtonAccion(btnatras);
    formatButtonAccion(btnradelante);
    fechaCuest   := FormatDateTime(secuencias.SECUENCIA_CUESTIONARIO, now);
    cargaDatos
  except
    on e: exception do
      managerException('[TFVerificacionSP.FormCreate] ', e);
  end; // try - except
end;

procedure TFVerificacionSP.pOpcionClick(Sender: TObject);
begin
 try
  if pO6.Checked or  pO7.Checked then
    observaciones.Enabled := T
  else begin
    observaciones.Enabled := F;
    observaciones.Lines.Clear;
  end;
 except
    on e: exception do
      managerException('TFVerificacionSP.pOpcionClick', e);
  end; // try-except
end;


function TFVerificacionSP.validaRespuestas: boolean;
var
  I: Integer;
begin
  try
    result := F;
    if (((p11.Checked)or (p12.Checked))
        and ((p21.Checked)or (p22.Checked))
        and ((p31.Checked)or (p32.Checked))
        and ((pO1.Checked)or(pO2.Checked) or(pO3.Checked)or(pO4.Checked) or(pO5.Checked)or (pO6.Checked) or(pO7.Checked))) then
        result:= T;
    if Result and ((pO6.Checked) or(pO7.Checked)) then begin
      for I:= 0 to observaciones.Lines.Count- 1 do begin
          if  not isEmpty(observaciones.Lines[I]) then
            observacion:=observacion+allTrim(observaciones.Lines[I],'A')+' ';
      end; // for I
      if (length(observacion)< 10) then begin
        Result := F;
        observaciones.Lines[0] := observacion;
        observacion := '';
      end;
    end;
    {if  not(result) then begin
      Mensaje(TDml.getInstance.getMensaje('UVerificacionSP', 'AceptarClick001'), mtInformation, [mbOk],
              TDml.getInstance.getTituloMensaje('UVerificacionSP', 'AceptarClick001'));
    end; // if error (mensaje)   }
  except
    on e: exception do
      managerException('UObservacionDirecta.validaResultadoEntrevista', e);
  end; // try-except
end;

procedure TFVerificacionSP.cargaDatos;
var
  params: TStrHashMap;
begin
  observaciones.Lines.Clear;
  horaInicio  := Now;
  try
    try
      params    := TStrHashMap.Create;
      params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
      datosVerificacionSP := TDaoFactory.getInstance.findViewCriteria('VistaVerificacion', 'obtenerDatos', params);
      lblupm.Caption    := DATOS_MUESTRA.upm;;
      lblviv_sel.Caption:= DATOS_MUESTRA.VIV_SEL;
      lblprog.Caption   := DATOS_MUESTRA.PROG;
      if datosVerificacionSP.RecordCount <> 0 then begin
        lblcve_oper.Caption := datosVerificacionSP.FieldByName('clave').AsString;
        lblmza.Caption := datosVerificacionSP.FieldByName('mza').AsString;
        lblPersonasHogar.Caption := datosVerificacionSP.FieldByName('personas_hogar').AsString;
        lblResidentes.Caption := datosVerificacionSP.FieldByName('residentes_hogar').AsString;
        lblSeleccionado.Caption := datosVerificacionSP.FieldByName('seleccionado').AsString;
        lblInformante.Caption := datosVerificacionSP.FieldByName('informante').AsString;
      end;
    except
      on e: exception do
        managerException('TFVerificacionSP.cargaDatos', e);
    end; // try-except
  finally
    FreeAndNil(params);
  end; // try-finally
end;

function TFVerificacionSP.loadParams: TStrHashMap;
var
  texto :  string;
  I: Integer;
begin
//  {
  Result  := TStrHashMap.Create;
  Result.put('confirmacion_recidentes',evaluarRespuesta('p1'));
  Result.put('confirmacion_personas', evaluarRespuesta('p2'));
  Result.put('confirmacion_informantes',evaluarRespuesta('p3'));
  Result.put('confirmacion_coincide', evaluarOpciones('pO1'));
  Result.put('confirmacion_informante',evaluarOpciones('pO2'));
  Result.put('re_entrevista_omision',evaluarOpciones('pO3'));
  Result.put('re_entrevista_ficticia',evaluarOpciones('pO4'));
  Result.put('re_entrevista_ubicacion',evaluarOpciones('pO5'));
  Result.put('nula_no_verificada',evaluarOpciones('pO6'));
  Result.put('nula_otro',evaluarOpciones('pO7'));
  Result.put('observacion',observacion);
  Result.put('id_muestra',DATOS_MUESTRA.ID_MUESTRA);
//  }
end;


function TFVerificacionSP.evaluarRespuesta(campo:string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I].ClassType = TIACheckControl then
      if  (Self.Components[I].Name = (campo+'1')) then begin
        if TIACheckControl(Self.Components[I]).Checked then
          Result := '1';
      end
      else
        if  (Self.Components[I].Name = (campo+'2')) then begin
          if TIACheckControl(Self.Components[I]).Checked then
            Result := '0';
        end;
end;

function TFVerificacionSP.evaluarOpciones(opcion:string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I].ClassType = TIACheckControl then
      if  (Self.Components[I].Name = (opcion)) then begin
        if TIACheckControl(Self.Components[I]).Checked then
          Result := '1'
        else
          Result := '0'
        end;
end;

end.
