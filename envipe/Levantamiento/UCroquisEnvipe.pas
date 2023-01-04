unit UCroquisEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IACheckControl, StdCtrls, CurvyControls, OleCtrls,
  AcroPDFLib_TLB, ImgList, UCroquis, DB, UContenedorMaestro;

type
  TFCroquisEnvipe = class(TFCroquis)
    function getInformacion(datos: TDataSet): string; override;
    procedure CNotasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCroquisEnvipe: TFCroquisEnvipe;

implementation
uses
  ULibrerias, XConstantes, UCadenas, UISelect,  UStrHashMap, UDaoFactory,
  UGenerales, uftp, RLibrerias, UPantallaCompleta, UArchivos, UDml, CManualesFiltro;
  //UNotasFiltroEnvipe;
{$R *.dfm}

function TFCroquisEnvipe.getInformacion(datos: TDataSet): string;
begin
  try
    result:= ' Elije el archivo que deseas visualizar para : UPM: '+ datos.FieldByName('UPM').AsString+ ' - VIV_SEL: '+ datos.FieldByName('viv_sel').AsString+ ' - PROG: ' + datos.FieldByName('PROG').AsString+ ' ';
  except
    on e: exception do
      managerException('[UCroquisEnvipe.getInformacion] ', e);
  end; // try-except
end;

procedure TFCroquisEnvipe.CNotasClick(Sender: TObject);
begin
	{try
		try
			FNotasFiltroEnvipe := TFNotasFiltroEnvipe.Create(Application);
      FNotasFiltroEnvipe.workMode := T;
			FNotasFiltroEnvipe.ShowModal;
		except
			on e: exception do
				managerException('[TFCroquisEnvipe.CNotasClick] ', e);
		end; // try-except
	finally
		freeandnil(FNotasFiltroEnvipe);
	end; // try-finally}
end;
end.
