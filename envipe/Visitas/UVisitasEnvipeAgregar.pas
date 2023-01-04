unit UVisitasEnvipeAgregar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UVisitasAgregar, StdCtrls, ExtCtrls;

type
  TFVisitasEnvipeAgregar = class(TFVisitasAgregar)
    cotenedorControlVivienda: TPanel;
    labelUPM: TLabel;
    upm: TLabel;
    labelHogar: TLabel;
    prog: TLabel;
    labelVivSel: TLabel;
    vivSel: TLabel;
    labelProg: TLabel;
    hogar: TLabel;
    panelNegativas: TPanel;
    labelNegativas: TLabel;
    comboNegativas: TComboBox;
    panelMeses: TPanel;
    lblMeses: TLabel;
    comboMeses: TComboBox;// aceptar
    procedure CIktanButton1Click(Sender: TObject); override;// aceptar
    procedure FormCreate(Sender: TObject); override;
    constructor Create(AOwner: TComponent; const pVivienda, pTipo: string; pHogar: boolean);
    procedure ComboBox1OnChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure comboNegativasChange(Sender: TObject);
  private
    { Private declarations }
    vivienda    : string;
    tipo        : string;
    mostrarHogar: boolean;
  public
    { Public declarations }
    procedure formatForma; override;
    procedure cargarCombo(idXml:String='';codigos:String=''); override;
  end;

var
  FVisitasEnvipeAgregar: TFVisitasEnvipeAgregar;

implementation
uses
  CUtileriasEnvipe, UStrHashMap, UGenerales, UDml, XConstantes, CVisitas, UCadenas, ULibrerias,
	RVisitas, UUtileriasEnvipe, RUtileriasEnvipe, UISelect,CLevantamiento, TVisitasEnvipe,
  TVisitas, CEstatusEnvipe, StrUtils, UDaoFactory, UAgendaEnvipe;
{$R *.dfm}

procedure TFVisitasEnvipeAgregar.FormCreate(Sender: TObject);
begin
  try
    inherited;
    cargarCombo;
    if (vAccion<>vaCONSULTAR) then begin
      panelNegativas.Visible:= F;
      panelMeses.Visible    := F;
      Panel2.Visible        := F;
      CurvyMemo1.Visible    := F;
    end; // if
  except
    on e: exception do
  		managerException('[UVisitasAgregar.FormCreate] ', e);
  end; // try-except
end;

constructor TFVisitasEnvipeAgregar.Create(AOwner: TComponent; const pVivienda, pTipo: string; pHogar: boolean);
begin
  inherited Create(AOwner);
  vivienda          := pVivienda;
  tipo              := pTipo;
  mostrarHogar      := pHogar;
  labelHogar.Visible:= mostrarHogar;
  hogar.Visible     := mostrarHogar;
end;

procedure TFVisitasEnvipeAgregar.formatForma;
begin
  Label1.Visible := F;
  control.Visible:= F;
  Label2.Visible := F;
  folio.Visible  := F;
  cotenedorControlVivienda.Parent:= GroupBox3;
  panelNegativas.Parent          := CurvyPanel1;
  panelMeses.Parent              := CurvyPanel1;
  Label4.Caption                 := 'Especifique:';
  Panel2.Visible                 := T;
  upm.Caption                    := DATOS_MUESTRA.UPM;
  vivSel.Caption                 := DATOS_MUESTRA.VIV_SEL;
  prog.Caption                   := DATOS_MUESTRA.PROG;
  hogar.Caption                  := DATOS_MUESTRA.HOGAR;
  ComboBox1.Width                := 700;
  inherited;
end;

procedure TFVisitasEnvipeAgregar.FormActivate(Sender: TObject);
var
  parametros: TStrHashMap;
begin
  try
    inherited;
    parametros        := TStrHashMap.Create;
    ComboBox1.OnChange:= ComboBox1OnChange;
		try
      if (vAccion<>vaCONSULTAR) and (ComboBox1.ItemIndex= 0)  then begin
        panelNegativas.Visible:= F;
        Panel2.Visible        := F;
        CurvyMemo1.Visible    := F;
        Label4.Visible        := F;
      end;//if
		except
			on e: exception do
				managerException('[UVisitasAgregar.cargarCombo] ', e);
		end; // try-except
	finally
    if Assigned(parametros) then
      FreeAndNil(parametros);
  end;
