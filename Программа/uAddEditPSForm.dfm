object AddEditPSForm: TAddEditPSForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  ClientHeight = 172
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ScreenSnap = True
  ShowHint = True
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel: TsPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 172
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'TOOLBAR'
    DesignSize = (
      330
      172)
    object sGroupBox1: TsGroupBox
      Left = 7
      Top = 5
      Width = 315
      Height = 115
      TabOrder = 0
      SkinData.SkinSection = 'BAR'
      object sLabelFX1: TsLabelFX
        Left = 14
        Top = 49
        Width = 45
        Height = 20
        Caption = #1050#1086#1076' '#1055#1057
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16777191
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object sLabelFX2: TsLabelFX
        Left = 14
        Top = 79
        Width = 60
        Height = 20
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16777191
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object sLabelFX3: TsLabelFX
        Left = 14
        Top = 21
        Width = 27
        Height = 20
        Caption = #1056#1069#1057
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16777191
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object edtNAME: TsEdit
        Left = 88
        Top = 79
        Width = 217
        Height = 24
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object edtKODPS: TsEdit
        Left = 88
        Top = 49
        Width = 217
        Height = 24
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1076' '#1055#1057
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object cmbListRes: TsDBLookupComboBox
        Left = 88
        Top = 21
        Width = 217
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object btnSave: TsBitBtn
      Left = 112
      Top = 129
      Width = 100
      Height = 34
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSaveClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnCancel: TsBitBtn
      Left = 222
      Top = 129
      Width = 100
      Height = 34
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
      Anchors = [akLeft, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      DoubleBuffered = True
      ModalResult = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
    object sDBNavigator: TsDBNavigator
      Left = 7
      Top = 129
      Width = 91
      Height = 34
      FullRepaint = False
      TabOrder = 3
      TabStop = True
      OnClick = sDBNavigatorClick
      SkinData.SkinSection = 'TOOLBAR'
      VisibleButtons = [nbPrior, nbNext]
      Hints.Strings = (
        'First record'
        #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
        'Last record'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
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
    Left = 280
    Top = 312
  end
end
