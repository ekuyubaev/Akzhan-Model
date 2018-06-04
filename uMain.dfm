object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1081' '#1076#1072#1090#1095#1080#1082#1086#1074' - ['#1054#1057#1058#1040#1053#1054#1042#1051#1045#1053#1054']'
  ClientHeight = 640
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 854
    Height = 640
    ActivePage = tsParameters
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object tsParameters: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 846
        Height = 321
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1076#1072#1090#1095#1080#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 15
          Width = 842
          Height = 304
          Align = alClient
          AutoFitColWidths = True
          DataSource = dm.dsSensor
          DrawMemoText = True
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          ReadOnly = True
          SortLocal = True
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_datchik'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Visible = False
              Width = 150
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_object'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Visible = False
              Width = 150
            end
            item
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'Naimenovanie'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 150
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'Oboznachenie'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 100
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              DynProps = <>
              EditButtons = <>
              FieldName = 'Nomer'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1086#1084#1077#1088
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 70
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAX'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 70
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'MIN'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 70
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_sostoianie'
              Footers = <>
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Visible = False
              Width = 150
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Primechanie'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Title.TitleButton = True
              Width = 150
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 321
        Width = 846
        Height = 288
        Align = alClient
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1072#1090#1095#1080#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 165
          Height = 26
          Caption = #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1088#1080#1088#1072#1097#1077#1085#1080#1103' '#1087#1086#1082#1072#1079#1072#1085#1080#1103' (Mx)'
          WordWrap = True
        end
        object Label2: TLabel
          Left = 24
          Top = 96
          Width = 163
          Height = 26
          Caption = #1057#1088#1077#1076#1085#1077#1077' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1087#1088#1080#1088#1072#1097#1077#1085#1080#1103' '#1087#1086#1082#1072#1079#1072#1085#1080#1103' (Dx)'
          WordWrap = True
        end
        object Label3: TLabel
          Left = 256
          Top = 96
          Width = 70
          Height = 13
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        end
        object Label4: TLabel
          Left = 24
          Top = 160
          Width = 128
          Height = 13
          Caption = #1053#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1086#1082#1072#1079#1072#1085#1080#1077
        end
        object Label5: TLabel
          Left = 392
          Top = 32
          Width = 161
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' '#1074#1099#1074#1086#1076#1072
        end
        object DBEditEh1: TDBEditEh
          Left = 24
          Top = 59
          Width = 128
          Height = 21
          DataField = 'Mx'
          DataSource = dm.dsParameter
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = True
        end
        object DBEditEh2: TDBEditEh
          Left = 24
          Top = 125
          Width = 128
          Height = 21
          DataField = 'Dx'
          DataSource = dm.dsParameter
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = True
        end
        object DBMemoEh1: TDBMemoEh
          Left = 256
          Top = 112
          Width = 425
          Height = 81
          AutoSize = False
          DataField = 'Primechanie'
          DataSource = dm.dsParameter
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = True
        end
        object DBEditEh3: TDBEditEh
          Left = 24
          Top = 179
          Width = 128
          Height = 21
          DataField = 'Pokazanie'
          DataSource = dm.dsParameter
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = True
        end
        object DBCheckBoxEh1: TDBCheckBoxEh
          Left = 256
          Top = 32
          Width = 97
          Height = 17
          Caption = #1040#1050#1058#1048#1042#1045#1053
          DataField = 'Active'
          DataSource = dm.dsParameter
          DynProps = <>
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEditEh4: TDBEditEh
          Left = 392
          Top = 51
          Width = 161
          Height = 21
          Alignment = taCenter
          DataField = 'NomerEdit'
          DataSource = dm.dsParameter
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = True
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 256
    Top = 40
    object N1: TMenuItem
      Caption = #1052#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077
      object N3: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1082' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1084#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1103
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
  end
end
