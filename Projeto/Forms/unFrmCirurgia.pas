unit unFrmCirurgia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Cirurgia, unConstantes;

type
  TfrmCirurgia = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    edtId: TEdit;
    edtDescricao: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FControllerCirurgia: TControllerCirurgia;
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
  frmCirurgia: TfrmCirurgia;

implementation

{$R *.dfm}

procedure TfrmCirurgia.alimentaModel;
begin
  inherited;
  FControllerCirurgia.Model.Descricao := edtDescricao.Text;
  FControllerCirurgia.Model.Situacao := sATIVO;
end;

procedure TfrmCirurgia.alterar;
begin
  inherited;
  FControllerCirurgia.Model.Id := StrToInt(edtId.Text);
  FControllerCirurgia.Salvar(FControllerCirurgia.Model);
end;

procedure TfrmCirurgia.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmCirurgia.carregarCampos;
begin
  inherited;
  edtId.Text := IntToStr(FControllerCirurgia.Model.Id);
  edtDescricao.Text := FControllerCirurgia.Model.Descricao;
end;

procedure TfrmCirurgia.carregarModel;
begin
  inherited;
  FControllerCirurgia.alimentaCamposModel;
end;

procedure TfrmCirurgia.consultar;
begin
  inherited;
  FControllerCirurgia.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerCirurgia.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerCirurgia.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerCirurgia.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);

end;

procedure TfrmCirurgia.excluir;
begin
  inherited;
  FControllerCirurgia.Model.Situacao := sINATIVO;
  FControllerCirurgia.Salvar(FControllerCirurgia.Model);
end;

function TfrmCirurgia.existeRegistro: boolean;
begin
  Result := false;

  if FControllerCirurgia.Model.Id > 0 then
    Result := True;
end;

procedure TfrmCirurgia.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerCirurgia := TControllerCirurgia.Create;
  GrdDados.DataSource := FControllerCirurgia.FDsCirurgia;
end;

procedure TfrmCirurgia.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerCirurgia);
end;

procedure TfrmCirurgia.incluir;
begin
  inherited;
  FControllerCirurgia.Model.Id := FControllerCirurgia.FDao.GetID(FControllerCirurgia.Model,'id');
  FControllerCirurgia.Inserir(FControllerCirurgia.Model);
end;

procedure TfrmCirurgia.mostrarTodosDados;
begin
  inherited;
  FControllerCirurgia.mostraDados;
end;

procedure TfrmCirurgia.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
