unit unFrmItensTabelaPrecoProcedimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Controller.Item_Tabela_Preco_Procedimento, unConstantes, unFrmProcedimentos;

type
  TfrmItensTabelaPrecoProcedimento = class(TForm)
    PnDadosTabela: TPanel;
    PnInclusaoItem: TPanel;
    PnConsultaItem: TPanel;
    PnItens: TPanel;
    lblTabelaPreco: TLabel;
    Label1: TLabel;
    lblProcedimentoFinal: TLabel;
    Label3: TLabel;
    lblProcedimentoInicial: TLabel;
    edtCodInicial: TEdit;
    edtCodFinal: TEdit;
    BtnBuscaMatMedInicial: TBitBtn;
    BtnBuscaMatMedFinal: TBitBtn;
    BtnIncluirItem: TBitBtn;
    GrdItensProcedimento: TDBGrid;
    BtnExcluirItem: TBitBtn;
    BtnExcluirTudo: TBitBtn;
    StatusBar1: TStatusBar;
    RdGrpTipoBusca: TRadioGroup;
    edtConsulta: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtValorTotal: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtCustoOperacional: TEdit;
    edtHonorariosMedicos: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnBuscaMatMedInicialClick(Sender: TObject);
    procedure edtCodInicialExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtCodFinalExit(Sender: TObject);
    procedure BtnBuscaMatMedFinalClick(Sender: TObject);
    procedure BtnIncluirItemClick(Sender: TObject);
    procedure edtConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirTudoClick(Sender: TObject);
    procedure BtnExcluirItemClick(Sender: TObject);
    procedure edtHonorariosMedicosExit(Sender: TObject);
    procedure edtValorTotalExit(Sender: TObject);
    procedure edtCustoOperacionalExit(Sender: TObject);
    procedure edtValorTotalEnter(Sender: TObject);
  private
    FController: TControllerItensTabelaPrecoProcedimento;
    procedure LimparControles;
    procedure AlimentarModel;
    procedure AlimentarControles;
    procedure CalcularValorTotal;
  public
    iID_TabelaPrecoProcedimento: integer;
  end;

var
  frmItensTabelaPrecoProcedimento: TfrmItensTabelaPrecoProcedimento;

implementation

{$R *.dfm}

uses unFrmMatMed, u_FrmBase;

procedure TfrmItensTabelaPrecoProcedimento.AlimentarControles;
begin
  edtCodInicial.Text := IntToStr(FController.Model.Id_Procedimento);
  edtCustoOperacional.Text := FloatToStr(FController.Model.Custo_Operacional);
  edtHonorariosMedicos.Text := FloatToStr(FController.Model.Honorarios_medicos);
  edtValorTotal.Text := FloatToStr(FController.Model.Valor_total);
end;

procedure TfrmItensTabelaPrecoProcedimento.AlimentarModel;
var
  vHonorarios: Double;
begin
  vHonorarios := 0;

  FController.Model.Id_tabela_procedimentos := iID_TabelaPrecoProcedimento;
  FController.Model.Id_Procedimento := StrToInt(edtCodInicial.Text);
  FController.Model.Valor_total := StrToFloat(edtValorTotal.Text);
  FController.Model.Custo_Operacional := StrToFloat(edtCustoOperacional.Text);

  if TryStrToFloat(edtHonorariosMedicos.Text,vHonorarios) then
    FController.Model.Honorarios_medicos := vHonorarios;
end;

procedure TfrmItensTabelaPrecoProcedimento.BtnBuscaMatMedFinalClick(Sender: TObject);
var
  vValue: integer;
  frmProcedimento : TfrmProcedimentos;
begin
  inherited;
  try
    frmProcedimento := TfrmProcedimentos.Create(Self,toConsulta);
    frmProcedimento.ShowModal;
  finally
    edtCodFinal.Text := IntToStr(frmProcedimento.FValueFieldKey);

    if TryStrToInt(edtCodFinal.Text,vValue) then
      lblProcedimentoFinal.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);

    FreeAndNil(frmProcedimento);
  end;
end;

