object WaitForm: TWaitForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'WaitForm'
  ClientHeight = 88
  ClientWidth = 500
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 88
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object pb: TsGauge
      Left = 2
      Top = 26
      Width = 496
      Height = 30
      Align = alClient
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Progress = 0
      Suffix = '%'
      ExplicitTop = 25
    end
    object sLabelFX1: TsLabelFX
      Left = 2
      Top = 2
      Width = 496
      Height = 24
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      SkinSection = 'FORMTITLE'
      Caption = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1087#1086#1076#1086#1078#1076#1080#1090#1077'...'
      ParentFont = False
      Layout = tlCenter
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 9142386
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object pbAll: TsGauge
      Left = 2
      Top = 56
      Width = 496
      Height = 30
      Align = alBottom
      Visible = False
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Progress = 0
      Suffix = '%'
      ExplicitTop = 61
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 408
    Top = 16
  end
end
