object Form1: TForm1
  Left = 229
  Top = 131
  Width = 782
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'false'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 170
    Width = 353
    Height = 89
    Alignment = taCenter
    AutoSize = False
    Caption = 'Hello! How are you?'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Button1: TButton
    Left = 206
    Top = 304
    Width = 153
    Height = 81
    Caption = 'I feel good!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 414
    Top = 304
    Width = 145
    Height = 81
    Caption = 'I feel bad!'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 416
    Width = 161
    Height = 49
    Caption = 'Quit '
    TabOrder = 2
    OnClick = Button3Click
  end
end
