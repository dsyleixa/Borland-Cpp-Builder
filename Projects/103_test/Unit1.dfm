object Form1: TForm1
  Left = 283
  Top = 190
  Width = 1008
  Height = 434
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
  object ComLed1: TComLed
    Left = 360
    Top = 48
    Width = 25
    Height = 25
    ComPort = ComPort1
    LedSignal = lsConn
    Kind = lkGreenLight
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 24
    Width = 289
    Height = 65
    Caption = 'Serial Port'
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Connect'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 440
    Top = 24
    Width = 537
    Height = 65
    Caption = 'LED_BUILTIN'
    TabOrder = 1
    object Shape1: TShape
      Left = 496
      Top = 24
      Width = 25
      Height = 25
      Brush.Color = clBlack
      Shape = stCircle
    end
    object Label1: TLabel
      Left = 424
      Top = 24
      Width = 57
      Height = 25
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Button3: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Off'
      Default = True
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 104
      Top = 24
      Width = 75
      Height = 25
      Caption = 'On'
      Enabled = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object ScrollBar1: TScrollBar
      Left = 200
      Top = 24
      Width = 193
      Height = 25
      LargeChange = 10
      PageSize = 0
      TabOrder = 2
      OnChange = ScrollBar1Change
    end
  end
  object Button5: TButton
    Left = 208
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Quit'
    TabOrder = 2
    OnClick = Button5Click
  end
  object ComTerminal1: TComTerminal
    Left = 16
    Top = 96
    Width = 393
    Height = 273
    Color = clBlack
    ComPort = ComPort1
    Emulation = teVT100orANSI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object ComPort1: TComPort
    BaudRate = br115200
    Port = 'COM1'
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
    TriggersOnRxChar = False
    Left = 352
    Top = 16
  end
end
