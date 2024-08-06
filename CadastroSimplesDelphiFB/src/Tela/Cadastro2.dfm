object FormCadastro2: TFormCadastro2
  Left = 0
  Top = 0
  Caption = 'Cadastro 2.0'
  ClientHeight = 562
  ClientWidth = 788
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object CardPanel: TCardPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 562
    Align = alClient
    ActiveCard = Card_CadastroPessoa
    BevelOuter = bvNone
    Caption = 'CardPanel'
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 784
    ExplicitHeight = 561
    object Card_CadastroPessoa: TCard
      Left = 0
      Top = 0
      Width = 788
      Height = 562
      Caption = 'Card_CadastroPessoa'
      CardIndex = 0
      TabOrder = 0
      ExplicitWidth = 784
      ExplicitHeight = 561
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 78
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 784
        object lbl_CadastroPessoa: TLabel
          Left = 103
          Top = 1
          Width = 102
          Height = 76
          Align = alLeft
          Caption = 'Cadastro de Pessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object Panel9: TPanel
          Left = 488
          Top = 1
          Width = 299
          Height = 76
          Align = alRight
          BevelOuter = bvNone
          Caption = 'Panel9'
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 484
          object BitBtnCancelar: TBitBtn
            Left = 95
            Top = 0
            Width = 102
            Height = 76
            Align = alRight
            Cancel = True
            Caption = 'Cancelar'
            Constraints.MinHeight = 40
            Constraints.MinWidth = 80
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtnCancelarClick
          end
          object BitBtnSalvar: TBitBtn
            Left = 197
            Top = 0
            Width = 102
            Height = 76
            Align = alRight
            Cancel = True
            Caption = 'Salvar'
            Constraints.MinHeight = 40
            Constraints.MinWidth = 80
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtnSalvarClick
          end
        end
        object BitBtnVoltar: TBitBtn
          Left = 1
          Top = 1
          Width = 102
          Height = 76
          Align = alLeft
          Cancel = True
          Caption = 'Voltar'
          Constraints.MinHeight = 40
          Constraints.MinWidth = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtnVoltarClick
        end
      end
      object Panel1: TPanel
        Left = 336
        Top = 438
        Width = 784
        Height = 171
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 1
        Visible = False
        object Button1: TButton
          Left = 464
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 656
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 1
        end
        object Button3: TButton
          Left = 312
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 2
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 78
        Width = 788
        Height = 101
        Align = alTop
        ShowCaption = False
        TabOrder = 2
        ExplicitWidth = 784
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 200
          Height = 99
          Caption = 'Panel8'
          ShowCaption = False
          TabOrder = 0
          object lbl_codigo: TLabel
            Left = 1
            Top = 1
            Width = 198
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'C'#243'digo'
            ExplicitWidth = 39
          end
          object DBEditCodigo: TDBEdit
            Left = 1
            Top = 16
            Width = 198
            Height = 82
            Align = alClient
            DataField = 'ID_PESSOA'
            DataSource = DataService.dsPessoa
            Enabled = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel10: TPanel
          Left = 206
          Top = 1
          Width = 185
          Height = 99
          Caption = 'Panel10'
          ShowCaption = False
          TabOrder = 1
          object lbl_CPFeCPNJ: TLabel
            Left = 1
            Top = 1
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'CPF/CNPJ'
            ExplicitWidth = 53
          end
          object DBEditCPFeCPNJ: TDBEdit
            Left = 1
            Top = 16
            Width = 183
            Height = 82
            Align = alClient
            DataField = 'NUM_CPF_CNPJ'
            DataSource = DataService.dsPessoa
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel11: TPanel
          Left = 408
          Top = 0
          Width = 49
          Height = 97
          Caption = 'Panel11'
          ShowCaption = False
          TabOrder = 2
          object lbl_TipoPessoa: TLabel
            Left = 1
            Top = 1
            Width = 47
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'Tipo'
            FocusControl = DBEditTipoPessoa
            ExplicitWidth = 23
          end
          object DBEditTipoPessoa: TDBEdit
            Left = 1
            Top = 16
            Width = 47
            Height = 80
            Align = alClient
            DataField = 'IND_TIPO_PESSOA'
            DataSource = DataService.dsPessoa
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel12: TPanel
          Left = 560
          Top = 6
          Width = 185
          Height = 97
          Caption = 'Panel12'
          ShowCaption = False
          TabOrder = 3
          object lbl_NomePessoa: TLabel
            Left = 1
            Top = 1
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Nome da Pessoa'
            FocusControl = DBEditNomePessoa
            ExplicitWidth = 88
          end
          object DBEditNomePessoa: TDBEdit
            Left = 1
            Top = 16
            Width = 183
            Height = 80
            Align = alClient
            DataField = 'NOM_PESSOA'
            DataSource = DataService.dsPessoa
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
      end
      object cxGridteste: TcxGrid
        Left = -31
        Top = 412
        Width = 432
        Height = 211
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        LookAndFeel.NativeStyle = True
        LookAndFeel.ScrollbarMode = sbmDefault
        LookAndFeel.SkinName = 'Office2007Blue'
        object cxGridtesteDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGridtesteDBTableView1CustomDrawCell
          DataController.DataSource = DataService.dsPessoa
          DataController.KeyFieldNames = 'ID_PESSOA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.GridLines = glVertical
          RowLayout.OnCustomDrawRowSelection = cxGridtesteDBTableView1RowLayoutCustomDrawRowSelection
          Styles.UseOddEvenStyles = bTrue
          Styles.Selection = cxStyle1
          object cxGridtesteDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'ID_PESSOA'
            HeaderAlignmentHorz = taCenter
            Width = 123
          end
          object cxGridtesteDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'IND_TIPO_PESSOA'
            HeaderGlyphAlignmentHorz = taCenter
            Width = 64
          end
          object cxGridtesteDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'NOM_PESSOA'
            Width = 425
          end
          object cxGridtesteDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_CPF_CNPJ'
            Width = 166
          end
        end
        object cxGridtesteLevel1: TcxGridLevel
          GridView = cxGridtesteDBTableView1
          MaxDetailHeight = 50
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 179
        Width = 788
        Height = 101
        Align = alTop
        ShowCaption = False
        TabOrder = 4
        ExplicitWidth = 784
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 200
          Height = 99
          Caption = 'Panel8'
          ShowCaption = False
          TabOrder = 0
          object lbl_CEP: TLabel
            Left = 1
            Top = 1
            Width = 198
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'CEP'
            ExplicitWidth = 21
          end
          object DBEditCEP: TDBEdit
            Left = 1
            Top = 16
            Width = 198
            Height = 82
            Align = alClient
            DataField = 'NUM_CEP'
            DataSource = DataService.dsEndereco
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel15: TPanel
          Left = 206
          Top = 1
          Width = 185
          Height = 99
          Caption = 'Panel10'
          ShowCaption = False
          TabOrder = 1
          object lbl_NomEndereco: TLabel
            Left = 1
            Top = 1
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Endere'#231'o'
            ExplicitWidth = 49
          end
          object DBEditNomEndereco: TDBEdit
            Left = 1
            Top = 16
            Width = 183
            Height = 82
            Align = alClient
            DataField = 'NOM_ENDERECO'
            DataSource = DataService.dsEndereco
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel16: TPanel
          Left = 612
          Top = 6
          Width = 49
          Height = 97
          Caption = 'Panel11'
          ShowCaption = False
          TabOrder = 2
          object lbl_CodUF: TLabel
            Left = 1
            Top = 1
            Width = 47
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'UF'
            ExplicitWidth = 14
          end
          object DBEditUF: TDBEdit
            Left = 1
            Top = 16
            Width = 47
            Height = 80
            Align = alClient
            DataField = 'COD_UF'
            DataSource = DataService.dsEndereco
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel17: TPanel
          Left = 397
          Top = 2
          Width = 185
          Height = 97
          Caption = 'Panel12'
          ShowCaption = False
          TabOrder = 3
          object lbl_NomBairro: TLabel
            Left = 1
            Top = 1
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Bairro'
            ExplicitWidth = 31
          end
          object DBEditNomBairro: TDBEdit
            Left = 1
            Top = 16
            Width = 183
            Height = 80
            Align = alClient
            DataField = 'NOM_BAIRRO'
            DataSource = DataService.dsEndereco
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
      end
    end
    object Card_tbPessoa: TCard
      Left = 0
      Top = 0
      Width = 788
      Height = 562
      Caption = 'Card_tbPessoa'
      CardIndex = 1
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 78
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object lbl_tbPessoa: TLabel
          Left = 0
          Top = 0
          Width = 94
          Height = 21
          Align = alLeft
          Caption = 'Tabela Pessoa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Panel2: TPanel
          Left = 457
          Top = 0
          Width = 331
          Height = 78
          Align = alRight
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          ExplicitLeft = 456
          ExplicitTop = 1
          ExplicitHeight = 65
          object BitBtnEditar: TBitBtn
            Left = 125
            Top = 0
            Width = 102
            Height = 78
            Align = alRight
            Cancel = True
            Caption = 'Editar'
            Constraints.MinHeight = 40
            Constraints.MinWidth = 80
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtnEditarClick
          end
          object BitBtnExcluir: TBitBtn
            Left = 227
            Top = 0
            Width = 104
            Height = 78
            Align = alRight
            Anchors = [akRight]
            BiDiMode = bdLeftToRight
            Cancel = True
            Caption = 'Excluir'
            Constraints.MinHeight = 40
            Constraints.MinWidth = 80
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtnExcluirClick
          end
          object BitBtnNovo: TBitBtn
            Left = 45
            Top = 0
            Width = 80
            Height = 78
            Align = alRight
            Cancel = True
            Caption = 'Novo'
            Constraints.MinHeight = 40
            Constraints.MinWidth = 80
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtnNovoClick
            ExplicitLeft = -15
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 78
        Width = 788
        Height = 67
        Align = alTop
        TabOrder = 1
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 185
          Height = 65
          Align = alLeft
          BevelKind = bkFlat
          BevelOuter = bvNone
          BevelWidth = 2
          TabOrder = 0
          object SearchBox: TSearchBox
            AlignWithMargins = True
            Left = 8
            Top = 4
            Width = 165
            Height = 51
            Margins.Left = 8
            Margins.Top = 4
            Margins.Right = 8
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'Procurar pessoa...'
            OnChange = SearchBoxChange
            OnEnter = SearchBoxEnter
            OnExit = SearchBoxExit
          end
          object linePanelSearchBox: TPanel
            Left = 0
            Top = 59
            Width = 181
            Height = 2
            Align = alBottom
            BevelOuter = bvNone
            Color = clLime
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 65407
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object DBGridPessoa: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 148
        Width = 782
        Height = 134
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = True
        DataSource = DataService.dsPessoa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clGray
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
            Width = 120
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_CPF_CNPJ'
            Title.Alignment = taCenter
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_PESSOA'
            Width = 400
            Visible = True
          end>
      end
      object DBGridEndereco: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 288
        Width = 782
        Height = 271
        Align = alBottom
        BorderStyle = bsNone
        DataSource = DataService.dsEndereco
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEnderecoDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_ENDERECO'
            Title.Alignment = taCenter
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_CEP'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_ENDERECO'
            Title.Alignment = taCenter
            Width = 50
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
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_MUNICIPIO'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
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
            Width = 40
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
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBlue
      TextColor = clWhite
    end
  end
end
