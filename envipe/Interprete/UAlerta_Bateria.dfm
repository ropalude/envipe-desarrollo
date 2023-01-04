object FAlertaBateria: TFAlertaBateria
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FAlertaBateria'
  ClientHeight = 198
  ClientWidth = 502
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 1
    Width = 500
    Height = 196
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 24
      Top = 24
      Width = 150
      Height = 150
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000960000
        009608060000003C0171E2000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000003
        1A4944415478DAEDDD2D521C41008661061D19814D55048748446EC21522108B
        0A0230086E408E11990344E4088888084444045588C9B4C1A48B5A76F7DBE91E
        9EC78C99EEE9EE79E5FE0C071030CCBD0096495844088B086111212C22844584
        B088101611C222425844088B086111212C22844584B088101611C22242584408
        8B086111212C22844584B088101611C222425844088B086111212C22844584B0
        88101611C222425844088B086111212C22D60EEBEAEAEACBDC8B256B1CC73F67
        676737BB98EB25618D736F9CAC29ACBB29AC77BB984B583C111611C222425844
        088B086111212C22844584B088101611C222425844088B086111D16B583FCBE7
        7DA227F3CA0DC370345D8E371DDF6B589F56ABD5F75D2C9ABAE91D9D4C97DB4D
        C70B8B2A6111212C22844584B088101611C2AAB8BEBE7EFBF8F8F866179BDAD4
        B4BEBB399FBFAD1D84F56B18868FCFDDB3EE193513D6E5E5E5EDB4A9932D9FB1
        AD9B698D9F675EC3C6B60D6B1DD3F9ACD58CB0FED76D5CC2AA6828ACA2CBB884
        55D1585845777109ABA2C1B08AAEE2125645A36115DDC425AC8A86C32ABA884B
        58158D8755341F97B02A3A08AB683A2E6155741256D16C5CC2AAE828ACA2C9B8
        8455D1595845737109ABA2C3B08AA6E2125645A76115CDC425AC8A8EC32A9A88
        4B58159D8755CC1E97B02A161056316B5CC2AA584858C56C7109AB62416115B3
        C425AC8A858555EC3D2E61552C30AC62AF7109AB62A161157B8B4B58150B0EAB
        D84B5CC2AA587858453C2E61555C5C5C1C1F1E1E1E250F656E0F0F0F3FCECFCF
        FFA6E6171611C222425844088B086111212C228445C46B0DEBDB388EBF939BE6
        E0FD300C1F361D3CBD9FFB69FCE973F74C617D5D672E7F79C2935E7F2A92C609
        8B086111212C22844584B088101611C222425844088B086111212C22844584B0
        889825ACF285D2B9374ED6300CF7ABD5EA74FB995E1016BC84B088101611C222
        425844088B086111212C22844584B088101611C222425844088B086111212C22
        844584B088101611C222425844088B086111212C22844584B088101611C22242
        5844088B086111212C22844584B088101611C222425844088B887F4E8E28C40C
        3744BA0000000049454E44AE426082}
    end
    object Label1: TLabel
      Left = 200
      Top = 8
      Width = 252
      Height = 39
      Caption = 'Bater'#237'a agot'#225'ndose'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 53
      Width = 158
      Height = 23
      Caption = 'La bateria tiene un'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object porcentaje: TLabel
      Left = 364
      Top = 53
      Width = 39
      Height = 23
      Caption = '99%'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 409
      Top = 53
      Width = 80
      Height = 23
      Caption = 'de carga.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 200
      Top = 82
      Width = 270
      Height = 23
      Caption = 'Conecta cuanto antes el equipo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object btn1: TAdvGlowButton
      Tag = 12500
      Left = 329
      Top = 128
      Width = 160
      Height = 55
      Margins.Right = 230
      Caption = 'Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      ShortCutHintPos = shpBottom
      TabOrder = 0
      TabStop = True
      OnClick = btn1Click
      Appearance.BorderColorHot = clGradientActiveCaption
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.Gradient = ggRadial
    end
  end
end
