unit unFrmConvenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Controller.Convenio, unConstantes, unFrmTabelasPrecoMatMed,
  unFrmTabelasPrecoProcedimentos;

type
  TfrmConvenios = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lblCidade: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblTabelaPrecoMatMed: TLabel;
    lblTabelaPrecoProcedimentos: TLabel;
    Label17: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtEndereco: TEdit;
    edtCodCidade: TEdit;
    edtBairro: TEdit;
    edtRegistroANS: TEdit;
    edtCodHospitalConvenio: TEdit;
    edtCodTabelaPrecoMatMed: TEdit;
    edtCodTabelaPrecoProcedimentos: TEdit;
    mskCEP: TMaskEdit;
    mskCNPJConvenio: TMaskEdit;
    CbxFonteRemuneracao: TComboBox;
    BtnBuscaCidade: TBitBtn;
    CbxExportaCIH: TComboBox;
    BtnBuscaTabelaPrecoMatMed: TBitBtn;
    BtnBuscaTabelaPrecoProcedimentos: TBitBtn;
    procedure edtCodCidadeExit(Sender: TObject);
    procedure edtCodTabelaPrecoMatMedExit(Sender: TObject);
    procedure edtCodTabelaPrecoProcedimentosExit(Sender: TObject);
    procedure BtnBuscaTabelaPrecoMatMedClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscaTabelaPrecoProcedimentosClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmConvenios: TfrmConvenios;

implementation

{$R *.dfm}

procedure TfrmConvenios.BtnBuscaTabelaPrecoProcedimentosClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmTabelasPrecoProcedimentos := TfrmTabelasPrecoProcedimentos.Create(Self,toConsulta);
    frmTabelasPrecoProcedimentos.ShowModal;
  finally
    edtCodTabelaPrecoProcedimentos.Text := IntToStr(frmTabelasPrecoProcedimentos.FValueFieldKey);

    if TryStrToInt(edtCodTabelaPrecoProcedimentos.Text,vValue) then
      lblTabelaPrecoProcedimentos.Caption := TControllerConvenio(FController).GetDescricaoTabelaProcedimentos(vValue,iINCLUINDO);

    FreeAndNil(frmTabelasPrecoProcedimentos);
  end;
end;

procedure TfrmConvenios.BtnNovoClick(Sender: TObject);
begin
  inherited;
  CbxExportaCIH.SetFocus;
end;

procedure TfrmConvenios.alimentaModel;
var
  vCidade, vMatMed, vProcedimento: integer;
begin
  inherited;
  TControllerConvenio(FController).Model.Nome                          := edtNome.Text;
  TControllerConvenio(FController).Model.Fonte_remuneracao             := CbxFonteRemuneracao.ItemIndex;
  TControllerConvenio(FController).Model.Endereco                      := edtEndereco.Text;

  if TryStrToInt(edtCodCidade.Text,vCidade) then
    TControllerConvenio(FController).Model.Id_cidade                   := vCidade;

  TControllerConvenio(FController).Model.Cep                           := mskCEP.Text;
  TControllerConvenio(FController).Model.Bairro                        := edtBairro.Text;
  TControllerConvenio(FController).Model.Cnpj_convenio                 := mskCNPJConvenio.Text;
  TControllerConvenio(FController).Model.Registro_ans                  := edtRegistroANS.Text;
  TControllerConvenio(FController).Model.Cod_hospital_convenio         := edtCodHospitalConvenio.Text;
  TControllerConvenio(FController).Model.Exporta_cih                   := CbxExportaCIH.ItemIndex;

  if TryStrToInt(edtCodTabelaPrecoMatMed.Text,vMatMed) then
    TControllerConvenio(FController).Model.Id_tabela_preco_matmed        := vMatMed;

  if TryStrToInt(edtCodTabelaPrecoProcedimentos.Text,vProcedimento) then
    TControllerConvenio(FController).Model.Id_tabela_preco_procedimentos := vProcedimento;
end;

procedure TfrmConvenios.alterar;
begin
  inherited;
  TControllerConvenio(FController).Model.Id := StrToInt(edtID.Text);
  TControllerConvenio(FController).FDao.Salvar(TControllerConvenio(FController).Model);
end;

