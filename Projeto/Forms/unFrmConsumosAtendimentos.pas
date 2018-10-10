unit unFrmConsumosAtendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.AppEvnts, Controller.ConsumosAtendimento,
  Vcl.Mask, unConstantes, unFrmMatMed, u_FrmBase, unFrmProcedimentos;

type
  TfrmConsumosAtendimentos = class(TForm)
    PnConsulta: TPanel;
    Label1: TLabel;
    edtAtendimento: TEdit;
    lblNomePaciente: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    lblTipoAtendimento: TLabel;
    PnTituloMatMed: TPanel;
    PnTituloServicos: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    PnItem: TPanel;
    Label5: TLabel;
    lblMatMed: TLabel;
    Label6: TLabel;
    edtIDMatMed: TEdit;
    BtnBuscaMatMed: TBitBtn;
    edtQuantidade: TEdit;
    BtnIncluirMatMed: TBitBtn;
    PnMatMeds: TPanel;
    PnServico: TPanel;
    BtnIncluirTaxaServico: TBitBtn;
    PnTaxasServicos: TPanel;
    GrdMatMeds: TDBGrid;
    GrdTaxasServicos: TDBGrid;
    Label7: TLabel;
    lblProcedimento: TLabel;
    Label9: TLabel;
    edtProcedimento: TEdit;
    edtQuantidadeProcedimento: TEdit;
    PnBotoes: TPanel;
    BtnConcluirFaturamento: TBitBtn;
    BtnNaoCobrar: TBitBtn;
    BtnSair: TBitBtn;
    Label8: TLabel;
    lblConvenio: TLabel;
    Label10: TLabel;
    mskDataConsumoMatMed: TMaskEdit;
    mskDataConsumoProcedimento: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtValorUnitMatMed: TEdit;
    edtValorTotalMatMed: TEdit;
    edtValorUnitProcedimento: TEdit;
    edtValorTotalProcedimento: TEdit;
    SpdBtnBuscaProcedimento: TSpeedButton;
    BtnExcluirItem: TBitBtn;
    BtnExcluirProcedimento: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    lblTotalMatMeds: TLabel;
    lblTotalProcedimentos: TLabel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtAtendimentoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirMatMedClick(Sender: TObject);
    procedure BtnBuscaMatMedClick(Sender: TObject);
    procedure edtIDMatMedExit(Sender: TObject);
    procedure edtValorUnitMatMedExit(Sender: TObject);
    procedure edtValorTotalMatMedExit(Sender: TObject);
    procedure edtProcedimentoExit(Sender: TObject);
    procedure SpdBtnBuscaProcedimentoClick(Sender: TObject);
    procedure edtValorUnitProcedimentoExit(Sender: TObject);
    procedure edtValorTotalProcedimentoEnter(Sender: TObject);
    procedure BtnIncluirTaxaServicoClick(Sender: TObject);
  private
    FController: TControllerConsumosAtendimento;
    function CalcularTotalMatMeds: Double;
    function CalcularTotalProcedimentos: Double;
    procedure LimparTudo;
    procedure LimparMatMeds;
    procedure LimparProcedimentos;
  public
    { Public declarations }
  end;

var
  frmConsumosAtendimentos: TfrmConsumosAtendimentos;

implementation

{$R *.dfm}

uses unFrmFundo;

procedure TfrmConsumosAtendimentos.BtnBuscaMatMedClick(Sender: TObject);
var
  vValue: integer;
  frmMatMed: TFrmMatMeds;
begin
  inherited;
  try
    frmMatMed := TFrmMatMeds.Create(Self,toConsulta);
    frmMatMed.ShowModal;
  finally
    edtIDMatMed.Text := IntToStr(frmMatMed.FValueFieldKey);

    if TryStrToInt(edtIDMatMed.Text,vValue) then
      lblMatMed.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);

    FreeAndNil(frmMatMed);
  end;
end;

procedure TfrmConsumosAtendimentos.BtnIncluirMatMedClick(Sender: TObject);
var
  vMatMed, vAtendimento: integer;
  vDataConsumo: TDateTime;
  vQuantidade, vValor, vValorTotal: Double;
