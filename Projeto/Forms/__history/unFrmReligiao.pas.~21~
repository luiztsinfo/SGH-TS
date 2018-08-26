unit unFrmReligiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Religiao, unConstantes, u_FrmBase;

type
  TFrmReligiao = class(TFrmBaseBasico)
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
  frmReligiao: TFrmReligiao;

implementation

{$R *.dfm}

procedure TFrmReligiao.alimentaModel;
begin
  inherited;
  TControllerReligiao(FController).Model.Descricao := edtDescricao.Text;
end;

procedure TFrmReligiao.alterar;
begin
  inherited;
  TControllerReligiao(FController).Model.Id := StrToInt(edtID.Text);
  TControllerReligiao(FController).FDao.Salvar(TControllerReligiao(FController).Model)
end;

procedure TFrmReligiao.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmReligiao.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerReligiao(FController).Model.Id);
  edtDescricao.Text := TControllerReligiao(FController).Model.Descricao;
end;

procedure TFrmReligiao.consultar;
begin
  inherited;
  TControllerReligiao(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerReligiao(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerReligiao(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerReligiao(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmReligiao.FormCreate(Sender: TObject);
begin
  FController := TControllerReligiao.Create;
  inherited;
end;

procedure TFrmReligiao.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerReligiao(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TFrmReligiao.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

