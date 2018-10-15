unit unFrmNaoCobrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Controller.ConclusaoFaturamento;

type
  TfrmNaoCobrar = class(TForm)
    pnDadosNaoCobranca: TPanel;
    pnBotoes: TPanel;
    BtnConcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    Label1: TLabel;
    CbxMotivo: TComboBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnConcluirClick(Sender: TObject);
  private
    FControllerConclusaoFaturamento: TControllerConclusaoFaturamento;
  public
    FAtendimento: integer;
    bConcluiu: boolean;
  end;

var
  frmNaoCobrar: TfrmNaoCobrar;

implementation

{$R *.dfm}

procedure TfrmNaoCobrar.BtnCancelarClick(Sender: TObject);
begin
  bConcluiu := False;
  Self.Close;
end;

procedure TfrmNaoCobrar.BtnConcluirClick(Sender: TObject);
begin
  if CbxMotivo.ItemIndex > 0 then
  begin
    if FControllerConclusaoFaturamento.AlterarStatusAtendimento(FAtendimento,CbxMotivo.ItemIndex) then
    begin
      bConcluiu := True;
      Self.Close;
    end
  end
  else
  begin
    MessageDlg('Motivo para N�o Cobran�a n�o informado, por favor informe!',mtWarning,[mbOk],0);
    CbxMotivo.SetFocus;
  end;
end;

procedure TfrmNaoCobrar.FormCreate(Sender: TObject);
begin
  FControllerConclusaoFaturamento := TControllerConclusaoFaturamento.Create;
  bConcluiu := False;
end;

procedure TfrmNaoCobrar.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FControllerConclusaoFaturamento);
end;

procedure TfrmNaoCobrar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;
end;

end.