procedure TfrmItensTabelaPrecoProcedimento.BtnBuscaMatMedInicialClick(
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
    edtCodInicial.Text := IntToStr(frmProcedimento.FValueFieldKey);

    if TryStrToInt(edtCodInicial.Text,vValue) then
    begin
      lblProcedimentoInicial.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);
      edtCustoOperacional.Text := FController.GetOperacionalProcedimento(vValue,iINCLUINDO);
      edtHonorariosMedicos.Text := FController.GetHonorariosProcedimento(vValue,iINCLUINDO);
      CalcularValorTotal;
    end;

    FreeAndNil(frmProcedimento);
  end;
end;

procedure TfrmItensTabelaPrecoProcedimento.BtnExcluirItemClick(Sender: TObject);
begin
  if FController.ExcluirItem then
    FController.MostrarTodosItens(iID_TabelaPrecoProcedimento);
end;

procedure TfrmItensTabelaPrecoProcedimento.BtnExcluirTudoClick(Sender: TObject);
begin
  if FController.ExcluirTodos then
    FController.MostrarTodosItens(iID_TabelaPrecoProcedimento);
end;

procedure TfrmItensTabelaPrecoProcedimento.BtnIncluirItemClick(Sender: TObject);
begin
  AlimentarModel;
  if FController.IncluirItem then
    LimparControles;

  FController.MostrarTodosItens(iID_TabelaPrecoProcedimento);
  edtCodInicial.SetFocus;
end;

procedure TfrmItensTabelaPrecoProcedimento.CalcularValorTotal;
var
  vOperacional, vMedicos, vTotal: Double;
begin
  vOperacional := 0;
  vMedicos := 0;
  vTotal := 0;

  if not(TryStrToFloat(edtCustoOperacional.Text,vOperacional)) then
    vOperacional := 0;

  if not(TryStrToFloat(edtHonorariosMedicos.Text,vMedicos)) then
    vMedicos := 0;

  vTotal := vOperacional + vMedicos;
  edtValorTotal.Text := FloatToStr(vTotal);
end;

procedure TfrmItensTabelaPrecoProcedimento.edtCodFinalExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCodFinal.Text,vValue) then
    lblProcedimentoFinal.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);
end;

procedure TfrmItensTabelaPrecoProcedimento.edtCodInicialExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCodInicial.Text,vValue) then
  begin
    lblProcedimentoInicial.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);
    edtCustoOperacional.Text := FController.GetOperacionalProcedimento(vValue,iINCLUINDO);
    edtHonorariosMedicos.Text := FController.GetOperacionalProcedimento(vValue,iINCLUINDO);
    CalcularValorTotal;
  end;
end;

procedure TfrmItensTabelaPrecoProcedimento.edtConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FController.ConsultarItemTabelaProcedimento(RdGrpTipoBusca.ItemIndex,edtConsulta.Text);
end;

procedure TfrmItensTabelaPrecoProcedimento.edtCustoOperacionalExit(
  Sender: TObject);
begin
  CalcularValorTotal;
end;

procedure TfrmItensTabelaPrecoProcedimento.edtHonorariosMedicosExit(
  Sender: TObject);
begin
  CalcularValorTotal;
end;

procedure TfrmItensTabelaPrecoProcedimento.edtValorTotalEnter(Sender: TObject);
begin
  CalcularValorTotal;
end;

procedure TfrmItensTabelaPrecoProcedimento.edtValorTotalExit(Sender: TObject);
begin
  CalcularValorTotal;
end;

procedure TfrmItensTabelaPrecoProcedimento.FormCreate(Sender: TObject);
begin
  FController := TControllerItensTabelaPrecoProcedimento.Create;
  GrdItensProcedimento.DataSource := FController.DataSource;
end;

procedure TfrmItensTabelaPrecoProcedimento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TfrmItensTabelaPrecoProcedimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmItensTabelaPrecoProcedimento.FormShow(Sender: TObject);
begin
  FController.IDTabelaProcedimento := iID_TabelaPrecoProcedimento;
  if iID_TabelaPrecoProcedimento > 0 then
    FController.MostrarTodosItens(iID_TabelaPrecoProcedimento);
end;

procedure TfrmItensTabelaPrecoProcedimento.LimparControles;
begin
  edtCodInicial.Clear;
  edtValorTotal.Text := '0,00';
  edtCustoOperacional.Text := '0,00';
  edtHonorariosMedicos.Text := '0,00';
  lblProcedimentoInicial.Caption := '';
end;

end.
