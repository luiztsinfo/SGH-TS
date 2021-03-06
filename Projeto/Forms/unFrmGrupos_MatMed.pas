unit unFrmGrupos_MatMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Grupo_MatMed, unConstantes, u_FrmBase;

type
  TfrmGruposMatMed = class(TfrmBaseBasico)
    edtDescricao: TEdit;
    edtID: TEdit;
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
  frmGruposMatMed: TfrmGruposMatMed;

implementation

{$R *.dfm}

procedure TfrmGruposMatMed.alimentaModel;
begin
  inherited;
  TControllerGrupo_MatMed(FController).Model.Descricao := edtDescricao.Text;
end;

procedure TfrmGruposMatMed.alterar;
begin
  inherited;
  TControllerGrupo_MatMed(FController).Model.Id := StrToInt(edtID.Text);
  TControllerGrupo_MatMed(FController).FDao.Salvar(TControllerGrupo_MatMed(FController).Model)
end;

procedure TfrmGruposMatMed.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmGruposMatMed.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerGrupo_MatMed(FController).Model.Id);
  edtDescricao.Text := TControllerGrupo_MatMed(FController).Model.Descricao;
end;

procedure TfrmGruposMatMed.consultar;
begin
  TControllerGrupo_MatMed(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerGrupo_MatMed(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerGrupo_MatMed(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerGrupo_MatMed(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmGruposMatMed.FormCreate(Sender: TObject);
begin
  FController := TControllerGrupo_MatMed.Create;
  inherited;
end;

procedure TfrmGruposMatMed.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerGrupo_MatMed(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TfrmGruposMatMed.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

