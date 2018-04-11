unit ufrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls;

type
  Tfrmcadastrobasico = class(TForm)
    dsTabela: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    tbscadastro: TTabSheet;
    tbsPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    ActionManagerCadastro: TActionManager;
    ImageListCadastro: TImageList;
    actInserir: TAction;
    PageControl1: TPageControl;
    actEditar: TAction;
    actexcluir: TAction;
    actsalvar: TAction;
    actcancelar: TAction;
    actpesquisar: TAction;
    actimprimir: TAction;
    actfechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actInserirExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure actpesquisarExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrobasico: Tfrmcadastrobasico;

implementation

{$R *.dfm}

procedure Tfrmcadastrobasico.actcancelarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actEditarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actexcluirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actfecharExecute(Sender: TObject);
begin
close;
end;

procedure Tfrmcadastrobasico.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actInserirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actpesquisarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.actsalvarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcadastrobasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  close;
  if key = #13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

end.
