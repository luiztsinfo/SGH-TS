unit unFrmAntecedentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Antecedentes, unConstantes;

type
  TfrmAntecedentes = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    CbxTipoAntecedente: TComboBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
  private
    FControllerAntecedente: TControllerAntecedente;
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
  frmAntecedentes: TfrmAntecedentes;

implementation

{$R *.dfm}

{ TfrmAntecedentes }

procedure TfrmAntecedentes.alimentaModel;
begin
  inherited;
  FControllerAntecedente.Model.Descricao := edtDescricao.Text;
  FControllerAntecedente.Model.Tipo_antecedente := CbxTipoAntecedente.ItemIndex;
  FControllerAntecedente.Model.Situacao := sATIVO;
end;

procedure TfrmAntecedentes.alterar;
begin
  inherited;
  FControllerAntecedente.Model.Id := StrToInt(edtID.Text);
  FControllerAntecedente.Salvar(FControllerAntecedente.Model);
end;

procedure TfrmAntecedentes.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmAntecedentes.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(FControllerAntecedente.Model.Id);
  edtDescricao.Text := FControllerAntecedente.Model.Descricao;
  CbxTipoAntecedente.ItemIndex := FControllerAntecedente.Model.Tipo_antecedente;
end;

procedure TfrmAntecedentes.carregarModel;
begin
  inherited;
  FControllerAntecedente.alimentaCamposModel;
end;

procedure TfrmAntecedentes.consultar;
begin
  inherited;
  FControllerAntecedente.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerAntecedente.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerAntecedente.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerAntecedente.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmAntecedentes.excluir;
begin
  inherited;
  FControllerAntecedente.Model.Situacao := sINATIVO;
  FControllerAntecedente.Salvar(FControllerAntecedente.Model);
end;

function TfrmAntecedentes.existeRegistro: boolean;
begin
  Result := false;

  if FControllerAntecedente.Model.Id > 0 then
    Result := True;
end;

procedure TfrmAntecedentes.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerAntecedente := TControllerAntecedente.Create;
  GrdDados.DataSource := FControllerAntecedente.FDsAntecedente;
end;

procedure TfrmAntecedentes.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerAntecedente);
end;

procedure TfrmAntecedentes.incluir;
begin
  inherited;
  FControllerAntecedente.Model.Id := FControllerAntecedente.FDao.GetID(FControllerAntecedente.Model,'id');
  FControllerAntecedente.Inserir(FControllerAntecedente.Model);
end;

procedure TfrmAntecedentes.mostrarTodosDados;
begin
  inherited;
  FControllerAntecedente.mostraDados;
end;

procedure TfrmAntecedentes.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
