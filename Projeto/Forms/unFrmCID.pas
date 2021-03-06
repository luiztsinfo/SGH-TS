unit unFrmCID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  unFrmGruposCID, Controller.CID, unConstantes;

type
  TfrmCID = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edtCID: TEdit;
    edtDescricao: TEdit;
    CbxSexo: TComboBox;
    CbxCausaObito: TComboBox;
    Label6: TLabel;
    edtIDGrupoCID: TEdit;
    lblGrupoCID: TLabel;
    BtnBuscaGrupoCID: TBitBtn;
    procedure BtnBuscaGrupoCIDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure edtIDGrupoCIDExit(Sender: TObject);
    procedure GrdDadosDblClick(Sender: TObject);
  private

  public
    procedure alimentaModel; override;
    procedure carregarCampos; override;
    procedure consultar; override;
    procedure alterar; override;
  end;

var
  frmCID: TfrmCID;

implementation

{$R *.dfm}

procedure TfrmCID.alimentaModel;
begin
  inherited;
  TControllerCID(FController).Model.Id            := edtCID.Text;
  TControllerCID(FController).Model.Descricao     := edtDescricao.Text;
  TControllerCID(FController).Model.Id_grupo_cid  := StrToInt(edtIDGrupoCID.Text);
  TControllerCID(FController).Model.Sexo          := CbxSexo.ItemIndex;
  TControllerCID(FController).Model.Causa_obito   := CbxCausaObito.ItemIndex;
end;

procedure TfrmCID.alterar;
begin
  inherited;
  TControllerCID(FController).Model.Id := edtCID.Text;
  TControllerCID(FController).FDao.Salvar(TControllerCID(FController).Model);
end;

procedure TfrmCID.BtnBuscaGrupoCIDClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmGruposCID := TfrmGruposCID.Create(Self,toConsulta);
    frmGruposCID.ShowModal;
  finally
    edtIDGrupoCID.Text := IntToStr(frmGruposCID.FValueFieldKey);

    if TryStrToInt(edtIDGrupoCID.Text,vValue) then
      lblGrupoCID.Caption := TControllerCID(FController).GetDescricaoGrupoCID(vValue,iINCLUINDO);

    FreeAndNil(frmGruposCID);
  end;
end;

procedure TfrmCID.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtCID.Text;
end;

procedure TfrmCID.carregarCampos;
var
  vValue: integer;
begin
  inherited;
  edtCID.Text         := TControllerCID(FController).Model.Id;
  edtDescricao.Text   := TControllerCID(FController).Model.Descricao;
  edtIDGrupoCID.Text  := IntToStr(TControllerCID(FController).Model.Id_grupo_cid);
  lblGrupoCID.Caption := TControllerCID(FController).
                            GetDescricaoGrupoCID(TControllerCID(FController).
                                Model.Id_grupo_cid, iALTERANDO);

  CbxCausaObito.ItemIndex := TControllerCID(FController).Model.Causa_obito;
  CbxSexo.ItemIndex       := TControllerCID(FController).Model.Sexo;
end;

procedure TfrmCID.consultar;
begin
  TControllerCID(FController).Model.Situacao    := sATIVO;

  case CbxConsulta.ItemIndex of
    iID:
      TControllerCID(FController).Model.Id := trim(edtConsulta.Text);

    iNOME:
      TControllerCID(FController).Model.Descricao := '%'+trim(edtConsulta.Text)+'%';
  end;

  TControllerCID(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmCID.edtIDGrupoCIDExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;

  if TryStrToInt(edtIDGrupoCID.Text,vValue) then
    lblGrupoCID.Caption := TControllerCID(FController).GetDescricaoGrupoCID(vValue,iINCLUINDO);
end;

procedure TfrmCID.FormCreate(Sender: TObject);
begin
  FController := TControllerCID.Create;
  inherited;
end;

procedure TfrmCID.GrdDadosDblClick(Sender: TObject);
begin
  inherited;
  if (FTipoOperacao = toConsulta) then
    begin
      FValueFieldKey := StrToInt(TControllerCID(FController).Model.Id);
      Self.Close;
    end;
end;

procedure TfrmCID.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtCID.SetFocus;
end;

end.
