object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 431
  Width = 679
  object SQLConnection: TSQLConnection
    ConnectionName = 'financeiro'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=financeiro'
      'User_Name=root'
      'Password=B8ys1935'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Left = 40
    Top = 16
  end
  object sdscaixa: TSQLDataSet
    CommandText = 'select * from caixa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 104
    object sdscaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sdscaixanumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object sdscaixavalor: TFMTBCDField
      FieldName = 'valor'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscaixatipo: TStringField
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdscaixadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Left = 152
    Top = 104
  end
  object cdscaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 248
    Top = 104
    object cdscaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscaixanumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscaixavalor: TFMTBCDField
      FieldName = 'valor'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscaixatipo: TStringField
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdscaixadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object sdscontas_pagar: TSQLDataSet
    CommandText = 'select * from contas_pagar'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 168
    object sdscontas_pagarid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sdscontas_pagarnumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object sdscontas_pagardecricao: TStringField
      FieldName = 'decricao'
      Size = 200
    end
    object sdscontas_pagarparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object sdscontas_pagarvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_pagarvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_pagarvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_pagardt_compra: TStringField
      FieldName = 'dt_compra'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscontas_pagardt_cadastro: TStringField
      FieldName = 'dt_cadastro'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscontas_pagardt_vencimento: TStringField
      FieldName = 'dt_vencimento'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscontas_pagardt_pagamento: TStringField
      FieldName = 'dt_pagamento'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscontas_pagarstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspcontas_pagar: TDataSetProvider
    DataSet = sdscontas_pagar
    Left = 152
    Top = 168
  end
  object cdscontas_pagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_pagar'
    Left = 248
    Top = 168
    object cdscontas_pagarid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscontas_pagarnumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object cdscontas_pagardecricao: TStringField
      FieldName = 'decricao'
      Size = 200
    end
    object cdscontas_pagarparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_pagarvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagardt_compra: TStringField
      FieldName = 'dt_compra'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_pagardt_cadastro: TStringField
      FieldName = 'dt_cadastro'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_pagardt_vencimento: TStringField
      FieldName = 'dt_vencimento'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_pagardt_pagamento: TStringField
      FieldName = 'dt_pagamento'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_pagarstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object sdscontas_receber: TSQLDataSet
    CommandText = 'select * from contas_receber'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 240
    object sdscontas_receberid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sdscontas_receberdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object sdscontas_receberdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object sdscontas_receberparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object sdscontas_recebervlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_recebervlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_recebervlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object sdscontas_receberdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object sdscontas_receberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object sdscontas_receberdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object sdscontas_receberstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdscontas_receberdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
  end
  object dspcontas_receber: TDataSetProvider
    DataSet = sdscontas_receber
    Left = 152
    Top = 240
  end
  object cdscontas_receber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_receber'
    Left = 248
    Top = 240
    object cdscontas_receberid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscontas_receberdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object cdscontas_receberdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscontas_receberparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_recebervlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_receberdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_receberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_receberdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_receberstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_receberdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
  end
  object sdsusuarios: TSQLDataSet
    CommandText = 'select * from usuarios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 304
    object sdsusuariosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sdsusuariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object sdsusuarioslogin: TStringField
      FieldName = 'login'
      Required = True
    end
    object sdsusuariossenha: TStringField
      FieldName = 'senha'
      Required = True
    end
    object sdsusuariosstartus: TStringField
      FieldName = 'startus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsusuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
  end
  object dspusuarios: TDataSetProvider
    DataSet = sdsusuarios
    Left = 152
    Top = 304
  end
  object cdsusuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 248
    Top = 304
    object cdsusuariosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsusuariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object cdsusuarioslogin: TStringField
      FieldName = 'login'
      Required = True
    end
    object cdsusuariossenha: TStringField
      FieldName = 'senha'
      Required = True
    end
    object cdsusuariosstartus: TStringField
      FieldName = 'startus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsusuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
  end
end