end;

procedure TFVisitasEnvipeAgregar.ComboBox1OnChange(Sender: TObject);
var
  params: TStrHashMap;
  name  : TStringList;
begin
  try
    try
      params := TStrHashMap.Create;
      name   := TStringList.Create;
      name.Add('descripcion');
      panelMeses.Visible    := F;
      if (leftStr(ComboBox1.items[ComboBox1.itemIndex],2)= RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION) or
         (leftStr(ComboBox1.items[ComboBox1.itemIndex],2)= RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO) then begin
        comboNegativas.Items.Clear;
        panelNegativas.Visible:= T;
        Panel1.Height         := Panel1.Height+150;
        if vivienda= '1' then
          params.put('codigo',RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION)
        else
          params.put('codigo',RESULTADOS_ENTREVISTA.D_ENTREVISTA_INCOMPLETA_SIN_INFORMACION);
        params.put('idMovilResultadoEntre', TDaoFactory.getInstance().toField('TcMovilResultadosEntre','idByCodigo',params,'id_movil_resultado_entre'))  ;
        TUISelect.build(comboNegativas, 'TcMovilCausasNegativas', 'otraSituacion', params, name);
      end // if
      else if leftStr(ComboBox1.items[ComboBox1.itemIndex],2) = RESULTADOS_ENTREVISTA.O9_VIVIENDA_DESHABITADA then begin
          panelMeses.Visible:= T;
          TUISelect.build(TObject(comboMeses),'TcEnvipeMeses','row',params,name,'','', T);
          comboMeses.ItemIndex := -1;
          panelNegativas.Visible:= F;
      end // else if
      else begin
        Panel2.Visible        := F;
        panelNegativas.Visible:= F;
        panelMeses.Visible    := F;
        CurvyMemo1.Lines.Clear;
      end; //else
    except
			on e: exception do
				managerException('[TFVisitasAgregarEnvipe.ComboBox1OnChange] ', e);
		end; // try-except
  finally
    if Assigned(params) then
      FreeAndNil(params);
    if Assigned(name) then
      FreeAndNil(name);
  end;
end;

procedure TFVisitasEnvipeAgregar.comboNegativasChange(Sender: TObject);
begin
  try
    Panel2.Visible    := (leftStr(comboNegativas.items[comboNegativas.itemIndex],1)= '3') or (leftStr(comboNegativas.items[comboNegativas.itemIndex],1)= '4');
    CurvyMemo1.Visible:= Panel2.Visible;
    Label4.Visible    := Panel2.Visible;
    if CurvyMemo1.Visible then
      CurvyMemo1.Lines.Clear;
    CurvyMemo1.MaxLength:= 500;
  except
    on e: exception do
      managerException('[TFVisitasAgregarEnvipe.otraSituacionChange] ', e);
	end; // try-except
end;

procedure TFVisitasEnvipeAgregar.CIktanButton1Click(Sender: TObject); // aceptar
var
	params       : TStrHashMap;
	visitaEnvipe : TVisitaEnvipe;
  actualizarBD : boolean;
