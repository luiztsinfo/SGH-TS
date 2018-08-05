unit unFrmAtividadeReligiosa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.AtividadeReligiosa, unConstantes;

type
  TfrmAtividadeReligiosa = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    edtId: TEdit;
    edtDescricao: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FControllerAtividadeReligiosa: TControllerAtividadeReligiosa;
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
  frmAtividadeReligiosa: TfrmAtividadeReligiosa;

implementation

{$R *.dfm}

procedure TfrmAtividadeReligiosa.alimentaModel;
begin
  inherited;
  FControllerAtividadeReligiosa.Model.Descricao := edtDescricao.Text;
  FControllerAtividadeReligiosa.Model.Situacao := sATIVO;
end;

procedure TfrmAtividadeReligiosa.alterar;
begin
  inherited;
  FControllerAtividadeReligiosa.Model.Id := StrToInt(edtId.Text);
  FControllerAtividadeReligiosa.Salvar(FControllerAtividadeReligiosa.Model);
end;

procedure TfrmAtividadeReligiosa.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmAtividadeReligiosa.carregarCampos;
begin
  inherited;
  edtId.Text := IntToStr(FControllerAtividadeReligiosa.Model.Id);
  edtDescricao.Text := FControllerAtividadeReligiosa.Model.Descricao;
end;

procedure TfrmAtividadeReligiosa.carregarModel;
begin
  inherited;
  FControllerAtividadeReligiosa.alimentaCamposModel;
end;

procedure TfrmAtividadeReligiosa.consultar;
begin
  inherited;
  FControllerAtividadeReligiosa.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerAtividadeReligiosa.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerAtividadeReligiosa.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerAtividadeReligiosa.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmAtividadeReligiosa.excluir;
begin
  inherited;
  FControllerAtividadeReligiosa.Model.Situacao := sINATIVO;
  FControllerAtividadeReligiosa.Salvar(FControllerAtividadeReligiosa.Model);
end;

function TfrmAtividadeReligiosa.existeRegistro: boolean;
begin
  Result := false;

  if FControllerAtividadeReligiosa.Model.Id > 0 then
    Result := True;
end;

procedure TfrmAtividadeReligiosa.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerAtividadeReligiosa := TControllerAtividadeReligiosa.Create;
  GrdDados.DataSource := FControllerAtividadeReligiosa.FDsAtividadeReligiosa;
end;

procedure TfrmAtividadeReligiosa.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerAtividadeReligiosa);
end;

procedure TfrmAtividadeReligiosa.incluir;
begin
  inherited;
  FControllerAtividadeReligiosa.Model.Id := FControllerAtividadeReligiosa.FDao.GetID(FControllerAtividadeReligiosa.Model,'id');
  FControllerAtividadeReligiosa.Inserir(FControllerAtividadeReligiosa.Model);
end;

procedure TfrmAtividadeReligiosa.mostrarTodosDados;
begin
  inherited;
  FControllerAtividadeReligiosa.mostraDados;
end;

procedure TfrmAtividadeReligiosa.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
