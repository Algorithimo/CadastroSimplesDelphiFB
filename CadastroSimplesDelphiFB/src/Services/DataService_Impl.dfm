object DataService: TDataService
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=E:\Programacao\VisualTecProva\DATABASE\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 64
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 56
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 64
    Top = 112
  end
  object qryPessoa: TFDQuery
    Active = True
    BeforePost = qryPessoaBeforePost
    IndexFieldNames = 'NOM_PESSOA'
    Connection = FDConnection
    SQL.Strings = (
      'select id_pessoa, ind_tipo_pessoa, num_cpf_cnpj, nom_pessoa'
      'from tb_pessoa')
    Left = 296
    object qryPessoaID_PESSOA: TLargeintField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoaIND_TIPO_PESSOA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'IND_TIPO_PESSOA'
      Origin = 'IND_TIPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qryPessoaNUM_CPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'NUM_CPF_CNPJ'
      Origin = 'NUM_CPF_CNPJ'
    end
    object qryPessoaNOM_PESSOA: TStringField
      DisplayLabel = 'Nome da Pessoa'
      FieldName = 'NOM_PESSOA'
      Origin = 'NOM_PESSOA'
      Size = 100
    end
  end
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = qryPessoa
    Left = 296
    Top = 56
  end
  object qryEndereco: TFDQuery
    MasterSource = dsPessoa
    MasterFields = 'ID_PESSOA'
    DetailFields = 'ID_PESSOA'
    Connection = FDConnection
    SQL.Strings = (
      
        'select id_endereco, id_pessoa, num_cep, num_endereco, nom_endere' +
        'co, nom_bairro, nom_municipio, cod_uf, txt_complemento'
      'from tb_endereco'
      'where   id_pessoa = :id_pessoa')
    Left = 296
    Top = 112
    ParamData = <
      item
        Name = 'ID_PESSOA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object qryEnderecoID_ENDERECO: TLargeintField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ENDERECO'
      Origin = 'ID_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEnderecoID_PESSOA: TLargeintField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
    end
    object qryEnderecoNUM_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'NUM_CEP'
      Origin = 'NUM_CEP'
      Size = 15
    end
    object qryEnderecoNUM_ENDERECO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUM_ENDERECO'
      Origin = 'NUM_ENDERECO'
    end
    object qryEnderecoNOM_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'NOM_ENDERECO'
      Origin = 'NOM_ENDERECO'
      Size = 100
    end
    object qryEnderecoNOM_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NOM_BAIRRO'
      Origin = 'NOM_BAIRRO'
      Size = 100
    end
    object qryEnderecoNOM_MUNICIPIO: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'NOM_MUNICIPIO'
      Origin = 'NOM_MUNICIPIO'
      Size = 100
    end
    object qryEnderecoCOD_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
      FixedChar = True
      Size = 2
    end
    object qryEnderecoTXT_COMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'TXT_COMPLEMENTO'
      Origin = 'TXT_COMPLEMENTO'
      Size = 100
    end
  end
  object dsEndereco: TDataSource
    AutoEdit = False
    DataSet = qryEndereco
    Left = 296
    Top = 168
  end
end
