unit unFrmAtendimentosFatura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Controller.AtendimentosFatura,
  unConstantes, unFrmPacientes, u_FrmBase;

type
  TfrmAtendimentoFatura = class(TForm)
    pnConsultaAtendimento: TPanel;
    pnAtendimentos: TPanel;
    pnBotoes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    mskInicial: TMaskEdit;
    mskFinal: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    lblPaciente: TLabel;
    SpdBtnPaciente: TSpeedButton;
    GrdAtendimentos: TDBGrid;
    BtnReabrir: TBitBtn;
    BtnSair: TBitBtn;
    BtnConsultar: TBitBtn;
    lblTotalFatura: TLabel;
    edtAtendimento: TEdit;
    edtIDPaciente: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnReabrirClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure edtPacienteExit(Sender: TObject);
    procedure SpdBtnPacienteClick(Sender: TObject);
    procedure edtIDPacienteExit(Sender: TObject);
  private
    FController: TControllerAtendimentosFatura;
    procedure CalcularTotalFatura;
  public
    vFatura: integer;
  end;

var
  frmAtendimentoFatura: TfrmAtendimentoFatura;

implementation

{$R *.dfm}

procedure TfrmAtendimentoFatura.BtnConsultarClick(Sender: TObject);
begin
  if (edtAtendimento.Text <> trim('')) and (edtAtendimento.Text <> trim('0')) then
    FController.BuscarAtendimentos(vFatura,StrToInt(edtAtendimento.Text))
  else
  if (edtIDPaciente.Text <> trim('')) and (edtIDPaciente.Text <> trim('0')) then
    FController.BuscarAtendimentos(vFatura,StrToInt(edtIDPaciente.Text),
      StrToDate(mskInicial.Text),StrToDate(mskFinal.Text))
  else
  FController.BuscarAtendimentos(vFatura,StrToDate(mskInicial.Text),StrToDate(mskFinal.Text));

  CalcularTotalFatura;
end;

procedure TfrmAtendimentoFatura.BtnReabrirClick(Sender: TObject);
begin
  if FController.ReabrirAtendimento(FController.Registros.FieldByName('id_atendimento').AsInteger) then
    FController.BuscarAtendimentos(vFatura,StrToDate(mskInicial.Text),StrToDate(mskFinal.Text));
end;

procedure TfrmAtendimentoFatura.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAtendimentoFatura.CalcularTotalFatura;
var
  vTotalGeral: Currency;
begin
  vTotalGeral := 0;
  FController.Registros.First;
  while not(FController.Registros.Eof) do
  begin
    vTotalGeral := FController.Registros.FieldByName('valor_total').AsFloat + vTotalGeral;
    FController.Registros.Next;
  end;

  lblTotalFatura.Caption := 'Total Geral: '+ FloatToStr(vTotalGeral);
end;

procedure TfrmAtendimentoFatura.edtIDPacienteExit(Sender: TObject);
var
  vValue: integer;
begin
  if TryStrToInt(edtIDPaciente.Text,vValue) then
    lblPaciente.Caption := FController.GetNomePaciente(vValue,iINCLUINDO);
end;

procedure TfrmAtendimentoFatura.edtPacienteExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtIDPaciente.Text,vValue) then
    lblPaciente.Caption := FController.GetNomePaciente(vValue,iINCLUINDO);
end;

procedure TfrmAtendimentoFatura.FormCreate(Sender: TObject);
begin
  FController := TControllerAtendimentosFatura.Create;
  GrdAtendimentos.DataSource := FController.Ds;

end;

procedure TfrmAtendimentoFatura.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TfrmAtendimentoFatura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmAtendimentoFatura.FormShow(Sender: TObject);
begin
  FController.BuscarAtendimentos(vFatura,StrToDate(mskInicial.Text),StrToDate(mskFinal.Text));
  CalcularTotalFatura;
end;

procedure TfrmAtendimentoFatura.SpdBtnPacienteClick(Sender: TObject);
var
  vValue: integer;
begin
  try
    frmPacientes := TfrmPacientes.Create(Self,toConsulta);
    frmPacientes.ShowModal;

    edtIDPaciente.Text := IntToStr(frmPacientes.FValueFieldKey);

    if TryStrToInt(edtIDPaciente.Text,vValue) then
      lblPaciente.Caption := FController.GetNomePaciente(frmPacientes.FValueFieldKey,iINCLUINDO);
  finally
    FreeAndNil(frmPacientes);
  end;
end;

end.
