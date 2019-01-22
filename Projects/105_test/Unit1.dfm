object Form1: TForm1
  Left = 370
  Top = 227
  Width = 1166
  Height = 382
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
  object Shape1: TShape
    Left = 960
    Top = 88
    Width = 25
    Height = 25
    Shape = stCircle
  end
  object Label2: TLabel
    Left = 48
    Top = 136
    Width = 393
    Height = 41
    AutoSize = False
    Caption = 'Label2'
    Color = clWhite
    ParentColor = False
  end
  object ComLed1: TComLed
    Left = 416
    Top = 88
    Width = 25
    Height = 25
    ComPort = ComPort1
    LedSignal = lsConn
    Kind = lkRedLight
  end
  object Label1: TLabel
    Left = 904
    Top = 88
    Width = 33
    Height = 25
    AutoSize = False
    Caption = 'Label1'
    Color = clWhite
    ParentColor = False
  end
  object GroupBox2: TGroupBox
    Left = 496
    Top = 72
    Width = 393
    Height = 49
    Caption = 'LED_BUILTIN'
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 72
    Width = 337
    Height = 49
    Caption = 'COM-Port'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 64
    Top = 88
    Width = 75
    Height = 25
    Caption = 'connect'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 88
    Width = 75
    Height = 25
    Caption = 'disconnect'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 504
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Off'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 592
    Top = 88
    Width = 73
    Height = 25
    Caption = 'On'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 280
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Quit'
    TabOrder = 4
    OnClick = Button5Click
  end
  object ScrollBar1: TScrollBar
    Left = 688
    Top = 88
    Width = 169
    Height = 25
    PageSize = 0
    TabOrder = 5
    OnChange = ScrollBar1Change
  end
  object ComPort1: TComPort
    BaudRate = br115200
    Port = 'COM15'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 448
    Top = 80
  end
end
