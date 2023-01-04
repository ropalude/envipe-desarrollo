unit ULevantamientoDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UContenedorMaestro, StdCtrls, CurvyControls, DB, ExtCtrls;

type
  TFLevantamientoDetalle = class(TFContenedorMaestro)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    upm: TLabel;
    viv_sel: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ent_entidad: TLabel;
    cve_mun_municipio: TLabel;
    cve_loc_localidad: TLabel;
    ageb: TLabel;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    colonia: TLabel;
    no_ext: TLabel;
    no_int: TLabel;
    nombre: TLabel;
    instrucciones: TCurvyMemo;
    Label1: TLabel;
    labelHogar: TLabel;
    Label11: TLabel;
    vialidad: TLabel;
    Label19: TLabel;
    prog: TLabel;
    Label3: TLabel;
    mza: TLabel;
    labelProgresivo: TLabel;
    hogar: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure recuperarValores(forma: TForm; consulta: TDataSet);

  public
    { Public declarations }
  end;

var
  FLevantamientoDetalle: TFLevantamientoDetalle;

implementation

{$R *.dfm}

uses
  ULibrerias, CLevantamiento, UISelect, UDaoFactory, UStrHashMap, UCadenas,
  XConstantes;

procedure TFLevantamientoDetalle.FormCreate(Sender: TObject);
begin
  inherited;
	cambiarTamanioForma(Self);
  recuperarValores(self,datosGrid);
end;

procedure TFLevantamientoDetalle.FormDestroy(Sender: TObject);
begin
  inherited;
  restarTraza(Hint);
end;

{*------------------------------------------------------------------------------
  Procedimiento que obtiene los datos de la ubicación geográfica y domicilio de
  la vivienda seleccionada
  @param forma formulario en el que se mostrarán los datos de la ubicación
               geográfica y domicilio de la vivienda seleccionada
  @param consulta información de la base de datos a mostrar en el formulario
-------------------------------------------------------------------------------}
procedure TFLevantamientoDetalle.recuperarValores(forma: TForm; consulta: TDataSet);
var
  x             : integer;
  etiqueta      : TComponent;
  listaEditsText: TStringList;
  ds            : TDataset;
  params        : TStrHashMap;
begin
  try
    try
      listaEditsText:= TStringList.Create;
      for x:= 0 to consulta.fields.count- 1 do begin
        etiqueta:= forma.findComponent(consulta.fields[x].fieldName);
        if assigned(etiqueta) then
          if consulta.fields[x].fieldName= 'instrucciones' then
            TCurvyMemo(etiqueta).Lines.Add(consulta.fields[x].asString)
          else
            TLabel(etiqueta).Caption:=  Trim(consulta.fields[x].asString);
        listaEditsText.CommaText:= listaEditsText.CommaText+ (consulta.fields[x].fieldName)+ '='+ (consulta.fields[x].asString)+ ',';
      end; //for
      TLabel(findComponent('ent_entidad')).Caption      := listaEditsText.Values['ent']+ '-'+ listaEditsText.Values['entidad'];
      TLabel(findComponent('cve_mun_municipio')).Caption:= listaEditsText.Values['cve_mun']+ '-'+ listaEditsText.Values['municipio'];
      TLabel(findComponent('cve_loc_localidad')).Caption:= listaEditsText.Values['cve_loc']+ '-'+ listaEditsText.Values['localidad'];
      TLabel(findComponent('control_viv_sel')).Caption  := listaEditsText.Values['upm']+ '-'+ listaEditsText.Values['viv_sel'];
    except
      on e: exception do
        managerException('[ULevantamientoDetalle.recuperarValores]', e);
    end; // try-except
  finally
    FreeAndNil(listaEditsText);
    FreeAndNil(params);
    TUISelect.freeDataSet(ds);
  end; // try-finally
end;

procedure TFLevantamientoDetalle.FormActivate(Sender: TObject);
begin
  CTraza.Caption:= sumarTraza(hint);
  inherited;
end;

end.
