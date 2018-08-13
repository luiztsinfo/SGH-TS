unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Conexao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Menus, u_FrmBase, unFrmPaciente, unFrmColaboradores,
  unFrmPrescricaoEnfermagem, unFrmHE, unFrmReligiao, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, unFrmAntecedentes, unFrmAlergia, unFrmCirurgia,
  unFrmAtividadeReligiosa, unFrmDiagnosticoEnfermagem, Controller.Alergia,
  Controller.Interfaces, unFrmNacionalidades, unFrmGruposCID, unFrmCID,
  unFrmTabelasPrecoMatMed, unFrmTabelasPrecoProcedimentos, unFrmConvenios,
  unFrmFornecedor;

type
  TfrmPrincipal = class(TForm)
    MnMnuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Colaboradores1: TMenuItem;
    Label1: TLabel;
    Enfermagem2: TMenuItem;
    HistoricodeEvoluo1: TMenuItem;
    abelas1: TMenuItem;
    Religies1: TMenuItem;
    Image1: TImage;
    Cadastros2: TMenuItem;
    Antecedentes1: TMenuItem;
    Prescries1: TMenuItem;
    Alergias1: TMenuItem;
    Cirurgias1: TMenuItem;
    AtividadesReligiosas1: TMenuItem;
    Diagnsticos1: TMenuItem;
    Nacionalidades1: TMenuItem;
    N1: TMenuItem;
    GruposCID1: TMenuItem;
    CID1: TMenuItem;
    Faturamento1: TMenuItem;
    abeladePreosProcedimentos1: TMenuItem;
    abeladePreosMatMed1: TMenuItem;
    N2: TMenuItem;
    Convnios1: TMenuItem;
    Fornecedores1: TMenuItem;
    procedure Pacientes1Click(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure Prescies1Click(Sender: TObject);
    procedure HistoricodeEvoluo1Click(Sender: TObject);
    procedure Religies1Click(Sender: TObject);
    procedure Antecedentes1Click(Sender: TObject);
    procedure Alergias1Click(Sender: TObject);
    procedure Cirurgias1Click(Sender: TObject);
    procedure AtividadesReligiosas1Click(Sender: TObject);
    procedure Diagnsticos1Click(Sender: TObject);
    procedure Prescries1Click(Sender: TObject);
    procedure Nacionalidades1Click(Sender: TObject);
    procedure GruposCID1Click(Sender: TObject);
    procedure CID1Click(Sender: TObject);
    procedure abeladePreosMatMed1Click(Sender: TObject);
    procedure abeladePreosProcedimentos1Click(Sender: TObject);
    procedure Convnios1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.abeladePreosMatMed1Click(Sender: TObject);
begin
  try
    frmTabelasMatMed := TfrmTabelasMatMed.Create(self,toCadastro);
    frmTabelasMatMed.ShowModal;
  finally
    FreeAndNil(frmTabelasMatMed);
  end;
end;

procedure TfrmPrincipal.abeladePreosProcedimentos1Click(Sender: TObject);
begin
  try
    frmTabelasPrecoProcedimentos := TfrmTabelasPrecoProcedimentos.Create(self,toCadastro);
    frmTabelasPrecoProcedimentos.ShowModal;
  finally
    FreeAndNil(frmTabelasPrecoProcedimentos);
  end;
end;

procedure TfrmPrincipal.Alergias1Click(Sender: TObject);
begin
  try
    frmAlergia := TfrmAlergia.Create(Self,toCadastro);
    frmAlergia.ShowModal;
  finally
    FreeAndNil(frmAlergia);
  end;
end;

procedure TfrmPrincipal.Antecedentes1Click(Sender: TObject);
begin
  try
    frmAntecedentes := TfrmAntecedentes.Create(Self,toCadastro);
    frmAntecedentes.ShowModal;
  finally
    FreeAndNil(frmAntecedentes);
  end;
end;

procedure TfrmPrincipal.AtividadesReligiosas1Click(Sender: TObject);
begin
  try
    frmAtividadeReligiosa := TfrmAtividadeReligiosa.Create(Self,toCadastro);
    frmAtividadeReligiosa.ShowModal;
  finally
    FreeAndNil(frmAtividadeReligiosa);
  end;
end;

procedure TfrmPrincipal.CID1Click(Sender: TObject);
begin
  try
    frmCID := TfrmCID.Create(Self,toCadastro);
    frmCID.ShowModal;
  finally
    FreeAndNil(frmCID);
  end;
end;

procedure TfrmPrincipal.Cirurgias1Click(Sender: TObject);
begin
  try
    frmCirurgia := TfrmCirurgia.Create(Self,toCadastro);
    frmCirurgia.ShowModal;
  finally
    FreeAndNil(frmCirurgia);
  end;
end;

procedure TfrmPrincipal.Colaboradores1Click(Sender: TObject);
begin
  try
    frmColaborador := TfrmColaborador.Create(Self,toCadastro);
    frmColaborador.ShowModal;
  finally
    FreeAndNil(frmColaborador);
  end;
end;

procedure TfrmPrincipal.Convnios1Click(Sender: TObject);
begin
  try
    frmConvenios := TfrmConvenios.Create(self,toCadastro);
    frmConvenios.ShowModal;
  finally
    FreeAndNil(frmConvenios);
  end;
end;

procedure TfrmPrincipal.Diagnsticos1Click(Sender: TObject);
begin
  try
    frmDiagnosticoEnfermagem := TfrmDiagnosticoEnfermagem.Create(Self,toCadastro);
    frmDiagnosticoEnfermagem.ShowModal;
  finally
    FreeAndNil(frmDiagnosticoEnfermagem);
  end;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  try
    frmFornecedores := TfrmFornecedores.Create(self,toCadastro);
    frmFornecedores.ShowModal;
  finally
    FreeAndNil(frmFornecedores);
  end;
end;

procedure TfrmPrincipal.GruposCID1Click(Sender: TObject);
begin
  try
    frmGruposCID := TfrmGruposCID.Create(Self,toCadastro);
    frmGruposCID.ShowModal;
  finally
    FreeAndNil(frmGruposCID);
  end;
end;

procedure TfrmPrincipal.HistoricodeEvoluo1Click(Sender: TObject);
begin
  try
    frmHE := TfrmHE.Create(Self);
    frmHE.ShowModal;
  finally
    FreeAndNil(frmHE);
  end;
end;

procedure TfrmPrincipal.Nacionalidades1Click(Sender: TObject);
begin
  try
    frmNacionalidades := TfrmNacionalidades.Create(Self,toCadastro);
    frmNacionalidades.ShowModal;
  finally
    FreeAndNil(frmNacionalidades);
  end;
end;

procedure TfrmPrincipal.Pacientes1Click(Sender: TObject);
begin
  try
    frmPaciente := TfrmPaciente.Create(Self,toCadastro);
    frmPaciente.ShowModal;
  finally
    FreeAndNil(frmPaciente);
  end;
end;

procedure TfrmPrincipal.Prescies1Click(Sender: TObject);
begin
  try
    frmPrescricaoEnfermagem := TfrmPrescricaoEnfermagem.Create(Self,toCadastro);
    frmPrescricaoEnfermagem.ShowModal;
  finally
    FreeAndNil(frmPrescricaoEnfermagem);
  end;
end;

procedure TfrmPrincipal.Prescries1Click(Sender: TObject);
begin
  try
    frmPrescricaoEnfermagem := TfrmPrescricaoEnfermagem.Create(Self,toCadastro);
    frmPrescricaoEnfermagem.ShowModal;
  finally
    FreeAndNil(frmPrescricaoEnfermagem);
  end;
end;

procedure TfrmPrincipal.Religies1Click(Sender: TObject);
begin
  try
    frmReligiao := TfrmReligiao.Create(Self,toCadastro);
    frmReligiao.ShowModal;
  finally
    FreeAndNil(frmReligiao);
  end;
end;

initialization
   ReportMemoryLeaksOnShutDown := true;

end.