begin
  FController.LimparModel;

  if not(TryStrToInt(edtAtendimento.Text,vAtendimento)) and
    not(FController.ConsultarDadosAtendimento(StrToInt(edtAtendimento.Text))) then
      Exit;

  if TryStrToInt(edtIDMatMed.Text,vMatMed) then
    FController.Model.Id_matmed := vMatMed
  else
  begin
    MessageDlg('MatMed inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToDate(mskDataConsumoMatMed.Text,vDataConsumo) then
    FController.Model.Data_Consumo :=vDataConsumo
  else
  begin
    MessageDlg('Data de consumo do MatMed n�o informada ou inv�lida!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtQuantidade.Text,vQuantidade) then
    FController.Model.Quantidade := vQuantidade
  else
  begin
    MessageDlg('Quantidade inv�lida ou n�o informada!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtValorUnitMatMed.Text,vValor) then
    FController.Model.Valor := vValor
  else
  begin
    MessageDlg('Valor unit�rio inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtValorTotalMatMed.Text,vValorTotal) then
    FController.Model.Valor_Total := vValorTotal
  else
  begin
    MessageDlg('Valor total inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if FController.IncluirItem(iTpMatMed,vAtendimento) then
    FController.ConsultarMatMedsAtendimento(vAtendimento);
end;

procedure TfrmConsumosAtendimentos.BtnIncluirTaxaServicoClick(Sender: TObject);
var
  vProcedimento, vAtendimento: integer;
  vDataConsumo: TDateTime;
  vQuantidade, vValor, vValorTotal: Double;
begin
  FController.LimparModel;

  if not(TryStrToInt(edtAtendimento.Text,vAtendimento)) and
    not(FController.ConsultarDadosAtendimento(StrToInt(edtAtendimento.Text))) then
      Exit;

  if TryStrToInt(edtProcedimento.Text,vProcedimento) then
    FController.Model.Id_procedimento := vProcedimento
  else
  begin
    MessageDlg('Procedimento inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToDate(mskDataConsumoProcedimento.Text,vDataConsumo) then
    FController.Model.Data_Consumo :=vDataConsumo
  else
  begin
    MessageDlg('Data de consumo do Procedimento n�o informada ou inv�lida!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtQuantidadeProcedimento.Text,vQuantidade) then
    FController.Model.Quantidade := vQuantidade
  else
  begin
    MessageDlg('Quantidade inv�lida ou n�o informada!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtValorUnitProcedimento.Text,vValor) then
    FController.Model.Valor := vValor
  else
  begin
    MessageDlg('Valor unit�rio inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if TryStrToFloat(edtValorTotalProcedimento.Text,vValorTotal) then
    FController.Model.Valor_Total := vValorTotal
  else
  begin
    MessageDlg('Valor total inv�lido ou n�o informado!',mtWarning,[mbOk],0);
    Exit;
  end;

  if FController.IncluirItem(iTpProcedimento,vAtendimento) then
    FController.ConsultarProcedimentosAtendimento(vAtendimento);
end;

procedure TfrmConsumosAtendimentos.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

function TfrmConsumosAtendimentos.CalcularTotalMatMeds: Double;
var
  vQuantidade, vValorUnitario: Double;
begin
  if TryStrToFloat(edtQuantidade.Text,vQuantidade) and
    TryStrToFloat(edtValorUnitMatMed.Text,vValorUnitario) then
    begin
      Result := vValorUnitario * vQuantidade;
      edtValorTotalMatMed.Text := FloatToStr(Result)
    end
    else
      MessageDlg('Quantidade ou Valor Unit�rio do MatMed incorreto!',mtWarning,[mbOk],0);
end;

function TfrmConsumosAtendimentos.CalcularTotalProcedimentos: Double;
var
  vQuantidade, vValorUnitario: Double;
begin
  if TryStrToFloat(edtQuantidadeProcedimento.Text,vQuantidade) and
    TryStrToFloat(edtValorUnitProcedimento.Text,vValorUnitario) then
    begin
      Result := vValorUnitario * vQuantidade;
      edtValorTotalProcedimento.Text := FloatToStr(Result)
    end
    else
      MessageDlg('Quantidade ou Valor Unit�rio do Procedimento incorreto!',mtWarning,[mbOk],0);
end;

procedure TfrmConsumosAtendimentos.edtAtendimentoExit(Sender: TObject);
var
  vAtendimento: integer;
begin
  if TryStrToInt(edtAtendimento.Text,vAtendimento) then
  begin
    FController.Model.Id_Atendimento := vAtendimento;
    if FController.ConsultarDadosAtendimento(vAtendimento) then
    begin
      FController.ConsultarMatMedsAtendimento(vAtendimento);
      FController.ConsultarProcedimentosAtendimento(vAtendimento);
    end;

    lblNomePaciente.Caption := FController.Registros.FieldByName('nome').AsString;
    lblConvenio.Caption := FController.Registros.FieldByName('convenio').AsString;
    lblTipoAtendimento.Caption := FController.Registros.FieldByName('tipoatendimento').AsString;
  end;
end;

procedure TfrmConsumosAtendimentos.edtIDMatMedExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtIDMatMed.Text,vValue) then
    lblMatMed.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);
end;

procedure TfrmConsumosAtendimentos.edtProcedimentoExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtProcedimento.Text,vValue) then
    lblProcedimento.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);
end;

procedure TfrmConsumosAtendimentos.edtValorTotalMatMedExit(Sender: TObject);
begin
  CalcularTotalMatMeds;
end;

procedure TfrmConsumosAtendimentos.edtValorTotalProcedimentoEnter(
  Sender: TObject);
begin
  CalcularTotalProcedimentos;
end;

procedure TfrmConsumosAtendimentos.edtValorUnitMatMedExit(Sender: TObject);
begin
  CalcularTotalMatMeds;
end;

procedure TfrmConsumosAtendimentos.edtValorUnitProcedimentoExit(
  Sender: TObject);
begin
  CalcularTotalProcedimentos;
end;

procedure TfrmConsumosAtendimentos.FormCreate(Sender: TObject);
begin
  FController := TControllerConsumosAtendimento.Create;
  GrdMatMeds.DataSource := FController.DsMatMeds;
  GrdTaxasServicos.DataSource := FController.DsProcedimentos;
end;

procedure TfrmConsumosAtendimentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TfrmConsumosAtendimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmConsumosAtendimentos.FormShow(Sender: TObject);
var
  vAtendimento: integer;
begin
  if TryStrToInt(edtAtendimento.Text,vAtendimento) then
  begin
    FController.Model.Id_Atendimento := vAtendimento;
    if FController.ConsultarDadosAtendimento(vAtendimento) then
    begin
      FController.ConsultarMatMedsAtendimento(vAtendimento);
      FController.ConsultarProcedimentosAtendimento(vAtendimento);
    end;

    lblNomePaciente.Caption := FController.Registros.FieldByName('nome').AsString;
    lblConvenio.Caption := FController.Registros.FieldByName('convenio').AsString;
    lblTipoAtendimento.Caption := FController.Registros.FieldByName('tipoatendimento').AsString;
  end;

  mskDataConsumoMatMed.Text := DateToStr(Now);
  mskDataConsumoProcedimento.Text := DateToStr(Now);
end;

procedure TfrmConsumosAtendimentos.LimparMatMeds;
begin
  edtQuantidade.Text := '1';
  edtIDMatMed.Clear;
end;

procedure TfrmConsumosAtendimentos.LimparProcedimentos;
begin
  edtQuantidadeProcedimento.Text := '1';
  edtProcedimento.Clear;
end;

procedure TfrmConsumosAtendimentos.LimparTudo;
begin
  LimparMatMeds;
  LimparProcedimentos;
end;

procedure TfrmConsumosAtendimentos.SpdBtnBuscaProcedimentoClick(
  Sender: TObject);
var
  vValue: integer;
  frmProcedimento: TfrmProcedimentos;
begin
  inherited;
  try
    frmProcedimento := TfrmProcedimentos.Create(Self,toConsulta);
    frmProcedimento.ShowModal;
  finally
    edtProcedimento.Text := IntToStr(frmProcedimento.FValueFieldKey);

    if TryStrToInt(edtProcedimento.Text,vValue) then
      lblProcedimento.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);

    FreeAndNil(frmProcedimento);
  end;
end;

end.
