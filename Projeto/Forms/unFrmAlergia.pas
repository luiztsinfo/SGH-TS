unit unFrmAlergia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Alergia, unConstantes, Datasnap.Provider, Datasnap.DBClient;

type
  TfrmAlergia = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    CbxTipoAlergia: TComboBox;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FControllerAlergia: TControllerAlergia;
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
  frmAlergia: TfrmAlergia;

implementation

{$R *.dfm}

procedure TfrmAlergia.alimentaModel;
begin
  inherited;
  FControllerAlergia.Model.Descricao := edtDescricao.Text;
  FControllerAlergia.Model.Tipo_alergia := CbxTipoAlergia.ItemIndex;
  FControllerAlergia.Model.Situacao := sATIVO;
end;

procedure TfrmAlergia.alterar;
begin
  inherited;
  FControllerAlergia.Model.Id := StrToInt(edtID.Text);
  FControllerAlergia.Salvar(FControllerAlergia.Model);
end;

procedure TfrmAlergia.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmAlergia.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(FControllerAlergia.Model.Id);
  edtDescricao.Text := FControllerAlergia.Model.Descricao;
  CbxTipoAlergia.ItemIndex := FControllerAlergia.Model.Tipo_alergia;
end;

procedure TfrmAlergia.carregarModel;
begin
  inherited;
  FControllerAlergia.alimentaCamposModel;
end;

procedure TfrmAlergia.consultar;
begin
  inherited;
  FControllerAlergia.Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerAlergia.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerAlergia.Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  FControllerAlergia.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmAlergia.excluir;
begin
  inherited;
  FControllerAlergia.Model.Situacao := sINATIVO;
  FControllerAlergia.Salvar(FControllerAlergia.Model);
end;

function TfrmAlergia.existeRegistro: boolean;
begin
  Result := false;

  if FControllerAlergia.Model.Id > 0 then
    Result := True;
end;

procedure TfrmAlergia.FormCreate(Sender: TObject);
begin
  inherited;
  FControllerAlergia := TControllerAlergia.Create;
  GrdDados.DataSource := FControllerAlergia.FDsAlergia;
end;

procedure TfrmAlergia.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerAlergia);
end;

procedure TfrmAlergia.incluir;
begin
  inherited;
  FControllerAlergia.Model.Id := FControllerAlergia.FDao.GetID(FControllerAlergia.Model,'id');
  FControllerAlergia.Inserir(FControllerAlergia.Model);
end;

procedure TfrmAlergia.mostrarTodosDados;
begin
  inherited;
  FControllerAlergia.mostraDados;
end;

procedure TfrmAlergia.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
