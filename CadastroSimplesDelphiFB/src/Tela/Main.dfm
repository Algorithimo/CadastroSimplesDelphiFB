object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 662
  ClientWidth = 1153
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object GroupBoxPessoa: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 65
    Width = 1143
    Height = 532
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Caption = 'Pessoa'
    TabOrder = 0
    ExplicitWidth = 1139
    ExplicitHeight = 531
    object DBGridPessoa: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 1133
      Height = 200
      Align = alTop
      DataSource = DataService.dsPessoa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridPessoaDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PESSOA'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IND_TIPO_PESSOA'
          PickList.Strings = (
            'F'
            'J')
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_CPF_CNPJ'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM_PESSOA'
          Width = 400
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 226
      Width = 1133
      Height = 301
      Align = alClient
      Caption = 'Endere'#231'o'
      TabOrder = 1
      ExplicitWidth = 1129
      ExplicitHeight = 300
      object DBNavigatorEndereco: TDBNavigator
        AlignWithMargins = True
        Left = 7
        Top = 22
        Width = 1119
        Height = 40
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        DataSource = DataService.dsEndereco
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1115
      end
      object DBGridEndereco: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 70
        Width = 1123
        Height = 226
        Align = alClient
        DataSource = DataService.dsEndereco
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_ENDERECO'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NUM_CEP'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_ENDERECO'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_ENDERECO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_BAIRRO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_MUNICIPIO'
            Width = 200
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'COD_UF'
            PickList.Strings = (
              'RO'
              'AC'
              'AM'
              'RR'
              'PA'
              'AP'
              'TO'
              'MA'
              'PI'
              'CE'
              'RN'
              'PB'
              'PE'
              'AL'
              'SE'
              'BA'
              'MG'
              'ES'
              'RJ'
              'SP'
              'PR'
              'SC'
              'RS'
              'MS'
              'MT'
              'GO'
              'DF')
            Title.Alignment = taCenter
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TXT_COMPLEMENTO'
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object PanelPessoa: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 607
    Width = 1143
    Height = 50
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 606
    ExplicitWidth = 1139
    object BitBtnConfirm: TBitBtn
      AlignWithMargins = True
      Left = 1038
      Top = 5
      Width = 100
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Confirmar '
      Default = True
      TabOrder = 0
      ExplicitLeft = 1034
    end
    object BitBtnCadastro2: TBitBtn
      AlignWithMargins = True
      Left = 928
      Top = 5
      Width = 100
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Cadastro 2.0'
      Default = True
      TabOrder = 1
      OnClick = BitBtnCadastro2Click
      ExplicitLeft = 924
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1143
    Height = 50
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 1139
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 250
      Height = 50
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Nome da Pessoa'
      TabOrder = 0
      object EditFilter: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 240
        Height = 25
        Align = alClient
        TabOrder = 0
        OnChange = EditFilterChange
        ExplicitHeight = 23
      end
    end
    object DBNavigatorPessoa: TDBNavigator
      AlignWithMargins = True
      Left = 255
      Top = 5
      Width = 883
      Height = 40
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataSource = DataService.dsPessoa
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 879
    end
  end
end
