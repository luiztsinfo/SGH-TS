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
    ComboBox2: TComboBox;
    Label6: TLabel;
    edtIDGrupoCID: TEdit;
    lblGrupoCID: TLabel;
    BtnBuscaGrupoCID: TBitBtn;
    procedure BtnBuscaGrupoCIDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure edtIDGrupoCIDExit(Sender: TObject);
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
  TControllerCID(FController).Model.Descricao := edtDescricao.Text;

end;

procedure TfrmCID.alterar;
begin
  inherited;
  TControllerCID(FController).Model.Id := edtCID.Text;
  TControllerCID(FController).FDao.Salvar(TControllerCID(FController).Model);
end;

procedure TfrmCID.BtnBuscaGrupoCIDClick(Sender: TObject);
begin
  inherited;
  try
    frmGruposCID := TfrmGruposCID.Create(Self,toConsulta);
    frmGruposCID.ShowModal;
  finally
    edtIDGrupoCID.Text := frmGruposCID.FValueFieldKey.ToString;
    FreeAndNil(frmGruposCID);
  end;
end;

procedure TfrmCID.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtCID.Text;
end;

procedure TfrmCID.carregarCampos;
begin
  inherited;
  edtCID.Text := TControllerCID(FController).Model.Id;
  edtDescricao.Text := TControllerCID(FController).Model.Descricao;
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

  inherited;
end;

procedure TfrmCID.edtIDGrupoCIDExit(Sender: TObject);
begin
  inherited;
  lblGrupoCID.Caption := TControllerCID(FController).GetDescricaoGrupoCID(StrToInt(edtIDGrupoCID.Text));
end;

procedure TfrmCID.FormCreate(Sender: TObject);
begin
  FController := TControllerCID.Create;
  inherited;
end;

procedure TfrmCID.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtCID.SetFocus;
end;

end.
