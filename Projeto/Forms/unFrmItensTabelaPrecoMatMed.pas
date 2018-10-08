unit unFrmItensTabelaPrecoMatMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Controller.Item_Tabela_Preco_MatMed, unConstantes;

type
  TfrmItensTabelaPrecoMatMed = class(TForm)
    PnDadosTabela: TPanel;
    PnInclusaoItem: TPanel;
    PnConsultaItem: TPanel;
    PnItens: TPanel;
    lblTabelaPreco: TLabel;
    Label1: TLabel;
    lblMatMedFinal: TLabel;
    Label3: TLabel;
    lblMatMedInicial: TLabel;
    edtCodInicial: TEdit;
    edtCodFinal: TEdit;
    BtnBuscaMatMedInicial: TBitBtn;
    BtnBuscaMatMedFinal: TBitBtn;
    BtnIncluirItem: TBitBtn;
    GrdItensMatMed: TDBGrid;
    BtnExcluirItem: TBitBtn;
    BtnExcluirTudo: TBitBtn;
    StatusBar1: TStatusBar;
    RdGrpTipoBusca: TRadioGroup;
    edtConsulta: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtValor: TEdit;
    Label6: TLabel;
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
  private
    FController: TControllerItensTabelaPrecoMatMed;
    procedure LimparControles;
    procedure AlimentarModel;
    procedure AlimentarControles;
  public
    iID_TabelaPrecoMatMed: integer;
  end;

var
  frmItensTabelaPrecoMatMed: TfrmItensTabelaPrecoMatMed;

implementation

{$R *.dfm}

uses unFrmMatMed, u_FrmBase;

procedure TfrmItensTabelaPrecoMatMed.AlimentarControles;
begin
  edtCodInicial.Text := IntToStr(FController.Model.Id_MatMed);
  edtValor.Text := FloatToStr(FController.Model.Valor);
end;

procedure TfrmItensTabelaPrecoMatMed.AlimentarModel;
begin
  FController.Model.Id_tabela_preco_matmed := iID_TabelaPrecoMatMed;
  FController.Model.Id_MatMed := StrToInt(edtCodInicial.Text);
  FController.Model.Valor := StrToFloat(edtValor.Text);
end;

procedure TfrmItensTabelaPrecoMatMed.BtnBuscaMatMedFinalClick(Sender: TObject);
var
  vValue: integer;
  frmMatMed: TFrmMatMeds;
begin
  inherited;
  try
    frmMatMed := TFrmMatMeds.Create(Self,toConsulta);
    frmMatMed.ShowModal;
  finally
    edtCodFinal.Text := IntToStr(frmMatMed.FValueFieldKey);

    if TryStrToInt(edtCodFinal.Text,vValue) then
      lblMatMedFinal.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);

    FreeAndNil(frmMatMed);
  end;
end;

procedure TfrmItensTabelaPrecoMatMed.BtnBuscaMatMedInicialClick(
  Sender: TObject);
var
  vValue: integer;
  frmMatMed: TFrmMatMeds;
begin
  inherited;
  try
    frmMatMed := TFrmMatMeds.Create(Self,toConsulta);
    frmMatMed.ShowModal;
  finally
    edtCodInicial.Text := IntToStr(frmMatMed.FValueFieldKey);

    if TryStrToInt(edtCodInicial.Text,vValue) then
      lblMatMedInicial.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);

    FreeAndNil(frmMatMed);
  end;
end;

procedure TfrmItensTabelaPrecoMatMed.BtnExcluirItemClick(Sender: TObject);
begin
  if FController.ExcluirItem then
    FController.MostrarTodosItens(iID_TabelaPrecoMatMed);
end;

procedure TfrmItensTabelaPrecoMatMed.BtnExcluirTudoClick(Sender: TObject);
begin
  if FController.ExcluirTodos then
    FController.MostrarTodosItens(iID_TabelaPrecoMatMed);
end;

procedure TfrmItensTabelaPrecoMatMed.BtnIncluirItemClick(Sender: TObject);
begin
  AlimentarModel;
  if FController.IncluirItem then
  begin
    FController.MostrarTodosItens(iID_TabelaPrecoMatMed);
    LimparControles;
  end;

  edtCodInicial.SetFocus;
end;

procedure TfrmItensTabelaPrecoMatMed.edtCodFinalExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCodFinal.Text,vValue) then
    lblMatMedFinal.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);
end;

procedure TfrmItensTabelaPrecoMatMed.edtCodInicialExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCodInicial.Text,vValue) then
    lblMatMedInicial.Caption := FController.GetDescricaoMatMed(vValue,iINCLUINDO);
end;

procedure TfrmItensTabelaPrecoMatMed.edtConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FController.ConsultarItemTabelaMatMed(RdGrpTipoBusca.ItemIndex,edtConsulta.Text);
end;

procedure TfrmItensTabelaPrecoMatMed.FormCreate(Sender: TObject);
begin
  FController := TControllerItensTabelaPrecoMatMed.Create;
  GrdItensMatMed.DataSource := FController.DataSource;
end;

procedure TfrmItensTabelaPrecoMatMed.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TfrmItensTabelaPrecoMatMed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;
end;

procedure TfrmItensTabelaPrecoMatMed.FormShow(Sender: TObject);
begin
  FController.IDTabelaMatMed := iID_TabelaPrecoMatMed;
  if iID_TabelaPrecoMatMed > 0 then
    FController.MostrarTodosItens(iID_TabelaPrecoMatMed);
end;

procedure TfrmItensTabelaPrecoMatMed.LimparControles;
begin
  edtCodInicial.Clear;
  edtValor.Text := '0,00';
end;

end.