begin
	try
		try
      ID_GENERICO := DATOS_MUESTRA.ID_MUESTRA;
      actualizarBD:= T;
			params      := TStrHashMap.Create;
			params.put('id_muestra', DATOS_MUESTRA.ID_MUESTRA);
			params.put('id_movimiento', DATOS_MUESTRA.ID_MOVIMIENTO);
      params.put('hogar', DATOS_MUESTRA.HOGAR);
      params.put('id_envipe2023_muestra', DATOS_MUESTRA.ID_ENVIPE2023_MUESTRA);
      params.put('cod_res_viv', Copy(ComboBox1.Text, 0, 2));
      params.put('cod_res', Copy(ComboBox1.Text, 0, 2));
      params.put('complemento', vivienda);

      {Corrección para que limpie el código de negativa en la tabla de la muestra complementaria
       cuando seleccione un código 09. Marzo 2021}
      //params.put('cod_neg_viv', '');
      params.put('cod_neg_viv', 'null');
      params.put('id_estatus', DATOS_MUESTRA.ID_ESTATUS);
      managerLogDebug('[UVisitasEnvipeAgregar.CIktanButton1Click]: Obteniendo subcódigos de negativas');
      if panelNegativas.Visible then begin
        if ((vivienda= '1') and (Copy(ComboBox1.Text, 0, 2)= RESULTADOS_ENTREVISTA.I3_OTRA_SITUACION)) then
          params.put('cod_neg_viv', leftStr(comboNegativas.items[comboNegativas.itemIndex],1))
        else
          if (Copy(ComboBox1.Text, 0, 2)= RESULTADOS_ENTREVISTA.C_ENTREVISTA_PENDIENTE_DEL_SELECCIONADO) then
            params.put('cod_neg_hog', leftStr(comboNegativas.items[comboNegativas.itemIndex],1));
        params.put('clave', leftStr(comboNegativas.items[comboNegativas.itemIndex],1));
        params.put('vivienda', vivienda);
        params.put('id_movil_causa_negativa',TDaoFactory.getInstance.toField('TcMovilCausasNegativas', 'byDescripcionViviendaHogar', params, 'id_movil_causa_negativa'));
      end
      else if panelMeses.Visible then
          if comboMeses.ItemIndex >= 0 then begin
            params.put('cod_neg', 'null');
            params.put('descripcion', comboMeses.Items[comboMeses.ItemIndex]);
            params.put('id_envipe_mes', TDaoFactory.getInstance().toField('TcEnvipeMeses', 'idByDescripcion', params, 'id_envipe_mes'));
          end else begin
            mensajeError(TDml.getInstance.getMensaje('VisitasAgregar','periodoTiempo'),TDml.getInstance.getTituloMensaje('VisitasAgregar','periodoTiempo'));
            actualizarBD := F;
          end;

      if actualizarBD then begin
        managerLogDebug('[UVisitasEnvipeAgregar.CIktanButton1Click]: Muestra msg ¿quieres guardar la visita?. Parámetros para agregar visita - '+params.toString);
 		    cargarObjectoVisitas(visitaEnvipe);
        ModalResult := mrNone;
        procesarVista(params, TVisita(visitaEnvipe));
        if( ModalResult = mrok) then
          begin
              managerLogDebug('[UVisitasEnvipeAgregar.CIktanButton1Click]: Visita agregada');
              if  params.get('cod_res') = '05' then begin
                FAgendaEnvipe:= TFAgendaEnvipe.Create(application);
                FAgendaEnvipe.agregarForsozo := T;
                FAgendaEnvipe.ShowModal;
              end; // if
          end;
      end else
        managerLogDebug('[UVisitasEnvipeAgregar.CIktanButton1Click]: actualizarBD = F. No se agrega visita');

		except
			on e: exception do begin
        managerException('[UVisitasAgregar.CIktanButton1Click]', e);
      end;
		end; // try-except
	finally
	 if Assigned(visitaEnvipe) then
			FreeAndNil(visitaEnvipe);
	 if Assigned(params) then
			FreeAndNil(params);
   if Assigned(FAgendaEnvipe) then
			FreeAndNil(FAgendaEnvipe);
	end; // try-finally
end;

procedure TFVisitasEnvipeAgregar.cargarCombo(idXml:String='';codigos:String='');
var
	params: TStrHashMap;
begin
	try
		params := TStrHashMap.Create;
		try
			ComboBox1.Items.Clear;
			ComboBox1.TextHint:= 'Seleccione código de respuesta';
      params.put('vivienda', vivienda);
			params.put('tipo', tipo);
			TUISelect.build(ComboBox1, 'TcMovilResultadosEntre', 'resultadoViviendaHogar', params);
      comboNegativas.Items.Clear;
      comboNegativas.TextHint:= 'Seleccione código de negativa';
			TUISelect.build(comboNegativas, 'TcMovilCausasNegativas', 'resultadoViviendaHogar', params);
		except
			on e: exception do
				managerException('[UVisitasAgregar.cargarCombo] ', e);
		end; // try-except
	finally
		FreeAndNil(params);
	end; // try-finally
end;

end.
