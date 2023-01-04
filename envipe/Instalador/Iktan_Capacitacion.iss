#define myVersion  "[VERSION]"
#define mySource   "[RUTA]"
#define mySecurity "on"
#define myAppName  "IktanMovil_Capacitacion_Envipe"
#define myDisplay  "Iktan"
#define myPublish  "Iktan"
#define myAppId    "IktanMovil2015"

#define MyLockFile "{userappdata}\" + myAppName + " Installer.lockfile"

[Setup]
AppName=Iktan móvil
AppVersion={#myVersion}
AppVerName=Versión {#myVersion}
;DefaultDirName={sd}\{#myDisplay}
DefaultDirName={param:Drive|C:}\{#myPublish}
DefaultGroupName={#myPublish}
UninstallDisplayIcon={app}\{#myDisplay}.exe
OutputDir=d:\{#myPublish}2015
SourceDir={#mySource}
OutputBaseFilename=CA_ENVIPE_[ENTIDAD]_IktanMovil_{#myVersion}
Compression=lzma/ultra64
CompressionThreads=2
AllowRootDirectory=yes
DisableDirPage=yes
DisableFinishedPage=true
DisableProgramGroupPage=yes
MinVersion=6.2
;OnlyBelowVersion=6.0,6.0
UninstallDisplayName={#myDisplay} [{#myVersion}] (Desinstalar)
WindowVisible=true
WizardImageFile={#mySource}\envipe\Instalador\Cintillo_Vertical3.bmp
WizardSmallImageFile={#mySource}\envipe\Instalador\image_horizontal3.bmp
BackColor=clBlue
DirExistsWarning=auto
AppId={#myAppId}

[Types]
Name: custom;               Description: Instalación personalizada por figura;       Flags: iscustom

[Components]
Name: aplicacion;            Description: Iktan móvil;                 Types: custom; Flags: fixed
Name: figura;                Description: Figuras operativas;          Types: custom; Flags: fixed
Name: figura\capacitacion;   Description: Capacitación [IE];           Flags: exclusive

[Files]
Source: iktan.exe;                                   DestDir: {app};                   DestName: iktan.exe;                   Components: aplicacion;               Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace  
;Source: movil\lanzador\iktanLauncher.exe;            DestDir: {app};                   DestName: iktanLanzador.exe;           Components: aplicacion;               Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace  
Source: Movil\Xml\MIktan.xml;                        DestDir: {app}\Movil\Xml;         DestName: MIktan.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: Movil\Xml\SIktan.xml;                        DestDir: {app}\Movil\Xml;         DestName: SIktan.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: Movil\Xml\VIktan.xml;                        DestDir: {app}\Movil\Xml;         DestName: VIktan.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: envipe\Xml\SEnvipe.xml;                        DestDir: {app}\envipe\Xml;         DestName: Senvipe.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: envipe\Xml\MEnvipe.xml;                        DestDir: {app}\envipe\Xml;         DestName: Menvipe.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: envipe\Xml\VEnvipe.xml;                        DestDir: {app}\envipe\Xml;         DestName: Venvipe.xml;                  Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden; 
Source: Movil\Xml\versiones.rtf;                     DestDir: {app}\Movil\Xml;         DestName: versiones.rtf;               Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden;
Source: admin.sys;                                   DestDir: {app};                   DestName: admin.sys;                   Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: Hidden;
Source: iktan.ini;                                   DestDir: {app};                   DestName: iktan.ini;                   Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden;
Source: Movil\Recursos\Imagenes\*.*;                 DestDir: {app}\Movil\Recursos\Imagenes;                                                                                                   Flags: ignoreversion recursesubdirs
Source: iktan.properties;                            DestDir: {app};                   DestName: iktan.properties;            Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: Hidden;
Source: Movil\Temas\*.*;                             DestDir: {app}\Movil\Temas;                                                                                                               Flags: ignoreversion recursesubdirs
Source: movil\restart.exe;                           DestDir: {app};                   DestName: restart.exe;                 Components: aplicacion;               Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden; 
Source: Movil\PopUp\*.*;                             DestDir: {app}\Movil\PopUp;                                                                                                               Flags: ignoreversion recursesubdirs
Source: Movil\CheckExe\*.*;                          DestDir: {app}\Movil\CheckExe;                                                                                                               Flags: ignoreversion recursesubdirs
Source: envipe\Modelo\envipe_[ENTIDAD].sys;            DestDir: {app}\envipe\Modelo;      DestName: envipe.sys;                   Components: aplicacion;               Permissions: users-modify; Flags: overwritereadonly; Attribs: Hidden; 
Source: envipe\instalador\N9.inegi;                   DestDir: {app};                   DestName: config.inegi;                Components: figura\capacitacion;     Permissions: users-modify; Flags: overwritereadonly; Attribs: ReadOnly Hidden;
Source: movil\config.properties;                     DestDir: {cf32}\IktanMovil;       DestName: config.properties;           Components: aplicacion; Permissions: users-modify; Flags: overwritereadonly; Attribs: Hidden;
Source: recursos\WiFiMan.dll;                        DestDir: {app}\recursos;          DestName: WiFiMan.dll;                 Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;
;Source: recursos\iktanEncabezado.png; 					DestDir: {app}\recursos;  DestName: iktanEncabezado.png;                 Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;
Source: recursos\dccmd.exe;                          DestDir: {sys};                   DestName: dccmd.exe;                   Components: aplicacion;              Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;  
Source: Movil\Recursos\train.wav;                    DestDir: {app}\Movil\Recursos\;   DestName: train.wav;                   Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;
Source: Movil\Recursos\error.wav;                    DestDir: {app}\Movil\Recursos\;   DestName: error.wav;                   Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;
Source: Movil\Recursos\notify.wav;                   DestDir: {app}\Movil\Recursos\;   DestName: notify.wav;                  Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: Hidden;
Source: envipe\instalador\es.reg;                     DestDir: {app};                   DestName: es.reg;                      Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist overwritereadonly restartreplace; Attribs: ReadOnly Hidden;
Source: envipe\instalador\background.bmp;                                                              Flags: dontcopy
Source: Recursos\*.*;                                DestDir: {app}\Recursos;                         Flags: ignoreversion recursesubdirs

Source: envipe\Instalador\scriptLite.sql;	           DestDir: {app}\envipe\Instalador;  DestName: scriptLite.sql;              Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;

Source: envipe\Instalador\scriptInicializar.sql;             DestDir: {app}\envipe\Instalador;  DestName: scriptInicializar.sql;              Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;


Source: envipe\Trabajo\Descargas\DW_0801010110101_20190128144255279.INEGI;	DestDir: {app}\Descargas; DestName: DW_0801010110101_20190128144255279.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; 
Source: envipe\Trabajo\Descargas\DW_0801010110100_20190128143603267.INEGI;	DestDir: {app}\Descargas; DestName: DW_0801010110100_20190128143603267.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; 
Source: envipe\Trabajo\Descargas\DW_9901010000000_20190205142117681.INEGI;  DestDir: {app}\Descargas; DestName: DW_9901010000000_20190205142117681.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; 

;Carpeta de respaldo de archivos de descarga
Source: envipe\Trabajo\Descargas\DW_0801010110101_20190128144255279.INEGI; DestDir: {app}\Recursos\Descargas; DestName: DW_0801010110101_20190128144255279.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall;
Source: envipe\Trabajo\Descargas\DW_0801010110100_20190128143603267.INEGI; DestDir: {app}\Recursos\Descargas; DestName: DW_0801010110100_20190128143603267.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall;
Source: envipe\Trabajo\Descargas\DW_9901010000000_20190205142117681.INEGI; DestDir: {app}\Recursos\Descargas; DestName: DW_9901010000000_20190205142117681.INEGI; Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall;

Source: recursos\sqlite3.dll;                 DestDir: {app}\recursos;             DestName: sqlite3.dll;                 Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;
Source: recursos\DelZip179.dll;               DestDir: {app}\recursos;             DestName: DelZip179.dll;               Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;
Source: movil\config.exe;                     DestDir: {cf}\IktanMovil;   DestName: config.exe;                           Components: aplicacion; Permissions: users-modify; Flags: overwritereadonly deleteafterinstall
Source: recursos\sqlite3.dll;                 DestDir: {cf32}\IktanMovil; DestName: sqlite3.dll;                          Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;
Source: recursos\DelZip179.dll;               DestDir: {cf32}\IktanMovil; DestName: DelZip179.dll;                        Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;
Source: Mcc\*.*;                              DestDir: {app}\Mcc;                                                                                                            Flags: ignoreversion recursesubdirs
;Source: recursos\documentos\*.*;              DestDir: {app}\envipe\Documentacion\;                                                                                           Flags: ignoreversion recursesubdirs
Source: envipe\Documentacion\*.*;             DestDir: {app}\envipe\Documentacion\;                                                                                           Flags: ignoreversion recursesubdirs
;[INCLUYE_MCC]
;Source: mcc_01.exe;                  DestDir: {cf}\IktanMovil;   DestName: mcc.exe;   

Source: recursos\documentos\pdf_no_existe.pdf;               DestDir: {app}\recursos\documentos; DestName: pdf_no_existe.pdf;                    Components: aplicacion; Permissions: users-modify; Flags: onlyifdoesntexist uninsneveruninstall; Attribs: ReadOnly Hidden;
Source: "envipe\Instalador\iktanMovil.dll"; Flags: dontcopy

; Add the ISSkin DLL used for skinning Inno Setup installations.
Source: envipe\Instalador\ISSkin.dll; DestDir: {app}; Flags: dontcopy
; Add the Visual Style resource contains resources used for skinning,
; you can also use Microsoft Visual Styles (*.msstyles) resources.
Source: envipe\Instalador\Office2007.cjstyles; DestDir: {tmp}; Flags: dontcopy
;Source: Instalador\Vista.cjstyles; DestDir: {tmp}; Flags: dontcopy

[Icons]
Name: "{commondesktop}\{#myPublish} {code:changeName} "; Filename: {app}\{#myDisplay}.exe; WorkingDir: {app}; Parameters: {#mySecurity}; HotKey: ctrl+shift+p
Name: "{group} {code:changeName}\{#myPublish} {code:changeName} "; Filename: {app}\Iktan.exe; WorkingDir: {app}; Parameters: {#mySecurity}
Name: {group} {code:changeName}\{#myPublish} {code:changeName} (Desinstalar); Filename: {uninstallexe}; WorkingDir: {app}
Name: {group} {code:changeName}\Ayuda {code:changeName}; Filename: {app}\ayuda.pdf; WorkingDir: {app}

[Registry]
Root: HKLM64; Subkey: SOFTWARE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: Iktan; ValueData: {app}\iktan.exe {#mySecurity}; Flags: uninsdeletekey
;Root: HKLM64; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {cf}\IktanMovil\config.exe; ValueData: ~RUNASADMIN; Permissions: admins-modify; Flags: uninsdeletekey   

[Run]
Filename: {cf32}\IktanMovil\config.exe; Parameters: "{#mySecurity} ""{app}"" ""{srcexe}"" {#myVersion} install"; WorkingDir: {cf32}\IktanMovil; Flags: postinstall waituntilidle skipifdoesntexist runascurrentuser
;Filename: {sys}\mcc.exe; WorkingDir: {tmp}; Flags: postinstall waituntilidle skipifdoesntexist 

[UninstallRun]
Filename: {cf32}\IktanMovil\config.exe; Parameters: "{#mySecurity} ""{app}"" ""{srcexe}"" {#myVersion} uninstall"; WorkingDir: {cf32}\IktanMovil; Flags: waituntilidle skipifdoesntexist

[UninstallDelete]
Type: filesandordirs; Name: {app}\Xml
Type: filesandordirs; Name: {app}\Modelo
Type: filesandordirs; Name: {app}\*
Type: filesandordirs; Name: {app}
;Type: filesandordirs; Name: C:\IKTANMOVIL

[Languages]
Name: es; MessagesFile: compiler:Languages\Spanish.isl

[Messages]
WelcomeLabel1=Instalación del [name]
WelcomeLabel2=Este programa instalará la [name/ver] en su equipo.%n%nSe recomienda que cierre todas las demás aplicaciones antes de continuar.
SelectTasksLabel2=Seleccione las tareas adicionales que desea que se realicen durante la instalación del [name] y seleccione <Siguiente>.
ReadyLabel1=Ahora el programa está listo para iniciar la instalación del [name] en su equipo.
FinishedHeadingLabel=Completando la instalación del [name]
FinishedLabelNoIcons=El programa completó la instalación del [name] en su equipo.
FinishedLabel=El programa completó la instalación del [name] en su equipo. Puede ejecutar la aplicación seleccione el icono instalado.
ClickNext=Seleccione <Siguiente> para continuar, o <Cancelar> para salir de la instalación.
InfoBeforeClickLabel=Cuando esté listo para continuar con la instalación, seleccione <Siguiente>.
InfoAfterClickLabel=Cuando esté listo para continuar, seleccione <Siguiente>.
ReadyLabel2a=Seleccione <Instalar> para continuar con el proceso, o Atrás si desea revisar o cambiar alguna configuración.
ReadyLabel2b=Seleccione <Instalar> para continuar con el proceso.
ConfirmUninstall=¿Está seguro que desea desinstalar la aplicación del%n "%1"?
UninstalledMost=La desinstalación de la aplicación del%n "%1"%n ha sido completada con éxito.
SelectComponentsLabel2=Seleccione únicamente los elementos que desea incluir en la instalación. Desactive los que no serán instalados. Seleccione <Siguiente> cuando este listo para continuar.

[Code]
const
    // The constants for CreateFile ().
    GENERIC_READ        = $80000000;
    GENERIC_WRITE       = $40000000;
    GENERIC_EXECUTE     = $20000000;
    GENERIC_ALL         = $10000000;
    FILE_SHARE_READ     = 1;
    FILE_SHARE_WRITE    = 2;
    FILE_SHARE_DELETE   = 4;
    CREATE_NEW          = 1;
    CREATE_ALWAYS       = 2;
    OPEN_EXISTING       = 3;
    OPEN_ALWAYS         = 4;
    TRUNCATE_EXISTING   = 5;
    // General Win32.
    INVALID_HANDLE_VALUE= -1;
    // User32.
    SW_RESTORE          = 9;
    // screen detection
    HORZRES             = 8;    // horizontal resolution
    VERTRES             = 10;   // vertical resolution
    BITSPIXEL           = 12;   // bits per pixel
    PLANES              = 14;   // number of planes (color depth=bits_per_pixel*number_of_planes)
    VERSION_ADOBE       = 11;
    FABRICANTE          = 'INEGI-COORDINACION DE SOPORTE TECNICO CGI (9/Marzo/2022)-IS-10-2022';
    FABRICANTE360       = 'INEGI-COORDINACION DE SOPORTE TECNICO CGI (8/Marzo/2022)-IS-11-2022';
    FABRICANTE2         = 'INEGI-CGI-COORDINACION DE SOPORTE TECNICO (27/JUNIO/2022)-IS-29-2022';
    FABRICANTE3         = 'INEGI-CGI-COORDINACION DE SOPORTE TECNICO (7/DICIEMBRE/2022)-IS-43-2022';

var
    LockFileName: String;
    hLockFile	: THandle;
    nameTask    : string;
    fileHelp    : string;
    BackImage   : TBitmapImage;

procedure InitializeWizard;
var
  x, y: Integer;
begin
  //msgBox(intToStr(MainForm.width)+ ' '+ intToStr(MainForm.height), mbInformation, MB_OK)
  ExtractTemporaryFile('background.bmp');
  y := 0;
  while y < MainForm.Height do begin
    x := 0;
    while x < MainForm.Width do begin
      BackImage         := TBitmapImage.Create(MainForm);
      BackImage.parent  := MainForm;
      BackImage.top     := y;
      BackImage.left    := x;  
      BackImage.autoSize:= true;
      BackImage.bitmap.loadFromFile(ExpandConstant('{tmp}\background.bmp'));
      x := x + BackImage.width- 3;
    end;
    y := y + BackImage.Height- 3; 
  end;
end;

function getUninstallString: String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#myAppId}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
//  msgBox('getUninstallString:'+ sUnInstPath+ ' sUnInstallString:'+ sUnInstallString, mbInformation, MB_OK)
end;


function isUpgrade: Boolean;
begin
  //msgBox('isUpgrade:'+ getUninstallString, mbInformation, MB_OK)
  Result := (GetUninstallString<> '');
end;


function unInstallOldVersion: Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
  // Return Values:
  // 1 - uninstall string is empty
  // 2 - error executing the UnInstallString
  // 3 - successfully executed the UnInstallString
  // default return value
  result := 0;
  // get the uninstall string of the old app
  sUnInstallString := GetUninstallString;
  if sUnInstallString<> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end 
  else
    Result := 1;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  begin
    if (IsUpgrade) then begin
      // UnInstallOldVersion;
    end;
  end;
end;

// The required Win32 functions.
function CreateFile (
	lpFileName: String; // Could be PChar, but String is good enough for us here.
	dwDesiredAccess: Cardinal;
	dwShareMode: Cardinal;
	lpSecurityAttributes: Cardinal;
	dwCreationDisposition: Cardinal;
	dwFlagsAndAttributes: Cardinal;
	hTemplateFile:Integer
): Integer; external 'CreateFileA@kernel32.dll stdcall';

function WriteFile(hFile: THandle; lpBuffer: String; nNumberOfBytesToWrite: LongInt; var lpNumberOfBytesWritten: LongInt; lpOverlapped : LongInt): Boolean; external 'WriteFile@kernel32.dll stdcall';

function ReadFile(hFile: THandle; lpBuffer: String; nNumberOfBytesToRead: LongInt; var lpNumberOfBytesRead: LongInt; lpOverlapped: LongInt): Boolean; external 'ReadFile@kernel32.dll stdcall';

function CloseHandle (hHandle: INTEGER): INTEGER; external 'CloseHandle@kernel32.dll stdcall';

function IsWindow (hWnd: THandle) : Boolean; external 'IsWindow@User32.dll stdcall';

function ShowWindow (hWnd: THandle; nCmdShow: Integer): Boolean; external 'ShowWindow@User32.dll stdcall';

function BringWindowToTop (hWnd: THandle) : Boolean; external 'BringWindowToTop@User32.dll stdcall';

function IsPreviousInstanceRunning: Boolean;
// Returns TRUE, if the previous instance is running.
// FALSE otherwise.
var
  stringPID   : String;
  BytesWritten: LongInt;
begin
  LockFileName := ExpandConstant('{#MyLockFile}');
  hLockFile := CreateFile (LockFileName,
      GENERIC_WRITE,      // Desired access.
      FILE_SHARE_READ,    // Share mode - The second instance wants to read later.
      0,                  // Security attributes.
      CREATE_ALWAYS, FILE_ATTRIBUTE_TEMPORARY, 0);
  // File is still locked, ie. the first instance is still running.
  if (INVALID_HANDLE_VALUE = hLockFile) then begin
    result := true;
    exit;
  end;
  result:= false;
end;

function MakePreviousInstanceActive: Boolean;
var
  stringWnd : String;
  BytesRead : LongInt;
  hPrevWnd : THandle;
  Mult : THandle;
  i : Integer;
begin
  hLockFile := CreateFile (LockFileName, GENERIC_READ,// Desired access.
      FILE_SHARE_READ + FILE_SHARE_WRITE, 0,          // Security attributes.
      OPEN_EXISTING, FILE_ATTRIBUTE_TEMPORARY, 0);
  if (INVALID_HANDLE_VALUE = hLockFile) then begin	  // The file's disappeared, ie. we should start up normally.
    result := FALSE;
    exit;
  end;
  // Expand the returned string from ReadFile () to avoid an access violation.
  stringWnd := StringOfChar ('#', 101);
  ReadFile(hLockFile, stringWnd, 100, BytesRead, 0);
  stringWnd:= Copy (stringWnd, 0, BytesRead);
  CloseHandle(hLockFile);
  hPrevWnd := StrToInt (stringWnd);
  if IsWindow(hPrevWnd) then begin
    showWindow (hPrevWnd, SW_RESTORE);
    bringWindowToTop (hPrevWnd);
    result := TRUE;
    exit;
  end;
end;

procedure RemoveLockFile;
begin
  CloseHandle (hLockFile);
  DeleteFile (LockFileName);
end;

procedure WriteWizardWindowHandle;
var
  hMainWnd : THandle;
  stringWnd : String;
  BytesWritten: LongInt;
begin
  hMainWnd := WizardForm.Handle;
  stringWnd:= IntToStr(hMainWnd);
  WriteFile(hLockFile, stringWnd, length (stringWnd), BytesWritten, 0);
end;

function DeleteDC (hDC: Integer): Integer; external 'DeleteDC@GDI32 stdcall';

function CreateDC (lpDriverName, lpDeviceName, lpOutput: String; lpInitData: Integer): Integer; external 'CreateDCA@GDI32 stdcall';

function GetDeviceCaps (hDC, nIndex: Integer): Integer; external 'GetDeviceCaps@GDI32 stdcall';

function isScreenRequired: Boolean;
var
  xres, yres, bpp,
  pl, tmp, hDC : Integer;
begin
  //get resolution & BPP
  hDC  := CreateDC('DISPLAY', '', '', 0);
  pl   := GetDeviceCaps(hDC, PLANES);
  bpp  := GetDeviceCaps(hDC, BITSPIXEL);
  xres := GetDeviceCaps(hDC, HORZRES); //horizontal resolution
  yres := GetDeviceCaps(hDC, VERTRES); //vertical resolution
  tmp  := DeleteDC(hDC);
  bpp  := pl * bpp;   //color depth
  //msgBox( 'Current resolution is '+ IntToStr(xres)+ 'x' + IntToStr(yres)+ ' and color depth is ' + IntToStr( bpp ), mbInformation, MB_OK );
  result:= (xres< 1366) or (yres< 768);
end;

// The following code block is used to load the ISS, pass in
// NormalSilver.ini as the second parameter to LoadSkin to use
// the Silver color scheme instead of the default Blue color
// scheme.
// Importing LoadSkin API from ISSkin.DLL
procedure LoadSkin(lpszPath: String; lpszIniFileName: String); external 'LoadSkin@files:isskin.dll stdcall';

// Importing UnloadSkin API from ISSkin.DLL
procedure UnloadSkin(); external 'UnloadSkin@files:isskin.dll stdcall';

procedure AssignTypeInstalation(CurPageID: Integer);
begin
  //msgBox('CurPageChanged  curPageID: '+ inttostr(CurPageID)+ ' '+ inttostr(ord(wpSelectComponents)), mbInformation, MB_OK);
  if (CurPageId>= wpSelectComponents) then begin
    nameTask:= 'Administrador';
    //fileHelp:= 'ManualRP.pdf';
    if IsComponentSelected('figura\administrador') then begin
      nameTask:= 'Administrador'
      //fileHelp:= 'ManualRP.pdf';
    end;
    {
    else
      if IsComponentSelected('figura\capacitacion') then begin
        nameTask:= 'Capacitación (IE)'
        //fileHelp:= 'ManualCP.pdf';
      end
      else
        if IsComponentSelected('figura\enumerador') then begin
          nameTask:= 'Entrevistador (EN)'
          //fileHelp:= 'ManualAC.pdf';
        end
        else
          if IsComponentSelected('figura\supervisor') then begin
            nameTask:= 'Supervisor (SP)'
            //fileHelp:= 'ManualET.pdf';   
          end
          else
            MsgBox('Figura no seleccionada.', mbInformation, MB_OK);
     }
  end;
  //MsgBox('raul CurPageID: '+ inttostr(CurPageID)+ ' '+ inttostr(ord(wpSelectComponents))+ ' -> '+ nameTask, mbInformation, MB_OK);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  AssignTypeInstalation(CurPageID);
  result:= true;
  //msgBox('NextButtonClick     curPageID: '+ inttostr(CurPageID)+ ' nameTask: '+ nameTask, mbInformation, MB_OK);
  if (curPageId>= wpSelectComponents) and (nameTask<> 'Supervisión (SP)') then
    if isScreenRequired then begin
      result:= false;
      msgBox('La resolución del monitor requerida para esta instalación'+ #13+ 'tiene que ser superior o igual a 1366x768 pixeles'+ #13+ 'para que los formularios de captura se vean de forma correcta.', mbError, MB_OK)
    end; // if
end;

function changeName(s: string): string;
begin
  result:= nameTask;
end;

function nameHelpFile(s: string): string;
begin
  result:= fileHelp;
end;

function existsDriveInstall: boolean;
begin
  {$I-}
  result:= true;
  {$I+}
end;

function versionAdobe: Boolean;
var
  ValorLlave, version: string;
  origen, destino, copiar, valor: integer;
begin
  result:= False;
  if RegQueryStringValue(HKEY_CLASSES_ROOT, '\Software\Adobe\Acrobat\Exe', '', ValorLlave) then begin
    origen := pos('Reader ', ValorLlave);
    origen := origen+ 7;
    destino:= pos('.', ValorLlave);
    copiar := destino- origen;
    version:= copy(ValorLlave, origen, copiar);
    valor  := strToInt(version);
    if valor<= VERSION_ADOBE then
      result:= True
    else 
      MsgBox('Necesita la version de adobe reader 11.0 o inferior para poder instalar iktan móvil, tiene: '+ version, mbInformation, MB_OK);     
//    MsgBox('Value is ' + ValorLlave, mbInformation, MB_OK);
//    MsgBox('Valor is ' + version, mbInformation, MB_OK);
  end; // if
end;

function obtenerFabricanteSetup(nombre: AnsiString): Boolean;
external 'obtenerFabricante@files:iktanMovil.dll stdcall setuponly';

function InitializeSetup: Boolean;
var
  isImageIktan, isImageIktan360: Boolean;
begin
  nameTask:= '';
  result  := false;
  if isPreviousInstanceRunning then begin
    msgBox('Existe una versión del instalador ejecutandose de manera simultánea'+ #13+ 'por lo que no se puede ejecutar otra aplicación del instalador.', mbError, MB_OK)
    removeLockFile;
  end
  else
    if isUpgrade then
      msgBox('Existe una versión previa de la aplicación, por favor'+ #13+ 'desinstale esta versión e intente nuevamente.', mbError, MB_OK)
    else
      if not existsDriveInstall then
         msgBox('Su equipo no tiene la unidad C:\ por lo que no se puede instalar la aplicación.', mbError, MB_OK)
      else
        // Verificar el sistema operativo a 64 bits con IsWin64
        if not IsWin64 then
          msgBox('Su equipo no tiene Windows 8 a 64 bits por lo que no se puede instalar la aplicación.', mbError, MB_OK)
        else 
          if versionAdobe then begin
            isImageIktan    := obtenerFabricanteSetup(FABRICANTE) or
              obtenerFabricanteSetup(FABRICANTE360) or
              obtenerFabricanteSetup(FABRICANTE2) or
              obtenerFabricanteSetup(FABRICANTE3);
            //if (isImageIktan) or (isImageIktanN) then begin
			if (isImageIktan)then begin
              extractTemporaryFile('Office2007.cjstyles');
              loadSkin(ExpandConstant('{tmp}\Office2007.cjstyles'), 'NormalBlack2.ini');
              result:= true;
            end // if imagen de windows en el equipo
            else
              msgBox('Su equipo no tiene la imagen de Windows de Inegi por lo que no se puede instalar la aplicación.'+ #13+ FABRICANTE, mbError, MB_OK);              
          end; // if version adobe
end;

procedure DeinitializeSetup;
begin
  removeLockFile;
  // Hide Window before unloading skin so user does not get
  // a glimse of an unskinned window before it is closed.
  showWindow(StrToInt(ExpandConstant('{wizardhwnd}')), 0);
  unloadSkin();
end;

