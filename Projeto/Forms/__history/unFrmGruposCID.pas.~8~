unit unFrmGruposCID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.GrupoCID, unConstantes;

type
  TfrmGruposCID = class(TfrmBase)
    edtID: TEdit;
    edtDescricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmGruposCID: TfrmGruposCID;

implementation

{$R *.dfm}

{ TfrmGruposCID }

procedure TfrmGruposCID.alimentaModel;
begin
  inherited;
  TControllerGrupoCID(FController).Model.Descricao := edtDescricao.Text;
end;

procedure TfrmGruposCID.alterar;
begin
  inherited;
  TControllerGrupoCID(FController).Model.Id := StrToInt(edtID.Text);
  TControllerGrupoCID(FController).FDao.Salvar(TControllerGrupoCID(FController).Model);
end;

procedure TfrmGruposCID.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmGruposCID.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerGrupoCID(FController).Model.Id);
  edtDescricao.Text := TControllerGrupoCID(FController).Model.Descricao;
end;

procedure TfrmGruposCID.consultar;
begin
  inherited;
  TControllerGrupoCID(FController).Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerGrupoCID(FController).Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      TControllerGrupoCID(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  TControllerGrupoCID(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmGruposCID.FormCreate(Sender: TObject);
begin
  FController := TControllerGrupoCID.Create;
  inherited;
end;

procedure TfrmGruposCID.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.
