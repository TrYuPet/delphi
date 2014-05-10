object ViewForm: TViewForm
  Left = 0
  Top = 0
  Caption = #1046#1091#1088#1085#1072#1083' '#1072#1074#1072#1088#1080#1081#1085#1099#1093' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1081
  ClientHeight = 339
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TsPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 66
    Align = alTop
    BorderWidth = 5
    TabOrder = 0
    SkinData.SkinSection = 'TOOLBAR'
    ExplicitWidth = 1189
    object btnDivider1: TsSpeedButton
      Tag = 3
      Left = 306
      Top = 6
      Width = 10
      Height = 54
      Align = alLeft
      GroupIndex = 1
      Flat = True
      ButtonStyle = tbsDivider
      SkinData.SkinSection = 'DIVIDER'
      Reflected = True
      ExplicitLeft = 334
    end
    object btnHelp: TsSpeedButton
      Left = 916
      Top = 6
      Width = 100
      Height = 54
      Align = alRight
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Flat = True
      OnClick = btnHelpClick
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 7
      Images = DataModule1.ImageList32
      Reflected = True
      ExplicitLeft = 620
    end
    object btnAdd: TsSpeedButton
      Tag = 3
      Left = 6
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
      ExplicitLeft = 256
    end
    object btnDel: TsSpeedButton
      Tag = 3
      Left = 106
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
      Left = 206
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
    object sSpeedButton2: TsSpeedButton
      Tag = 3
      Left = 316
      Top = 6
      Width = 100
      Height = 54
      Align = alLeft
      Caption = #1054#1090#1095#1077#1090
      Flat = True
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'TOOLBUTTON'
      ImageIndex = 4
      Images = DataModule1.ImageList32
      Reflected = True
      ExplicitLeft = 422
    end
  end
  inline DBGridFrame1: TDBGridFrame
    Left = 0
    Top = 66
    Width = 1022
    Height = 273
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitTop = 66
    ExplicitWidth = 1189
    ExplicitHeight = 210
    inherited DBGrid: TsDBGrid
      Width = 1022
      Height = 273
      DataSource = DataModule1.DS_JUR
      OnDblClick = DBGridFrame1DBGridDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MESJAC'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_RES'
          Title.Caption = #1050#1086#1076#13#10#1056#1069#1057
          Width = 34
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NAME_PS'
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'K_LIN'
          Title.Caption = #1060#1080#1076#1077#1088
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_OTKL'
          Title.Caption = #1044#1072#1090#1072#13#10' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRICHINA'
          Title.Caption = #1055#1088#1080#1095#1080#1085#1072
          Width = 217
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KOD'
          Title.Caption = #1050#1086#1076
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIME_OL'
          Title.Caption = #1042#1088#1077#1084#1103#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103#13#10#1083#1080#1085#1080#1080
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIME_OT'
          Title.Caption = #1042#1088#1077#1084#1103#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103#13#10#1090#1088'-'#1088#1072
          Width = 83
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIME_VL'
          Title.Caption = #1042#1088#1077#1084#1103#13#10' '#1074#1082#1083#1102#1095#1077#1085#1080#1103#13#10' '#1083#1080#1085#1080#1080
          Width = 87
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIME_VT'
          Title.Caption = #1042#1088#1077#1084#1103#13#10' '#1074#1082#1083#1102#1095#1077#1085#1080#1103#13#10' '#1090#1088'-'#1088#1072
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PROD_OL'
          Title.Caption = #1055#1088#1086#1076#1086#1083'.'#13#10' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103#13#10' '#1083#1080#1085#1080#1080
          Width = 87
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PROD_OT'
          Title.Caption = #1055#1088#1086#1076#1086#1083'.'#13#10' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103#13#10' '#1090#1088'-'#1088#1072
          Width = 86
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OTLKBALANS'
          Title.Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077#13#10#1085#1072#13#10#1073#1072#1083#1072#1085#1089#1077
          Width = 214
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AVT_POGODA'
          Title.Caption = #1055#1086#1075#1086#1076#1072
          Width = 169
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'POVRZ_ELMT'
          Title.Caption = #1055#1086#1074#1088#1077#1078#1076#1077#1085#1085#1099#1077#13#10' '#1101#1083#1077#1084#1077#1085#1090#1099
          Width = 176
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'POVRZ_KOL'
          Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086#13#10#1087#1086#1074#1088#1077#1078#1076#1077#1085#1085#1099#1093
          Width = 94
          Visible = True
        end>
    end
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
    Left = 392
    Top = 152
  end
  object xlReport: TxlReport
    DataExportMode = xdmCSV
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'template\JUR.xlt'
    DataSources = <
      item
        DataSet = DataModule1.DBF_JUR
        Alias = 'DBF_JUR'
        Range = 'JURRange'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = True
    Params = <>
    Left = 480
    Top = 152
  end
  object xlProPackage: TxlProPackage
    About = 
      'ProOptionPack'#8482' 1.2 (build 122-D7)   - Copyright '#169' Afalina Co., L' +
      'td.'
    Left = 552
    Top = 144
  end
end
