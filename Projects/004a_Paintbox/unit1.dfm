object Form1: TForm1
  Left = 514
  Top = 143
  Width = 576
  Height = 513
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 392
    Width = 269
    Height = 57
    Caption = 'Press me!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 412
    Top = 392
    Width = 133
    Height = 57
    Caption = 'Quit'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 529
    Height = 369
    Caption = 'Panel1'
    TabOrder = 2
    object PaintBox1: TPaintBox
      Left = 8
      Top = 8
      Width = 513
      Height = 353
    end
  end
end
