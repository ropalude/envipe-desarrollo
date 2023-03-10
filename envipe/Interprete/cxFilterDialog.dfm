object cxFilterDialog: TcxFilterDialog
  Left = 421
  Top = 148
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  ActiveControl = cbOperator1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Custom Filter'
  ClientHeight = 206
  ClientWidth = 414
  Color = clBtnFace
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Show rows where:'
    Transparent = True
  end
  object lblColumnCaption: TcxLabel
    Left = 8
    Top = 26
    AutoSize = False
    Caption = 'ColumnCaption'
    Properties.LineOptions.Visible = True
    Transparent = True
    Height = 18
    Width = 397
  end
  object lblSingle: TcxLabel
    Left = 8
    Top = 134
    Caption = 'Use ? to represent any single character'
    Transparent = True
  end
  object lblSeries: TcxLabel
    Left = 8
    Top = 153
    Caption = 'Use * to represent any series of characters'
    Transparent = True
  end
  object lblEdit1PlaceHolder: TLabel
    Left = 208
    Top = 46
    Width = 193
    Height = 21
    AutoSize = False
    Color = clGreen
    ParentColor = False
    Visible = False
  end
  object lblEdit2PlaceHolder: TLabel
    Left = 208
    Top = 96
    Width = 193
    Height = 21
    AutoSize = False
    Color = clGreen
    ParentColor = False
    Visible = False
  end
  object cbOperator1: TcxComboBox
    Left = 8
    Top = 46
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 0
    OnClick = cbOperator1Click
    Width = 193
  end
  object cbOperator2: TcxComboBox
    Left = 8
    Top = 96
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cbOperator2PropertiesChange
    TabOrder = 3
    Width = 193
  end
  object btnOK: TcxButton
    Left = 248
    Top = 176
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object btnCancel: TcxButton
    Left = 330
    Top = 176
    Width = 75
    Height = 23
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object rbAnd: TcxRadioButton
    Tag = 1
    Left = 56
    Top = 74
    Width = 60
    Height = 17
    Caption = '&And'
    Checked = True
    TabOrder = 1
    TabStop = True
    Transparent = True
  end
  object rbOr: TcxRadioButton
    Tag = 1
    Left = 120
    Top = 74
    Width = 65
    Height = 17
    Caption = '&Or'
    TabOrder = 2
    Transparent = True
  end
end
