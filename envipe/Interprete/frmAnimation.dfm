object Waiting: TWaiting
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsNone
  Caption = 'Waiting'
  ClientHeight = 48
  ClientWidth = 772
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 12
  object vgScene1: TvgScene
    Left = 0
    Top = 0
    Width = 772
    Height = 48
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Transparency = True
    Style = Resources1
    DesignSnapGridShow = False
    DesignSnapToGrid = False
    DesignSnapToLines = True
    object Root1: TvgBackground
      Width = 772.000000000000000000
      Height = 48.000000000000000000
      object vgpnlPanel1: TvgPanel
        Align = vaClient
        Width = 772.000000000000000000
        Height = 48.000000000000000000
        TabOrder = 0
        object ProgressBar1: TvgProgressBar
          Align = vaClient
          Width = 772.000000000000000000
          Height = 48.000000000000000000
          TabOrder = 0
          Max = 100.000000000000000000
          Orientation = vgHorizontal
          object Label1: TvgLabel
            Align = vaClient
            Width = 772.000000000000000000
            Height = 48.000000000000000000
            TabOrder = 0
            BindingSource = Label1
            Font.Size = 18.000000000000000000
            TextAlign = vgTextAlignCenter
            VertTextAlign = vgTextAlignCenter
          end
        end
        object vglblversion: TvgLabel
          Position.Point = '(0,34.500)'
          Width = 35.000000000000000000
          Height = 14.000000000000000000
          TabOrder = 1
          AutoSize = True
          TextAlign = vgTextAlignCenter
          VertTextAlign = vgTextAlignCenter
          Text = 'Label'
          WordWrap = False
        end
      end
    end
  end
  object Resources1: TvgResources
    Left = 16
    Top = 8
    ResourcesBin = {
      545046300D5476674261636B67726F756E640005576964746805000000000000
      00E70740064865696768740500000000000040860840000C5476675265637461
      6E676C65000C5265736F757263654E616D65060A70616E656C7374796C650E50
      6F736974696F6E2E506F696E740609283230362C323434290557696474680500
      000000000000C80440064865696768740500000000000000C804400748697454
      657374080A46696C6C2E5374796C65070F766742727573684772616469656E74
      1446696C6C2E4772616469656E742E506F696E74730E0105436F6C6F72060923
      4646434443354335064F66667365740500000000003333B3FE3F000105436F6C
      6F720609234646343034303430064F6666736574050000000000000080FF3F00
      0105436F6C6F720609234646333033303330064F666673657405000000000000
      0080FF3F00001346696C6C2E4772616469656E742E5374796C65071076674C69
      6E6561724772616469656E740C5374726F6B652E436F6C6F7206092346463330
      3330333007785261646975730500000000000000800040077952616469757305
      000000000000008000400553696465730B09766753696465546F700A76675369
      64654C6566740C766753696465426F74746F6D0B766753696465526967687400
      000000}
  end
end