procedure TfrmConvenios.carregarCampos;
begin
  inherited;
  edtID.Text                    := IntToStr(TControllerConvenio(FController).Model.Id);
  CbxExportaCIH.ItemIndex       := TControllerConvenio(FController).Model.Exporta_cih;
  edtNome.Text                  := TControllerConvenio(FController).Model.Nome;
  CbxFonteRemuneracao.ItemIndex := TControllerConvenio(FController).Model.Fonte_remuneracao;
  edtEndereco.Text              := TControllerConvenio(FController).Model.Endereco;
  edtCodCidade.Text             := IntToStr(TControllerConvenio(FController).Model.Id_cidade);

  lblCidade.Caption             := TControllerConvenio(FController).
                                      GetNomeCidade(TControllerConvenio(FController).
                                        Model.Id_cidade, iALTERANDO);

  mskCEP.Text                   := TControllerConvenio(FController).Model.Cep;
  edtBairro.Text                := TControllerConvenio(FController).Model.Bairro;
  mskCNPJConvenio.Text          := TControllerConvenio(FController).Model.Cnpj_convenio;
  edtRegistroANS.Text           := TControllerConvenio(FController).Model.Registro_ans;
  edtCodHospitalConvenio.Text   := TControllerConvenio(FController).Model.Cod_hospital_convenio;
  edtCodTabelaPrecoMatMed.Text  := IntToStr(TControllerConvenio(FController).Model.Id_tabela_preco_matmed);

  lblTabelaPrecoMatMed.Caption  := TControllerConvenio(FController).
                                      GetDescricaoTabelaMatMed(TControllerConvenio(FController).
                                        Model.Id_tabela_preco_matmed, iALTERANDO);

  edtCodTabelaPrecoProcedimentos.Text := IntToStr(TControllerConvenio(FController).Model.Id_tabela_preco_procedimentos);

  lblTabelaPrecoProcedimentos.Caption := TControllerConvenio(FController).
                                            GetDescricaoTabelaProcedimentos(TControllerConvenio(FController).
                                              Model.Id_tabela_preco_procedimentos, iALTERANDO);
end;

procedure TfrmConvenios.consultar;
begin
  TControllerConvenio(FController).Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerConvenio(FController).Model.Id := StrToInt(edtConsulta.Text);

    iNOME:
      TControllerConvenio(FController).Model.Nome := '%'+trim(edtConsulta.Text)+'%';
  end;

  TControllerConvenio(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmConvenios.BtnBuscaTabelaPrecoMatMedClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmTabelasMatMed := TfrmTabelasMatMed.Create(Self,toConsulta);
    frmTabelasMatMed.ShowModal;
  finally
    edtCodTabelaPrecoMatMed.Text := IntToStr(frmTabelasMatMed.FValueFieldKey);

    if TryStrToInt(edtCodTabelaPrecoMatMed.Text,vValue) then
      lblTabelaPrecoMatMed.Caption := TControllerConvenio(FController).GetDescricaoTabelaMatMed(vValue,iINCLUINDO);

    FreeAndNil(frmTabelasMatMed);
  end;
end;

procedure TfrmConvenios.edtCodCidadeExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;

  if TryStrToInt(edtCodCidade.Text,vValue) then
    lblCidade.Caption := TControllerConvenio(FController).GetNomeCidade(vValue,iINCLUINDO);
end;

procedure TfrmConvenios.edtCodTabelaPrecoMatMedExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;

  if TryStrToInt(edtCodTabelaPrecoMatMed.Text,vValue) then
    lblTabelaPrecoMatMed.Caption := TControllerConvenio(FController).GetDescricaoTabelaMatMed(vValue,iINCLUINDO);
end;

procedure TfrmConvenios.edtCodTabelaPrecoProcedimentosExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;

  if TryStrToInt(edtCodTabelaPrecoProcedimentos.Text,vValue) then
    lblTabelaPrecoProcedimentos.Caption := TControllerConvenio(FController).GetDescricaoTabelaProcedimentos(vValue,iINCLUINDO);
end;

procedure TfrmConvenios.FormCreate(Sender: TObject);
begin
  FController := TControllerConvenio.Create;
  inherited;
end;

procedure TfrmConvenios.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  CbxExportaCIH.SetFocus;
end;

end.
