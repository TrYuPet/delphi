object SpravForm: TSpravForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1055#1057
  ClientHeight = 500
  ClientWidth = 841
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poDesktopCenter
  ScreenSnap = True
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHelp: TsPanel
    Left = 0
    Top = 66
    Width = 841
    Height = 434
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    SkinData.SkinSection = 'DIALOG'
    DesignSize = (
      841
      434)
    object sGroupBox1: TsGroupBox
      Left = 206
      Top = 81
      Width = 430
      Height = 218
      Anchors = []
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sLabelFX1: TsLabelFX
        Left = 2
        Top = 15
        Width = 426
        Height = 32
        Align = alTop
        Alignment = taCenter
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1087#1088#1086#1073#1083#1077#1084
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsItalic]
        Shadow.Mode = smCustom
        Shadow.Distance = 2
        ExplicitWidth = 171
      end
      object sLabelFX2: TsLabelFX
        Left = 10
        Top = 53
        Width = 411
        Height = 68
        Caption = 
          #1045#1089#1083#1080' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1090#1072#1073#1083#1080#1094' '#1086#1090#1086#1073#1088#1072#1078#1072#1077#1090#1089#1103' '#1085#1077#1082#1086#1088#1088#1077#1082#1090#1085#1086' ('#1074' '#1074#1080#1076#1077' '#1085#1077#1087#1086#1085#1103#1090#1085 +
          #1099#1093' '#1089#1080#1084#1074#1086#1083#1086#1074'), '#1095#1090#1086' '#1089#1074#1103#1079#1072#1085#1086' '#1089' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077#1084' '#1073#1072#1079' '#1076#1072#1085#1085#1099#1093' FoxPro '#1089#1086#1079 +
          #1076#1072#1085#1085#1099#1093' '#1074' MS_DOS, '#1084#1086#1078#1085#1086' '#1087#1088#1086#1080#1079#1074#1077#1089#1090#1080' '#1080#1093' '#1087#1077#1088#1077#1082#1086#1076#1080#1088#1086#1074#1082#1091'.'#13#10#1055#1088#1080' '#1101#1090#1086#1084' '#1080#1089 +
          #1093#1086#1076#1085#1072#1103' '#1073#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1073#1091#1076#1077#1090' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1072' '#1074' '#1087#1072#1087#1082#1091' OldBase.'
        ParentFont = False
        WordWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Shadow.Mode = smCustom
        Shadow.BlurCount = 2
        Shadow.Distance = 2
      end
      object btnCancel: TsButton
        Left = 10
        Top = 183
        Width = 100
        Height = 25
        Caption = #1053#1072#1079#1072#1076
        TabOrder = 0
        OnClick = btnCancelClick
        SkinData.SkinSection = 'BUTTON'
      end
      object btnStart: TsButton
        Left = 320
        Top = 183
        Width = 100
        Height = 25
        Caption = #1055#1077#1088#1077#1082#1086#1076#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 1
        OnClick = btnStartClick
        SkinData.SkinSection = 'BUTTON'
      end
      object ConvDirection: TsRadioGroup
        Left = 10
        Top = 128
        Width = 410
        Height = 37
        Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
        ParentBackground = False
        TabOrder = 2
        CaptionLayout = clTopCenter
        SkinData.SkinSection = 'GROUPBOX'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'DOS (CP866) -> Windows (CP1251)'
          'Windows (CP1251) -> DOS (CP866)')
      end
    end
  end
  inline DBGridFrame1: TDBGridFrame
    Left = 0
    Top = 66
    Width = 841
    Height = 434
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitTop = 66
    ExplicitWidth = 841
    ExplicitHeight = 434
    inherited DBGrid: TsDBGrid
      Width = 841
      Height = 434
      DataSource = DataModule1.DS_PS
      OnDblClick = DBGridFrame1DBGridDblClick
    end
  end
  object pnlTop: TsPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 66
    Align = alTop
    BorderWidth = 5
    TabOrder = 0
    SkinData.SkinSection = 'TOOLBAR'
    object btnDivider1: TsSpeedButton
      Tag = 3
      Left = 246
      Top = 6
      Width = 10
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Flat = True
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'DIVIDER'
      Reflected = True
      ExplicitLeft = 306
    end
    object btnViewPS: TsSpeedButton
      Tag = 2
      Left = 86
      Top = 6
      Width = 80
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Caption = #1055#1057
      Flat = True
      OnClick = btnViewPSClick
      ButtonStyle = tbsCheck
      SkinData.SkinSection = 'TOOLBUTTON'
      Reflected = True
    end
    object btnViewRES: TsSpeedButton
      Tag = 1
      Left = 6
      Top = 6
      Width = 80
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Down = True
      Caption = #1056#1069#1057
      Flat = True
      OnClick = btnViewRESClick
      ButtonStyle = tbsCheck
      SkinData.SkinSection = 'TOOLBUTTON'
      Reflected = True
    end
    object btnHelp: TsSpeedButton
      Left = 744
      Top = 6
      Width = 91
      Height = 54
      Align = alRight
      Caption = #1055#1086#1084#1086#1097#1100
      Flat = True
      OnClick = btnHelpClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 3
      Images = DataModule1.ImageList32
      Reflected = True
    end
    object btnViewLine: TsSpeedButton
      Tag = 3
      Left = 166
      Top = 6
      Width = 80
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Caption = #1051#1080#1085#1080#1080
      Flat = True
      OnClick = btnViewLineClick
      ButtonStyle = tbsCheck
      SkinData.SkinSection = 'TOOLBUTTON'
      Reflected = True
    end
    object btnAdd: TsSpeedButton
      Tag = 3
      Left = 256
      Top = 6
      Width = 100
      Height = 54
      Align = alLeft
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      OnClick = btnAddClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 0
      Images = DataModule1.ImageList32
      Reflected = True
    end
    object btnDel: TsSpeedButton
      Tag = 3
      Left = 356
      Top = 6
      Width = 100
      Height = 54
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = btnDelClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 2
      Images = DataModule1.ImageList32
      Reflected = True
      ExplicitLeft = 465
    end
    object btnEdit: TsSpeedButton
      Tag = 3
      Left = 456
      Top = 6
      Width = 100
      Height = 54
      Align = alLeft
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Flat = True
      OnClick = btnEditClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 1
      Images = DataModule1.ImageList32
      Reflected = True
      ExplicitLeft = 552
    end
    object sSpeedButton1: TsSpeedButton
      Tag = 3
      Left = 556
      Top = 6
      Width = 10
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Flat = True
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'DIVIDER'
      Reflected = True
      ExplicitLeft = 572
    end
    object btnExport: TsSpeedButton
      Tag = 3
      Left = 566
      Top = 6
      Width = 100
      Height = 54
      Align = alLeft
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Flat = True
      OnClick = btnExportClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 8
      Images = DataModule1.ImageList32
      Reflected = True
      ExplicitLeft = 562
    end
  end
  object xlProPackage1: TxlProPackage
    About = 
      'ProOptionPack'#8482' 1.2 (build 122-D7)   - Copyright '#169' Afalina Co., L' +
      'td.'
    Left = 400
    Top = 160
  end
  object sSkinProvider: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Verdana'
    AddedTitle.Font.Style = [fsItalic]
    AddedTitle.Text = '   '#169' YuRik, 2011'
    CaptionAlignment = taCenter
    SkinData.SkinSection = 'FORM'
    MakeSkinMenu = True
    ScreenSnap = True
    ShowAppIcon = False
    TitleButtons = <>
    Left = 312
    Top = 312
  end
  object xlReportPS: TxlReport
    DataExportMode = xdmCSV
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'template\ps.xlt'
    DataSources = <
      item
        DataSet = DataModule1.DBF_PS
        Alias = 'DBF_PS'
        Range = 'PSRange'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = True
    Params = <>
    Left = 48
    Top = 144
  end
  object xlReportRES: TxlReport
    DataExportMode = xdmCSV
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'template\res.xlt'
    DataSources = <
      item
        DataSet = DataModule1.DBF_RES
        Alias = 'DBF_RES'
        Range = 'RESRange'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = True
    Params = <>
    Left = 104
    Top = 144
  end
  object xlReportLINE: TxlReport
    DataExportMode = xdmCSV
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'template\line.xlt'
    DataSources = <
      item
        DataSet = DataModule1.DBF_LIN
        Alias = 'DBF_LIN'
        Range = 'LINRange'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = True
    Params = <>
    Left = 288
    Top = 136
  end
end
