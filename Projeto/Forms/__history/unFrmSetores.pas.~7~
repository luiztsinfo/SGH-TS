unit unFrmSetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Setor, unConstantes, u_FrmBase;

type
  TfrmSetores = class(TfrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GrdDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmSetores: TfrmSetores;

implementation

{$R *.dfm}

procedure TfrmSetores.alimentaModel;
begin
  inherited;
  TControllerSetor(FController).Model.Descricao := edtDescricao.Text;
end;

procedure TfrmSetores.alterar;
begin
  inherited;
  TControllerSetor(FController).Model.Id := StrToInt(edtID.Text);
  TControllerSetor(FController).FDao.Salvar(TControllerSetor(FController).Model);
end;

procedure TfrmSetores.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmSetores.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerSetor(FController).Model.Id);
  edtDescricao.Text := TControllerSetor(FController).Model.Descricao;
end;

procedure TfrmSetores.consultar;
begin
  TControllerSetor(FController).Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerSetor(FController).Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      TControllerSetor(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  TControllerSetor(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmSetores.FormCreate(Sender: TObject);
begin
  FController := TControllerSetor.Create;
  inherited;
end;

procedure TfrmSetores.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerSetor(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TfrmSetores.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
