unit unFrmColaboradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FrmBase, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Controller.Colaborador, unConstantes;

type
  TfrmColaborador = class(TfrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    edtCidade: TEdit;
    CbxTipoRegistro: TComboBox;
    mskNascimento: TMaskEdit;
    edtRegistro: TEdit;
    GrdCidades: TDBGrid;
    procedure BtnNovoClick(Sender: TObject);
    procedure GrdCidadesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdCidadesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GrdCidadesDblClick(Sender: TObject);
    procedure TbShCadastroShow(Sender: TObject);
    procedure edtCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FControllerColaborador: TControllerColaborador;
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
  frmColaborador: TfrmColaborador;

implementation

{$R *.dfm}

{ TfrmColaboradores }

procedure TfrmColaborador.alimentaModel;
begin
  inherited;
  FControllerColaborador.Model.Nome        := edtNome.Text;
  FControllerColaborador.Model.Tipo_pessoa := sTIPO_PESSOA_COLABORADOR;
  FControllerColaborador.Model.Nascimento  := StrToDate(mskNascimento.Text);
  FControllerColaborador.Model.Id_cidade   := FControllerColaborador.FCidade.Id;
  FControllerColaborador.Model.Situacao    := sATIVO;
  FControllerColaborador.Model.Tipo_Registro:= CbxTipoRegistro.ItemIndex;
  FControllerColaborador.Model.Registro_profissional := edtRegistro.Text;
end;

procedure TfrmColaborador.alterar;
begin
  inherited;
  FControllerColaborador.Model.Id        := StrToInt(edtID.Text);
  FControllerColaborador.Salvar(FControllerColaborador.Model);
end;

procedure TfrmColaborador.BtnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmColaborador.carregarCampos;
begin
  inherited;
  edtID.Text          := IntToStr(FControllerColaborador.Model.Id);
  edtNome.Text        := FControllerColaborador.Model.Nome;
  mskNascimento.Text  := DateToStr(FControllerColaborador.Model.Nascimento);
  edtCidade.Text      := FControllerColaborador.RetornaCidadePorID;
  CbxTipoRegistro.ItemIndex := FControllerColaborador.Model.Tipo_Registro;
end;

procedure TfrmColaborador.carregarModel;
begin
  inherited;
  FControllerColaborador.alimentaCamposModel;
end;

procedure TfrmColaborador.consultar;
begin
  inherited;
  FControllerColaborador.Model.Situacao    := sATIVO;
  FControllerColaborador.Model.Tipo_pessoa := sTIPO_PESSOA_COLABORADOR;

  case CbxConsulta.ItemIndex of
    iID:
      FControllerColaborador.Model.Id := StrToInt(trim(edtConsulta.Text));

    iNOME:
      FControllerColaborador.Model.Nome := '%'+trim(edtConsulta.Text)+'%';

    iCPF:
      begin
        ShowMessage('Op��o ainda n�o implementada!');
        Exit;
      end;

    iNASCIMENTO:
      FControllerColaborador.Model.Nascimento := StrToDate(mskNascimento.Text);
  end;

  FControllerColaborador.consultar(CbxConsulta.Text,CbxOrdenarPor.Text);
end;

procedure TfrmColaborador.edtCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_DOWN then
    GrdCidades.SetFocus;
end;

procedure TfrmColaborador.edtCidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if edtCidade.Text = trim('') then
    Exit
  else
    begin
      GrdCidades.Visible := True;
      FControllerColaborador.FCidade.Nome := '%' + edtCidade.Text + '%';
      FControllerColaborador.RetornaCidadePorNome;
      GrdCidades.DataSource := FControllerColaborador.FDataSourceCidade;
    end;
end;

procedure TfrmColaborador.excluir;
begin
  inherited;
  FControllerColaborador.Model.Situacao := 'I';
  FControllerColaborador.Salvar(FControllerColaborador.Model);
end;

function TfrmColaborador.existeRegistro: boolean;
begin
  Result := false;

  if FControllerColaborador.Model.Id > 0 then
    Result := True;
end;

procedure TfrmColaborador.FormCreate(Sender: TObject);
begin
  inherited;
   FControllerColaborador   := TControllerColaborador.Create;
  GrdDados.DataSource       := FControllerColaborador.FDataSourceColaborador;
end;

procedure TfrmColaborador.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FControllerColaborador);
end;

procedure TfrmColaborador.GrdCidadesDblClick(Sender: TObject);
begin
  inherited;
  edtCidade.Text                    := FControllerColaborador.FCidade.Nome;
  FControllerColaborador.Model.Id_cidade := FControllerColaborador.FCidade.Id;
  GrdCidades.Visible := False;
end;

procedure TfrmColaborador.GrdCidadesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
    begin
      GrdCidadesDblClick(self);
    end;
end;

procedure TfrmColaborador.GrdCidadesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if edtCidade.Text = trim('') then
    Exit
  else
    begin
      GrdCidades.Visible := True;
      FControllerColaborador.FCidade.Nome := '%' + edtCidade.Text + '%';
      FControllerColaborador.RetornaCidadePorNome;
      GrdCidades.DataSource := FControllerColaborador.FDataSourceCidade;
    end;
end;

procedure TfrmColaborador.incluir;
begin
  inherited;
  FControllerColaborador.Model.Id := FControllerColaborador.retornaUltimoColaborador;
  FControllerColaborador.Inserir(FControllerColaborador.Model);
end;

procedure TfrmColaborador.mostrarTodosDados;
begin
  inherited;
  FControllerColaborador.mostraDados;
end;

procedure TfrmColaborador.TbShCadastroShow(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

end.
