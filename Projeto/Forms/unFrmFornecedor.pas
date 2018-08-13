unit unFrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Fornecedor, unConstantes;

type
  TfrmFornecedores = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtRazaoSocial: TEdit;
    procedure FormCreate(Sender: TObject);
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
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

{ TfrmFornecedores }

procedure TfrmFornecedores.alimentaModel;
begin
  inherited;
  TControllerFornecedor(FController).Model.Razaosocial := edtRazaoSocial.Text;
end;

procedure TfrmFornecedores.alterar;
begin
  inherited;
  TControllerFornecedor(FController).Model.Id := StrToInt(edtID.Text);
  TControllerFornecedor(FController).FDao.Salvar(TControllerFornecedor(FController).Model);
end;

procedure TfrmFornecedores.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtRazaoSocial.SetFocus;
end;

procedure TfrmFornecedores.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerFornecedor(FController).Model.Id);
  edtRazaoSocial.Text := TControllerFornecedor(FController).Model.Razaosocial;
end;

procedure TfrmFornecedores.consultar;
begin
  TControllerFornecedor(FController).Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerFornecedor(FController).Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      TControllerFornecedor(FController).Model.Razaosocial := '%'+trim(edtConsulta.Text)+'%';
  end;

  TControllerFornecedor(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmFornecedores.FormCreate(Sender: TObject);
begin
  FController := TControllerFornecedor.Create;
  inherited;
end;

procedure TfrmFornecedores.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtRazaoSocial.SetFocus;
end;

end.
