object AddEditOTKLForm: TAddEditOTKLForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
  ClientHeight = 528
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel: TsPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 528
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'TOOLBAR'
    DesignSize = (
      446
      528)
    object btnCancel: TsBitBtn
      Left = 338
      Top = 486
      Width = 100
      Height = 34
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      DoubleBuffered = True
      ModalResult = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnSave: TsBitBtn
      Left = 231
      Top = 486
      Width = 100
      Height = 34
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnSaveClick
      SkinData.SkinSection = 'BUTTON'
    end
    object sDBNavigator: TsDBNavigator
      Left = 11
      Top = 486
      Width = 91
      Height = 34
      Anchors = [akLeft, akBottom]
      FullRepaint = False
      TabOrder = 2
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
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 1
      Top = 1
      Width = 444
      Height = 475
      VertScrollBar.Tracking = True
      Align = alTop
      BevelEdges = []
      Color = cl3DLight
      HeaderAlignment = taCenter
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 3
      object CategoryPanel4: TCategoryPanel
        Top = 440
        Height = 30
        Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1085#1099#1077' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
        Color = cl3DLight
        Collapsed = True
        TabOrder = 0
        ExpandedHeight = 190
        object sLabelFX14: TsLabelFX
          Left = 14
          Top = 5
          Width = 22
          Height = 22
          Caption = #1053#1055
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX15: TsLabelFX
          Left = 14
          Top = 75
          Width = 81
          Height = 38
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077#13#10#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX16: TsLabelFX
          Left = 149
          Top = 4
          Width = 22
          Height = 22
          Caption = #1058#1055
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX17: TsLabelFX
          Left = 285
          Top = 5
          Width = 38
          Height = 22
          Caption = #1060#1077#1088#1084
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX18: TsLabelFX
          Left = 14
          Top = 33
          Width = 29
          Height = 22
          Caption = #1050#1069#1057
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX19: TsLabelFX
          Left = 149
          Top = 32
          Width = 31
          Height = 22
          Caption = #1040#1042#1052
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX20: TsLabelFX
          Left = 283
          Top = 24
          Width = 50
          Height = 38
          Caption = #1053#1077#1076'-'#1082#13#10'('#1082#1042#1090'*'#1095')'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX21: TsLabelFX
          Left = 14
          Top = 134
          Width = 40
          Height = 22
          Caption = '1 '#1082#1072#1090'.'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX22: TsLabelFX
          Left = 142
          Top = 127
          Width = 42
          Height = 38
          Caption = #1040#1042#1056#13#10#1091#1089#1087#1077#1096
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX23: TsLabelFX
          Left = 295
          Top = 134
          Width = 40
          Height = 22
          Caption = '2 '#1082#1072#1090'.'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edtPOTR_NP: TEdit
          Left = 42
          Top = 5
          Width = 91
          Height = 21
          TabOrder = 0
        end
        object edtPOTR_TP: TEdit
          Left = 186
          Top = 5
          Width = 91
          Height = 21
          TabOrder = 1
        end
        object edtPOTR_FERM: TEdit
          Left = 329
          Top = 5
          Width = 91
          Height = 21
          TabOrder = 2
        end
        object edtPOTR_ABP: TEdit
          Left = 186
          Top = 135
          Width = 91
          Height = 21
          TabOrder = 3
        end
        object edtPOTR_ABM: TEdit
          Left = 186
          Top = 33
          Width = 91
          Height = 21
          TabOrder = 4
        end
        object edtPOTR_NEDK: TEdit
          Left = 329
          Top = 33
          Width = 91
          Height = 21
          TabOrder = 5
        end
        object edtPOTR_KES: TEdit
          Left = 42
          Top = 33
          Width = 91
          Height = 21
          TabOrder = 6
        end
        object edtPOTR_1KAT: TEdit
          Left = 60
          Top = 137
          Width = 77
          Height = 21
          TabOrder = 7
        end
        object edtPOTR_2KAT: TEdit
          Left = 341
          Top = 135
          Width = 73
          Height = 21
          TabOrder = 8
        end
        object memOSN_POTR: TMemo
          Left = 101
          Top = 60
          Width = 290
          Height = 65
          ScrollBars = ssVertical
          TabOrder = 9
        end
      end
      object CategoryPanel3: TCategoryPanel
        Top = 410
        Height = 30
        Caption = #1055#1086#1074#1088#1077#1078#1076#1077#1085#1099#1077' '#1101#1083#1077#1084#1077#1085#1090#1099
        Color = cl3DLight
        Collapsed = True
        TabOrder = 1
        ExpandedHeight = 98
        object sLabelFX11: TsLabelFX
          Left = 14
          Top = 13
          Width = 56
          Height = 22
          Caption = #1069#1083#1077#1084#1077#1085#1090
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX13: TsLabelFX
          Left = 14
          Top = 42
          Width = 74
          Height = 22
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object cmbPOVRZ_ELMT: TsComboBox
          Left = 76
          Top = 14
          Width = 344
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 0
          Text = 'cmbPOVRZ_ELMT'
        end
        object edtPOVRZ_KOL: TEdit
          Left = 94
          Top = 42
          Width = 107
          Height = 21
          TabOrder = 1
        end
      end
      object CategoryPanel2: TCategoryPanel
        Top = 380
        Height = 30
        Caption = #1056#1072#1073#1086#1090#1072' '#1079#1072#1097#1080#1090#1099' '#1080' '#1072#1074#1090#1086#1084#1072#1090#1080#1082#1080
        Color = cl3DLight
        Collapsed = True
        TabOrder = 2
        ExpandedHeight = 96
        object sLabelFX10: TsLabelFX
          Left = 14
          Top = 5
          Width = 42
          Height = 22
          Caption = #1057#1093#1077#1084#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX12: TsLabelFX
          Left = 86
          Top = 41
          Width = 47
          Height = 22
          Caption = #1055#1086#1075#1086#1076#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object cmbZACH_SHEMA: TsComboBox
          Left = 62
          Top = 5
          Width = 111
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 0
          Text = 'cmbZACH_SHEMA'
        end
        object cmbAVT_1POLE: TsComboBox
          Left = 192
          Top = 5
          Width = 111
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 1
          Text = 'cmbAVT_1POLE'
        end
        object cmbAVT_2POLE: TsComboBox
          Left = 309
          Top = 5
          Width = 111
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 2
          Text = 'cmbAVT_2POLE'
        end
        object cmbAVT_POGODA: TsComboBox
          Left = 139
          Top = 41
          Width = 206
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 3
          Text = 'cmbAVT_POGODA'
        end
      end
      object CategoryPanel1: TCategoryPanel
        Top = 0
        Height = 380
        Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077' '#1080' '#1074#1082#1083#1102#1095#1077#1085#1080#1077' '#1083#1080#1085#1080#1081' '
        Color = cl3DLight
        TabOrder = 3
        object sLabelFX1: TsLabelFX
          Left = 14
          Top = 49
          Width = 22
          Height = 22
          Caption = #1055#1057
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX2: TsLabelFX
          Left = 14
          Top = 77
          Width = 82
          Height = 22
          Caption = #1053#1086#1084#1077#1088' '#1083#1080#1085#1080#1080
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX3: TsLabelFX
          Left = 14
          Top = 21
          Width = 35
          Height = 22
          Caption = #1044#1072#1090#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX4: TsLabelFX
          Left = 14
          Top = 104
          Width = 400
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = #1042#1088#1077#1084#1103' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX5: TsLabelFX
          Left = 14
          Top = 149
          Width = 400
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = #1042#1088#1077#1084#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX6: TsLabelFX
          Left = 14
          Top = 194
          Width = 400
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX7: TsLabelFX
          Left = 14
          Top = 248
          Width = 27
          Height = 22
          Caption = #1050#1086#1076
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX8: TsLabelFX
          Left = 14
          Top = 276
          Width = 56
          Height = 22
          Caption = #1055#1088#1080#1095#1080#1085#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabelFX9: TsLabelFX
          Left = -2
          Top = 306
          Width = 425
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1083#1080#1085#1080#1080' '#1085#1072' '#1073#1072#1083#1072#1085#1089#1077
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel1: TsLabel
          Left = 29
          Top = 134
          Width = 31
          Height = 13
          Caption = #1051#1080#1085#1080#1080
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel2: TsLabel
          Left = 213
          Top = 134
          Width = 85
          Height = 13
          Caption = #1058#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel3: TsLabel
          Left = 214
          Top = 179
          Width = 85
          Height = 13
          Caption = #1058#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel4: TsLabel
          Left = 213
          Top = 224
          Width = 85
          Height = 13
          Caption = #1058#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel5: TsLabel
          Left = 29
          Top = 175
          Width = 31
          Height = 13
          Caption = #1051#1080#1085#1080#1080
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel6: TsLabel
          Left = 29
          Top = 221
          Width = 31
          Height = 13
          Caption = #1051#1080#1085#1080#1080
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object cmbListLine: TsDBLookupComboBox
          Left = 112
          Top = 77
          Width = 302
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object cmbListPS: TsDBLookupComboBox
          Left = 112
          Top = 49
          Width = 302
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = cmbListPSClick
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
        object cmbOTLKBALANS: TsComboBox
          Left = 66
          Top = 329
          Width = 302
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 2
          Text = 'cmbOTLKBALANS'
        end
        object cmbPrichina: TsComboBox
          Left = 118
          Top = 278
          Width = 302
          Height = 22
          Alignment = taLeftJustify
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
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 3
          Text = 'cmbPrichina'
        end
        object edtDate: TsDateEdit
          Left = 112
          Top = 19
          Width = 302
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Color = clWhite
          EditMask = '!99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091' '#1074#1074#1086#1076#1072' '#1083#1080#1085#1080#1080
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          DefaultToday = True
          DialogTitle = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091
          YearDigits = dyDefault
        end
        object edtKOD: TsSpinEdit
          Left = 112
          Top = 248
          Width = 302
          Height = 21
          Alignment = taRightJustify
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '5'
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
          MaxValue = 100
          MinValue = 0
          Value = 5
        end
        object edtPROD_OL: TsMaskEdit
          Left = 66
          Top = 218
          Width = 107
          Height = 21
          TabStop = False
          Color = clWhite
          EditMask = '!90:90;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = '  :  '
          BoundLabel.Caption = #1083#1080#1085#1080#1080' '
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
        object edtPROD_OT: TsMaskEdit
          Left = 304
          Top = 218
          Width = 110
          Height = 21
          TabStop = False
          Color = clWhite
          EditMask = '!90:90;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = '  :  '
          BoundLabel.Caption = #1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
        object edtTIME_OL: TsMaskEdit
          Left = 66
          Top = 129
          Width = 97
          Height = 21
          Color = clWhite
          EditMask = '!99:99;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 8
          Text = '  :  '
          BoundLabel.Caption = #1083#1080#1085#1080#1080' '
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
        object edtTIME_OT: TsMaskEdit
          Left = 304
          Top = 129
          Width = 104
          Height = 21
          Color = clWhite
          EditMask = '!99:99;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 9
          Text = '  :  '
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
        object edtTIME_VL: TsMaskEdit
          Left = 66
          Top = 173
          Width = 103
          Height = 21
          Color = clWhite
          EditMask = '!99:99;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 10
          Text = '  :  '
          BoundLabel.Caption = #1083#1080#1085#1080#1080' '
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
        object edtTIME_VT: TsMaskEdit
          Left = 305
          Top = 173
          Width = 99
          Height = 21
          Color = clWhite
          EditMask = '!99:99;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 11
          Text = '  :  '
          BoundLabel.Caption = #1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
        end
      end
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
    Left = 8
    Top = 40
  end
end
