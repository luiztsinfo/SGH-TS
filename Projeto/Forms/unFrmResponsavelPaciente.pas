unit unFrmResponsavelPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Responsavel_Paciente, unConstantes, Vcl.Mask, u_FrmBase,
  unFrmCidades;

type
  TfrmResponsavelPaciente = class(TFrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblCidade: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtNumeroDocumento: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtEndereco: TEdit;
    edtLocalTrabalho: TEdit;
    mskNascimento: TMaskEdit;
    mskFone: TMaskEdit;
    CbxParentesco: TComboBox;
    CbxTipoDocumento: TComboBox;
    BtnBuscaCidade: TBitBtn;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GrdDadosDblClick(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
    procedure BtnBuscaCidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmResponsavelPaciente: TfrmResponsavelPaciente;

implementation

{$R *.dfm}

procedure TfrmResponsavelPaciente.alimentaModel;
begin
  inherited;
  TControllerResponsavelPaciente(FController).Model.Nome := edtNome.Text;
  TControllerResponsavelPaciente(FController).Model.Data_nascimento := StrToDate(mskNascimento.Text);
  TControllerResponsavelPaciente(FController).Model.Numero_documento:= edtNumeroDocumento.Text;
  TControllerResponsavelPaciente(FController).Model.Tipo_documento  := CbxTipoDocumento.ItemIndex;
  TControllerResponsavelPaciente(FController).Model.Id_cidade := StrToInt(edtCidade.Text);
  TControllerResponsavelPaciente(FController).Model.Bairro := edtBairro.Text;
  TControllerResponsavelPaciente(FController).Model.Endereco := edtEndereco.Text;
  TControllerResponsavelPaciente(FController).Model.Fone := mskFone.Text;
  TControllerResponsavelPaciente(FController).Model.Parentesco := CbxParentesco.ItemIndex;
  TControllerResponsavelPaciente(FController).Model.Local_Trabalho := edtLocalTrabalho.Text;
end;

procedure TfrmResponsavelPaciente.alterar;
begin
  inherited;
  TControllerResponsavelPaciente(FController).Model.Id := StrToInt(edtID.Text);
  TControllerResponsavelPaciente(FController).FDao.Salvar(TControllerResponsavelPaciente(FController).Model)
end;

procedure TfrmResponsavelPaciente.BtnBuscaCidadeClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    FrmCidades := TFrmCidades.Create(Self,toConsulta);
    FrmCidades.ShowModal;
  finally
    edtCidade.Text := IntToStr(FrmCidades.FValueFieldKey);

    if TryStrToInt(edtCidade.Text,vValue) then
      lblCidade.Caption := TControllerResponsavelPaciente(FController).GetNomeCidade(vValue,iINCLUINDO);

    FreeAndNil(FrmCidades);
  end;
end;

procedure TfrmResponsavelPaciente.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmResponsavelPaciente.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerResponsavelPaciente(FController).Model.Id);
  edtNome.Text := TControllerResponsavelPaciente(FController).Model.Nome;
  mskNascimento.Text := DateToStr(TControllerResponsavelPaciente(FController).Model.Data_nascimento);
  CbxTipoDocumento.ItemIndex := TControllerResponsavelPaciente(FController).Model.Tipo_documento;
  edtNumeroDocumento.Text := TControllerResponsavelPaciente(FController).Model.Numero_documento;
  edtCidade.Text := IntToStr(TControllerResponsavelPaciente(FController).Model.Id_cidade);
  edtBairro.Text := TControllerResponsavelPaciente(FController).Model.Bairro;
  edtEndereco.Text := TControllerResponsavelPaciente(FController).Model.Endereco;
  mskFone.Text := TControllerResponsavelPaciente(FController).Model.Fone;
  edtLocalTrabalho.Text := TControllerResponsavelPaciente(FController).Model.Local_Trabalho;
  CbxParentesco.ItemIndex := TControllerResponsavelPaciente(FController).Model.Parentesco;
end;

procedure TfrmResponsavelPaciente.consultar;
begin
  TControllerResponsavelPaciente(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerResponsavelPaciente(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerResponsavelPaciente(FController).Model.Nome := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerResponsavelPaciente(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmResponsavelPaciente.edtCidadeExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCidade.Text,vValue) then
    lblCidade.Caption := TControllerResponsavelPaciente(FController).GetNomeCidade(vValue,iINCLUINDO);
end;

procedure TfrmResponsavelPaciente.FormCreate(Sender: TObject);
begin
  FController := TControllerResponsavelPaciente.Create;
  inherited;
end;

procedure TfrmResponsavelPaciente.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerResponsavelPaciente(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TfrmResponsavelPaciente.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

end.
