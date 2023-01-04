unit UExportarEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UExportar, ExtCtrls, DB, IACheckControl, StdCtrls, UDaoFactory, CurvyControls,
  UPrincipalEnvipe, DataSetXls;

type
  TFExportarEnvipe = class(TFExportar)
    PanelViviendas: TPanel;
    GroupBoxVivienda: TGroupBox;
    CurvyPanelVivienda: TCurvyPanel;
    ScrollBox2: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure viviendasCheckClick(Sender: TObject);
    procedure CIktanButton1Click(Sender: TObject); override; // buscar
  private
    procedure eliminaChecksViviendas;
  public
    procedure loadViviendas;
  end;

var
  FExportarEnvipe: TFExportarEnvipe;

implementation

uses
  ULibrerias, UStrHashMap, UISelect, UGenerales, UDml, XConstantes, RLibrerias,
  UArchivos;

{$R *.dfm}

procedure TFExportarEnvipe.FormCreate(Sender: TObject);
begin
  inherited;
  loadViviendas;
end;

procedure TFExportarEnvipe.FormDestroy(Sender: TObject);
begin
  inherited;
  eliminaChecksViviendas;
end;

procedure TFExportarEnvipe.eliminaChecksViviendas;
var
  i: integer;
begin
  try
    for i:= ScrollBox2.ComponentCount - 1 downto 0 do begin
      if (ScrollBox2.Components[i].tag >= 5000) then
        TCheckBox(ScrollBox2.Components[i]).Free;
    end; // for
  except
    on e: exception do
      managerException('[UExportarEnvipe.eliminaChecksViviendas]', e);
  end; // try-finally
end;

procedure TFExportarEnvipe.loadViviendas;
var
  top      : integer;
  datosGrid: TDataset;

  procedure create(text: string; muestra: String);
  var
    check: TIACheckControl;
    otro : TCheckbox;
  begin
    otro          := TCheckbox.create(ScrollBox2);
    otro.parent   := ScrollBox2;
    otro.caption  := text;
    otro.left     := 15;
    otro.top      := top;
    otro.Width    := 500;
    otro.Height   := 50;
    otro.Font.Size:= 14;
    otro.Font.Name:= 'Tahoma';
    otro.name     := 'muestra'+ muestra;
    otro.tag      := contador;
    otro.OnClick  := viviendasCheckClick;
    inc(contador);
    inc(top, 42);
  end;
begin
  try
    try
      if TDaoFactory.isAsignedTemporal then
        eliminaChecksViviendas;
      datosGrid:= conexion.findViewCriteria('VistaFiltradoGenerico', 'upmVivProg', TStrHashMap.create);
      datosGrid.First;
      top     := 15;
      contador:= 5000;
      create('Todas', 'todas');
      while not datosGrid.Eof do begin
        create(datosGrid.FieldByName('TITULO').AsString, datosGrid.FieldByName('LLAVE').AsString);
        datosGrid.Next;
      end; // while
    except
      on e: exception do begin
        managerException('[UExportarEnvipe.loadViviendas]', e);
      end; // on  e
    end; // try-finally
  finally
    TUISelect.freeDataSet(datosGrid);
  end; // finally
end;

procedure TFExportarEnvipe.viviendasCheckClick(Sender: TObject);
var
  x: integer;
begin
  try
    if TCheckBox(sender).tag= 5000 then begin // todas las viviendas
      for x:= 0 to scrollBox2.componentCount - 1 do
        if (scrollBox2.components[x].tag> 5000) then
          TCheckBox(scrollBox2.components[x]).checked:= TCheckBox(sender).checked;
    end; // if
    //showmessage(TCheckBox(sender).Name);
  except
    on e: exception do begin
      managerException('[UExportarEnvipe.viviendasCheckClick]', e);
    end; // on  e
  end; // try-finally
end;

procedure TFExportarEnvipe.CIktanButton1Click(Sender: TObject);
var
  totalTabla, totalVivienda : Integer;
  todasViviendas            : Boolean;
  count, x, contador        : integer;
  s, condicion, muestra, upm: String;
  datos                     : TDataset;
  params                    : TStrHashMap;

  function obtenerItem(): integer;
  const
    names: Array [0 .. 2] of String = ('excel', 'csv', 'text');
  var
    indice: integer;
  begin
    result := 1;
    for indice := 0 to length(names) - 1 do
      if (TIACheckControl(FindComponent(names[indice])).Checked) then
        result := TIACheckControl(FindComponent(names[indice])).tag;
  end;

