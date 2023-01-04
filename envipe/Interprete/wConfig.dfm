object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '<configuraci'#243'n de conexion y almacenamienot de cuestionarios >'
  ClientHeight = 305
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 24
    Width = 91
    Height = 13
    Caption = 'Ruta ConfigSys :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 41
    Top = 149
    Width = 57
    Height = 13
    Caption = 'Ruta BDL :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 27
    Top = 72
    Width = 74
    Height = 13
    Caption = 'Nombre BDL :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 206
    Width = 95
    Height = 13
    Caption = 'Contrase'#241'a BDL :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 507
    Top = 68
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 507
    Top = 22
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 507
    Top = 147
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object Label5: TLabel
    Left = 105
    Top = 96
    Width = 396
    Height = 42
    AutoSize = False
    Caption = 
      'Se tiene que definir el nombre del archivo de la base de datos, ' +
      'se puede seleccionar un archivo ya existenteutilizando el boton ' +
      'junto a la caja de text '#243' se especifica un nombre para un archiv' +
      'o nuevo de base de datos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label6: TLabel
    Left = 105
    Top = 168
    Width = 396
    Height = 42
    AutoSize = False
    Caption = 
      'Hay que especificar una ruta en donde se va a crear el archivo d' +
      'e base de datos o si se conectara a uno ya existente.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label7: TLabel
    Left = 105
    Top = 232
    Width = 396
    Height = 42
    AutoSize = False
    Caption = 'Escribe la contrase'#241'a para acceso a la base de datos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label8: TLabel
    Left = 107
    Top = 48
    Width = 396
    Height = 42
    AutoSize = False
    Caption = 
      'Se define la ruta del archivo de configuracion para acceso a bas' +
      'e de datos local'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object edtRutaConfigSys_: TEdit
    Left = 105
    Top = 23
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = ' <Ruta del config.sys> '
  end
  object edtNombreBDL_: TEdit
    Left = 105
    Top = 69
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = ' <Nombre del archivo bdl> '
    OnEnter = edtNombreBDL_Enter
  end
  object edtRutaBDL_: TEdit
    Left = 105
    Top = 147
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = ' <Ruta del archivo bdl> '
  end
  object edtPassBDL_: TEdit
    Left = 105
    Top = 205
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 3
    Text = ' <Contrase'#241'a del bdl> '
    OnEnter = edtPassBDL_Enter
  end
  object btnConfig_: TButton
    Left = 469
    Top = 248
    Width = 105
    Height = 49
    Caption = 'Guardar configuraci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = btnConfig_Click
  end
  object chkVer_: TCheckBox
    Left = 513
    Top = 208
    Width = 38
    Height = 17
    Caption = 'ver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = chkVer_Click
  end
end
