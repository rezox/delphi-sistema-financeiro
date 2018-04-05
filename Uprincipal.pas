unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Buttons;

type
  Tfrmprincipal = class(TForm)
    Label1: TLabel;
    imgusuarios: TImage;
    imgreceber: TImage;
    imgpagar: TImage;
    imgcaixa: TImage;
    imgconsultarecebimento: TImage;
    imgconsultapagamento: TImage;
    Label2: TLabel;
    imgRelatoriosPagamento: TImage;
    Label3: TLabel;
    imgConfig: TImage;
    imgNavegador: TImage;
    imgRelatorioRecebimento: TImage;
    imgRelatorioCaixa: TImage;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses ufrmCadastroBasico;
procedure Tfrmprincipal.BitBtn1Click(Sender: TObject);
begin
frmcadastrobasico := TfrmCadastroBasico.Create(nil);
try
  frmCadastroBasico.ShowModal;
finally
  FreeAndNil(frmcadastrobasico);
end;
end;

procedure Tfrmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair?','Informe', MB_YESNO+MB_ICONQUESTION)= mrYes then
  Application.Terminate
  else
  Abort;
end;

procedure Tfrmprincipal.Timer1Timer(Sender: TObject);
begin

  StatusBar1.Panels.items[0].Text := DateTimeToStr(now);

end;

end.