begin
  try
{$I-}
    deshabilitarBotones(Self, F);
    if copy(ruta.caption, 1, 1) = '~' then begin
      mensajeError(TDml.getInstance.getMensaje('UExportar', 'cIktanButton1Click002'));
    end // if
    else begin
      params          := TStrHashMap.create;
      ProgressBar1.Min:= 0;
      totalTabla      := 0;
      totalVivienda   := 0;
      todasViviendas  := F;
      condicion       := '';
      upm             := '';
      // buscamos que haya seleccionado al menos una tabla
      for x:= 1 to ScrollBox1.ComponentCount- 1 do
        if (ScrollBox1.Components[x] is TCheckBox) then
          if (ScrollBox1.Components[x].tag <> 5000) and (TCheckBox(ScrollBox1.Components[x]).Checked) then
            inc(totalTabla);
      // buscamos que haya seleccionado al menos una vivienda y construimos el where condicion
      for x:= 0 to ScrollBox2.ComponentCount- 1 do begin
        if (ScrollBox2.Components[x] is TCheckBox) then begin
          if not todasViviendas then begin
            if (ScrollBox2.Components[x].tag = 5000) and (TCheckBox(ScrollBox2.Components[x]).Checked) then begin
              todasViviendas:= T;
              inc(totalVivienda);
              upm           := 'todas, ';
            end // if tag = 5000 (todas)
            else
              if (ScrollBox2.Components[x].tag <> 5000) and (TCheckBox(ScrollBox2.Components[x]).Checked) then begin
                inc(totalVivienda);
                muestra  := TCheckBox(ScrollBox2.Components[x]).Name;
                muestra  := copy(muestra, 8, Length(muestra));
                condicion:= condicion+ muestra+ ',';
                upm      := upm+ TCheckBox(ScrollBox2.Components[x]).Caption+ ', ';
              end; // if tag <> 5000
          end; // if todasViviendas
        end; // if is check
      end; // for x
      // se depura la condicion
      if todasViviendas then
        condicion:= '1=1'
      else begin
        condicion:= copy(condicion, 0, Length(condicion)- 1);
        condicion:= 'id_muestra in ('+ condicion+ ')';
      end; // else

      ProgressBar1.Max:= 100;
      if totalTabla > 0 then begin
        if totalVivienda> 0 then begin
          contenedorWheel.Visible:= T;
          activado               := T;
          RichEdit1.Clear;
          for contador:= 0 to contendorPrincipal.Width div 32 do begin
            contenedorWheel.Width:= contenedorWheel.Width + 16;
            panelLeftgral.Width  := panelLeftgral.Width - 16;
          end; // for Incrementar progresbar
          agregaLinea('Iniciando', RichEdit1);
          count:= 0;
          for x:= 0 to ScrollBox1.ComponentCount - 1 do
            if (ScrollBox1.Components[x] is TCheckBox) then
              if (ScrollBox1.Components[x].tag <> 5000) and (TCheckBox(ScrollBox1.Components[x]).Checked) then begin
                agregaLinea('Cargando la tabla ' + IntToStr(x), RichEdit1);
                s:= s + (TCheckBox(ScrollBox1.Components[x]).name) + ', ';
                try
                  params.put('tabla', TCheckBox(ScrollBox1.Components[x]).name);
                  agregaLinea('Cargando parametros de la tabla ' + IntToStr(x), RichEdit1);
                  params.put('campos', '*');
                  agregaLinea('Cargando campos', RichEdit1);
                  params.put('condicion', condicion);
                  datos:= conexion.findViewCriteria('DB', 'libre', params);
                  agregaLinea('Realizando consulta', RichEdit1);
                  try
                    if datos.RecordCount > 0 then begin
                      DataSetXls1.Tipo   := TTipo(obtenerItem);
                      DataSetXls1.dataSet:= datos;
                      DataSetXls1.archivo:= ruta.caption + USUARIO.CVE_OPERATIVA_EQUIPO + '_' + TDaoFactory.getInstance.getIdKey + '_' + lowerCase(TCheckBox(ScrollBox1.Components[x]).name);
                      mkDirIfNotExists(ruta.caption);
                      DataSetXls1.execute;
                      agregaLinea('Terminando de exportar tabla', RichEdit1);
                    end; // if
                    inc(count);
                    ProgressBar1.position:= trunc((count * 100) / totalTabla);
                    params.Clear;
{$I+}
                  except
                    on e: exception do
                      managerException('UExportarEnvipe.CIktanButton1Click', e);
                  end; // try-except
                finally
                  TUISelect.freeDataSet(datos);
                end; // try-finally
              end; // if
          if Length(upm)> 100 then
            upm:= copy(upm, 1, 97)+ '...'
          else
            upm:= copy(upm, 1, length(upm)- 2);
          if length(s) > 100 then
            s:= copy(s, 1, 97)+ '...'
          else
            s:= copy(s, 1, length(s)- 2);
          params.put('tablas', s+ ' vivienda(s): '+ upm);
          agregaLinea('Exportación lista', RichEdit1);
          Mensaje(TDml.getInstance.getMensaje('UExportar','cIktanButton1Click001', params), mtInformation, [mbOk],TDml.getInstance.getTituloMensaje('UExportar','cIktanButton1Click001', params));
          ProgressBar1.position:= 0;
        end // if totalVivienda> 0
        else
          mensajeInfo(TDml.getInstance.getMensaje('UExportarEnvipe','CIktanButton1Click001', params));
      end // if totalTabla> 0
      else
        mensajeInfo(TDml.getInstance.getMensaje('UExportar','cIktanButton1Click003', params));
    end; // else
    if activado then begin
      for contador:= 0 to contendorPrincipal.Width div 64 do begin
        panelLeftgral.Width  := panelLeftgral.Width + 32;
        contenedorWheel.Width:= contenedorWheel.Width - 32;
      end; // for
      contenedorWheel.Visible:= F;
      activado               := F;
    end; // if
{$I+}
  finally
    deshabilitarBotones(Self, T);
  end; // try-finally
end;

end.
