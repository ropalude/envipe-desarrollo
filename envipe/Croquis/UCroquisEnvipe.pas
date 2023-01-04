unit UCroquisEnvipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IACheckControl, StdCtrls, CurvyControls, OleCtrls,
  AcroPDFLib_TLB, ImgList, UCroquis, DB, UContenedorMaestro;

type
  TFCroquisEnvipe = class(TFCroquis)
    function getInformacion(datos: TDataSet): string; override;
    function getRutaFTP(listaFaltantes: TStringList; I: integer): string; override;
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
{$R *.dfm}

function TFCroquisEnvipe.getInformacion(datos: TDataSet): string;
begin
  try
    result:= ' Elije el archivo que deseas visualizar para : UPM: '+ datos.FieldByName('UPM').AsString+ ' - VIV_SEL: '+ datos.FieldByName('viv_sel').AsString+ ' - PROG: ' + datos.FieldByName('PROG').AsString+ ' ';
  except
    on e: exception do
      managerException('[TFCroquisEndireh.getInformacion] ', e);
  end; // try-except
end;

function TFCroquisEnvipe.getRutaFTP(listaFaltantes: TStringList; I: integer): string;
begin
  try
    result:= rutas.RUTA_FTP + 'Recursos/' + 'CE_' + copy(USUARIO.CVE_OPERATIVA_EQUIPO, 3, 2) + '/' + copy(listaFaltantes[I], 0, 2) + '/';
  except
    on e: exception do
      managerException('[UCroquisEndireh.getRutaFTP] ', e);
  end; // try-except
end; // getRutaFTP

end.
