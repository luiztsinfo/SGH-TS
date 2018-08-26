unit unFrmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Cidade, unConstantes, Vcl.Mask, u_FrmBase;

type
  TFrmCidades = class(TFrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtCodIBGE: TEdit;
    CbxUF: TComboBox;
    CbxCEPUnico: TComboBox;
    mskCEP: TMaskEdit;
    Label7: TLabel;
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
  FrmCidades: TFrmCidades;

implementation

{$R *.dfm}

procedure TFrmCidades.alimentaModel;
begin
  inherited;
  TControllerCidade(FController).Model.Nome       := edtNome.Text;
  TControllerCidade(FController).Model.Cep_Unico  := CbxCEPUnico.ItemIndex;
  TControllerCidade(FController).Model.Cep        := mskCEP.Text;
  TControllerCidade(FController).Model.Cod_IBGE   := StrToInt(edtCodIBGE.Text);
  TControllerCidade(FController).Model.UF         := CbxUF.ItemIndex;
end;

procedure TFrmCidades.alterar;
begin
  inherited;
  TControllerCidade(FController).Model.Id := StrToInt(edtID.Text);
  TControllerCidade(FController).FDao.Salvar(TControllerCidade(FController).Model)
end;

procedure TFrmCidades.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TFrmCidades.carregarCampos;
begin
  inherited;
  edtID.Text    := IntToStr(TControllerCidade(FController).Model.Id);
  edtNome.Text  := TControllerCidade(FController).Model.Nome;
  CbxUF.ItemIndex := TControllerCidade(FController).Model.UF;
  mskCEP.Text     := TControllerCidade(FController).Model.Cep;
  edtCodIBGE.Text := IntToStr(TControllerCidade(FController).Model.Cod_IBGE);
  CbxCEPUnico.ItemIndex := TControllerCidade(FController).Model.Cep_Unico;
end;

procedure TFrmCidades.consultar;
begin
  inherited;
  TControllerCidade(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerCidade(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerCidade(FController).Model.Nome := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerCidade(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmCidades.FormCreate(Sender: TObject);
begin
  FController := TControllerCidade.Create;
  inherited;
end;

procedure TFrmCidades.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := TControllerCidade(FController).Model.Id;
      Self.Close;
    end;
end;

procedure TFrmCidades.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

end.

