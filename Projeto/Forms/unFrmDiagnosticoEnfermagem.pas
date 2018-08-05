unit unFrmDiagnosticoEnfermagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.DiagnosticoEnfermagem, unConstantes;

type
  TfrmDiagnosticoEnfermagem = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
  private
    FControllerDiagnosticoEnfermagem: TControllerDiagnosticoEnfermagem;
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
  frmDiagnosticoEnfermagem: TfrmDiagnosticoEnfermagem;

implementation

{$R *.dfm}

{ TfrmDiagnosticoEnfermagem }

procedure TfrmDiagnosticoEnfermagem.alimentaModel;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.Model.Descricao := edtDescricao.Text;
  FControllerDiagnosticoEnfermagem.Model.Situacao  := sATIVO;
end;

procedure TfrmDiagnosticoEnfermagem.alterar;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.Model.Id := StrToInt(edtID.Text);
  FControllerDiagnosticoEnfermagem.Salvar(FControllerDiagnosticoEnfermagem.Model);
end;

procedure TfrmDiagnosticoEnfermagem.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(FControllerDiagnosticoEnfermagem.Model.Id);
  edtDescricao.Text := FControllerDiagnosticoEnfermagem.Model.Descricao;
end;

procedure TfrmDiagnosticoEnfermagem.carregarModel;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.alimentaCamposModel;
end;

procedure TfrmDiagnosticoEnfermagem.consultar;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerDiagnosticoEnfermagem.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerDiagnosticoEnfermagem.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerDiagnosticoEnfermagem.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmDiagnosticoEnfermagem.excluir;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.Model.Situacao := sINATIVO;
  FControllerDiagnosticoEnfermagem.Salvar(FControllerDiagnosticoEnfermagem.Model);
end;

function TfrmDiagnosticoEnfermagem.existeRegistro: boolean;
begin
  Result := false;

  if FControllerDiagnosticoEnfermagem.Model.Id > 0 then
    Result := True;
end;

procedure TfrmDiagnosticoEnfermagem.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerDiagnosticoEnfermagem   := TControllerDiagnosticoEnfermagem.Create;
  GrdDados.DataSource := FControllerDiagnosticoEnfermagem.FDataSourceDiagnosticoEnfermagem;
end;

procedure TfrmDiagnosticoEnfermagem.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerDiagnosticoEnfermagem);
end;

procedure TfrmDiagnosticoEnfermagem.incluir;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.Model.Id := FControllerDiagnosticoEnfermagem.GetID(FControllerDiagnosticoEnfermagem.Model,'id');
  FControllerDiagnosticoEnfermagem.Inserir(FControllerDiagnosticoEnfermagem.Model);
end;

procedure TfrmDiagnosticoEnfermagem.mostrarTodosDados;
begin
  inherited;
  FControllerDiagnosticoEnfermagem.mostraDados;
end;

procedure TfrmDiagnosticoEnfermagem.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
