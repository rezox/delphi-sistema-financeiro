unit ModConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDataModule1 = class(TDataModule)
    SQLConnection: TSQLConnection;
    sdscaixa: TSQLDataSet;
    dspcaixa: TDataSetProvider;
    cdscaixa: TClientDataSet;
    sdscontas_pagar: TSQLDataSet;
    dspcontas_pagar: TDataSetProvider;
    cdscontas_pagar: TClientDataSet;
    sdscontas_receber: TSQLDataSet;
    dspcontas_receber: TDataSetProvider;
    cdscontas_receber: TClientDataSet;
    sdsusuarios: TSQLDataSet;
    dspusuarios: TDataSetProvider;
    cdsusuarios: TClientDataSet;
    cdscaixaid: TIntegerField;
    cdscaixanumero_doc: TStringField;
    cdscaixadescricao: TStringField;
    cdscaixavalor: TFMTBCDField;
    cdscaixatipo: TStringField;
    cdscaixadt_cadastro: TDateField;
    sdscaixaid: TIntegerField;
    sdscaixanumero_doc: TStringField;
    sdscaixadescricao: TStringField;
    sdscaixavalor: TFMTBCDField;
    sdscaixatipo: TStringField;
    sdscaixadt_cadastro: TDateField;
    cdscontas_pagarid: TIntegerField;
    cdscontas_pagarnumero_doc: TStringField;
    cdscontas_pagardecricao: TStringField;
    cdscontas_pagarparcela: TIntegerField;
    cdscontas_pagarvlr_parcela: TFMTBCDField;
    cdscontas_pagarvlr_compra: TFMTBCDField;
    cdscontas_pagarvlr_abatido: TFMTBCDField;
    cdscontas_pagardt_compra: TStringField;
    cdscontas_pagardt_cadastro: TStringField;
    cdscontas_pagardt_vencimento: TStringField;
    cdscontas_pagardt_pagamento: TStringField;
    cdscontas_pagarstatus: TStringField;
    sdscontas_pagarid: TIntegerField;
    sdscontas_pagarnumero_doc: TStringField;
    sdscontas_pagardecricao: TStringField;
    sdscontas_pagarparcela: TIntegerField;
    sdscontas_pagarvlr_parcela: TFMTBCDField;
    sdscontas_pagarvlr_compra: TFMTBCDField;
    sdscontas_pagarvlr_abatido: TFMTBCDField;
    sdscontas_pagardt_compra: TStringField;
    sdscontas_pagardt_cadastro: TStringField;
    sdscontas_pagardt_vencimento: TStringField;
    sdscontas_pagardt_pagamento: TStringField;
    sdscontas_pagarstatus: TStringField;
    cdscontas_receberid: TIntegerField;
    cdscontas_receberdocumento: TStringField;
    cdscontas_receberdescricao: TStringField;
    cdscontas_receberparcela: TIntegerField;
    cdscontas_recebervlr_parcela: TFMTBCDField;
    cdscontas_recebervlr_compra: TFMTBCDField;
    cdscontas_recebervlr_abatido: TFMTBCDField;
    cdscontas_receberdt_compra: TDateField;
    cdscontas_receberdt_vencimento: TDateField;
    cdscontas_receberdt_cadastro: TDateField;
    cdscontas_receberstatus: TStringField;
    cdscontas_receberdt_pagamento: TDateField;
    sdscontas_receberid: TIntegerField;
    sdscontas_receberdocumento: TStringField;
    sdscontas_receberdescricao: TStringField;
    sdscontas_receberparcela: TIntegerField;
    sdscontas_recebervlr_parcela: TFMTBCDField;
    sdscontas_recebervlr_compra: TFMTBCDField;
    sdscontas_recebervlr_abatido: TFMTBCDField;
    sdscontas_receberdt_compra: TDateField;
    sdscontas_receberdt_vencimento: TDateField;
    sdscontas_receberdt_cadastro: TDateField;
    sdscontas_receberstatus: TStringField;
    sdscontas_receberdt_pagamento: TDateField;
    cdsusuariosid: TIntegerField;
    cdsusuariosnome: TStringField;
    cdsusuarioslogin: TStringField;
    cdsusuariossenha: TStringField;
    cdsusuariosstartus: TStringField;
    cdsusuariosdt_cadastro: TDateField;
    sdsusuariosid: TIntegerField;
    sdsusuariosnome: TStringField;
    sdsusuarioslogin: TStringField;
    sdsusuariossenha: TStringField;
    sdsusuariosstartus: TStringField;
    sdsusuariosdt_cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
