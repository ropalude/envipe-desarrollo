unit UCambiaSemaforos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB;

type
  TFCambiaSemaforos = class(TForm)
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label11: TLabel;
    prog: TLabel;
    upm: TLabel;
    Label19: TLabel;
    viv_sel: TLabel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    ageb: TLabel;
    cve_loc: TLabel;
    cve_mun: TLabel;
    ent: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    hogar: TLabel;
    GroupBox3: TGroupBox;
    labelCuestionario: TLabel;
    comboCuestionario: TComboBox;
    labelVictima: TLabel;
    comboVictima: TComboBox;
    labelDelitos: TLabel;
    comboDelitos: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    datosGrid: TDataSet;
  end;

var
  FCambiaSemaforos: TFCambiaSemaforos;

implementation

uses
UStrHashMap, UISelect, ULibrerias, XConstantes, CUtileriasEnvipe;

{$R *.dfm}

procedure TFCambiaSemaforos.BitBtn1Click(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TFCambiaSemaforos.FormActivate(Sender: TObject);
begin
  try
    upm.Caption    := DATOS_MUESTRA.upm;;
    viv_sel.Caption:= DATOS_MUESTRA.VIV_SEL;
    prog.Caption   := DATOS_MUESTRA.PROG;
    hogar.Caption  := DATOS_MUESTRA.HOGAR;
    ent.Caption    := DATOS_MUESTRA.ENT;
    cve_mun.Caption:= DATOS_MUESTRA.MUN;
    cve_loc.Caption:= DATOS_MUESTRA.LOC;
    ageb.Caption   := DATOS_MUESTRA.AGEB_N;
  except
    on e: exception do
      managerException('[TFCambiaSemaforos.FormActivate] ', e);
  end;
end;

end.
