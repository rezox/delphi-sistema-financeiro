program sistemasFinancas;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  Vcl.Themes,
  Vcl.Styles,
  ModConexao in 'ModConexao.pas' {DataModule1: TDataModule},
  ufrmCadastroBasico in 'view\ufrmCadastroBasico.pas' {frmcadastrobasico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
