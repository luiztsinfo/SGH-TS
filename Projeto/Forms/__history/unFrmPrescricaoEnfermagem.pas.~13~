unit unFrmPrescricaoEnfermagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.PrescricaoEnfermagem, unConstantes;

type
  TfrmPrescricaoEnfermagem = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
  private
    FControllerPrescricaoEnfermagem: TControllerPrescricaoEnfermagem;
  public

    procedure alimentaModel; override;
    procedure carregarModel; override;
    procedure carregarCampos; override;
    procedure mostrarTodosDados; override;
    procedure consultar; override;
    procedure incluir; override;
    procedure alterar; override;
    procedure excluir; override;
    function  existeRegistro: boolean; override;
  end;

var
  frmPrescricaoEnfermagem: TfrmPrescricaoEnfermagem;

implementation

{$R *.dfm}

{ TfrmPrescricaoEnfermagem }

procedure TfrmPrescricaoEnfermagem.alimentaModel;
begin
  inherited;
  FControllerPrescricaoEnfermagem.Model.Descricao := edtDescricao.Text;
  FControllerPrescricaoEnfermagem.Model.Situacao  := sATIVO;
end;

procedure TfrmPrescricaoEnfermagem.alterar;
begin
  inherited;
  FControllerPrescricaoEnfermagem.Model.Id := StrToInt(edtID.Text);
  FControllerPrescricaoEnfermagem.Salvar(FControllerPrescricaoEnfermagem.Model);
end;

procedure TfrmPrescricaoEnfermagem.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmPrescricaoEnfermagem.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(FControllerPrescricaoEnfermagem.Model.Id);
  edtDescricao.Text := FControllerPrescricaoEnfermagem.Model.Descricao;
end;

procedure TfrmPrescricaoEnfermagem.carregarModel;
begin
  inherited;
  FControllerPrescricaoEnfermagem.alimentaCamposModel;
end;

procedure TfrmPrescricaoEnfermagem.consultar;
begin
  inherited;
  FControllerPrescricaoEnfermagem.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerPrescricaoEnfermagem.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerPrescricaoEnfermagem.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerPrescricaoEnfermagem.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmPrescricaoEnfermagem.excluir;
begin
  inherited;
  FControllerPrescricaoEnfermagem.Model.Situacao := sINATIVO;
  FControllerPrescricaoEnfermagem.Salvar(FControllerPrescricaoEnfermagem.Model);
end;

function TfrmPrescricaoEnfermagem.existeRegistro: boolean;
begin
  Result := false;

  if FControllerPrescricaoEnfermagem.Model.Id > 0 then
    Result := True;
end;

procedure TfrmPrescricaoEnfermagem.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerPrescricaoEnfermagem   := TControllerPrescricaoEnfermagem.Create;
  GrdDados.DataSource := FControllerPrescricaoEnfermagem.FDataSourcePrescricaoEnfermagem;
end;

procedure TfrmPrescricaoEnfermagem.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerPrescricaoEnfermagem);
end;

procedure TfrmPrescricaoEnfermagem.incluir;
begin
  inherited;
  FControllerPrescricaoEnfermagem.Model.Id := FControllerPrescricaoEnfermagem.GetID(FControllerPrescricaoEnfermagem.Model,'id');
  FControllerPrescricaoEnfermagem.Inserir(FControllerPrescricaoEnfermagem.Model);
end;

procedure TfrmPrescricaoEnfermagem.mostrarTodosDados;
begin
  inherited;
  FControllerPrescricaoEnfermagem.mostraDados;
end;

procedure TfrmPrescricaoEnfermagem.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
