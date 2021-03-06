unit unFrmCompetencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Controller.Competencias, unConstantes, Vcl.Mask, unFrmConvenios, u_FrmBase;

type
  TFrmCompetencias = class(TFrmBaseBasico)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lblConvenio: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtID: TEdit;
    edtDescricao: TEdit;
    edtIDConvenio: TEdit;
    CbxStatus: TComboBox;
    mskDataFechamento: TMaskEdit;
    mskDataAbertura: TMaskEdit;
    SpdBtnBuscaConvenio: TSpeedButton;
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtIDConvenioExit(Sender: TObject);
    procedure SpdBtnBuscaConvenioClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  FrmCompetencias: TFrmCompetencias;

implementation

{$R *.dfm}

procedure TFrmCompetencias.alimentaModel;
begin
  inherited;
  TControllerCompetencias(FController).Model.Descricao := edtDescricao.Text;
  TControllerCompetencias(FController).Model.Status := CbxStatus.ItemIndex;
  TControllerCompetencias(FController).Model.Id_Convenio := StrToInt(edtIDConvenio.Text);

  if mskDataAbertura.Text <> '  /  /    ' then
    TControllerCompetencias(FController).Model.Data_Abertura := StrToDate(mskDataAbertura.Text)
  else
    TControllerCompetencias(FController).Model.Data_Abertura := 0;

  if mskDataFechamento.Text <> '  /  /    ' then
    TControllerCompetencias(FController).Model.Data_Fechamento := StrToDate(mskDataFechamento.Text)
  else
    TControllerCompetencias(FController).Model.Data_Fechamento := 0;
end;

procedure TFrmCompetencias.alterar;
begin
  inherited;
  TControllerCompetencias(FController).Model.Id := StrToInt(edtID.Text);
  TControllerCompetencias(FController).FDao.Salvar(TControllerCompetencias(FController).Model)
end;

procedure TFrmCompetencias.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmCompetencias.carregarCampos;
begin
  inherited;
  edtID.Text := IntToStr(TControllerCompetencias(FController).Model.Id);
  edtDescricao.Text := TControllerCompetencias(FController).Model.Descricao;
  CbxStatus.ItemIndex := TControllerCompetencias(FController).Model.Status;
  edtIDConvenio.Text := IntToStr(TControllerCompetencias(FController).Model.Id_Convenio);
  mskDataAbertura.Text := DateToStr(TControllerCompetencias(FController).Model.Data_Abertura);
  mskDataFechamento.Text := DateToStr(TControllerCompetencias(FController).Model.Data_Fechamento);
end;

procedure TFrmCompetencias.consultar;
begin
  TControllerCompetencias(FController).Model.Situacao := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerCompetencias(FController).Model.Id := StrToInt(trim(edtConsulta.Text));
    iNOME:
      TControllerCompetencias(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;
  TControllerCompetencias(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TFrmCompetencias.edtIDConvenioExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtIDConvenio.Text,vValue) then
    lblConvenio.Caption := TControllerCompetencias(FController).GetNomeConvenio(vValue,iINCLUINDO);
end;

procedure TFrmCompetencias.FormCreate(Sender: TObject);
begin
  FController := TControllerCompetencias.Create;
  inherited;
end;

procedure TFrmCompetencias.SpdBtnBuscaConvenioClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmConvenios := TfrmConvenios.Create(Self,toConsulta);
    frmConvenios.ShowModal;
  finally
    edtIDConvenio.Text := IntToStr(frmConvenios.FValueFieldKey);

    if TryStrToInt(edtIDConvenio.Text,vValue) then
      lblConvenio.Caption := TControllerCompetencias(FController).GetNomeConvenio(vValue,iINCLUINDO);

    FreeAndNil(frmConvenios);
  end;
end;

procedure TFrmCompetencias.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

end.

