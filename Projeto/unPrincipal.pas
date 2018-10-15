unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Conexao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Menus, u_FrmBase, unFrmColaboradores,
  unFrmPrescricaoEnfermagem, unFrmHE, unFrmReligiao, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, unFrmAntecedentes, unFrmAlergia, unFrmCirurgia,
  unFrmAtividadeReligiosa, unFrmDiagnosticoEnfermagem, Controller.Alergia,
  Controller.Interfaces, unFrmNacionalidades, unFrmGruposCID, unFrmCID,
  unFrmTabelasPrecoMatMed, unFrmTabelasPrecoProcedimentos, unFrmConvenios,
  unFrmFornecedor, unFrmSetores, unFrmQuartos, unFrmLeitos, unFrmPacientes,
  unFrmProcedimentos, unFrmCidades, unFrmAtendimentos, unFrmResponsavelPaciente,
  unConstantes, dxGDIPlusClasses, unFrmFaturas, unFrmCompetencias;

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
    N01: TMenuItem;
    Setores1: TMenuItem;
    Quartos1: TMenuItem;
    Leitos1: TMenuItem;
    N3: TMenuItem;
    Procedimentos1: TMenuItem;
    CIdades1: TMenuItem;
    Atendimentos1: TMenuItem;
    Ambulatoriais1: TMenuItem;
    ResponsveldePaciente1: TMenuItem;
    N4: TMenuItem;
    Internao1: TMenuItem;
    Estoque1: TMenuItem;
    MatMeds1: TMenuItem;
    Grupos1: TMenuItem;
    Locais1: TMenuItem;
    UnidadesdeMedida1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    N5: TMenuItem;
    Competncias1: TMenuItem;
    Faturas1: TMenuItem;
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
    procedure Setores1Click(Sender: TObject);
    procedure Quartos1Click(Sender: TObject);
    procedure Leitos1Click(Sender: TObject);
    procedure Procedimentos1Click(Sender: TObject);
    procedure CIdades1Click(Sender: TObject);
    procedure Ambulatoriais1Click(Sender: TObject);
    procedure ResponsveldePaciente1Click(Sender: TObject);
    procedure Internao1Click(Sender: TObject);
    procedure MatMeds1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Locais1Click(Sender: TObject);
    procedure UnidadesdeMedida1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Faturas1Click(Sender: TObject);
    procedure Competncias1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unFrmMatMed, unFrmFundo, unFrmGrupos_MatMed, unFrmLocaisMatMed,
  unFrmUnidades_MatMed;

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

procedure TfrmPrincipal.Ambulatoriais1Click(Sender: TObject);
begin
  try
    frmAtendimentos := TfrmAtendimentos.Create(self,tpAmbulatorial);
    frmAtendimentos.ShowModal;
  finally
    FreeAndNil(frmAtendimentos);
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

procedure TfrmPrincipal.CIdades1Click(Sender: TObject);
begin
  try
    FrmCidades := TFrmCidades.Create(self,toCadastro);
    FrmCidades.ShowModal;
  finally
    FreeAndNil(FrmCidades);
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

procedure TfrmPrincipal.Competncias1Click(Sender: TObject);
begin
  FrmCompetencias := TFrmCompetencias.Create(self,toCadastro);
  try
    frmFundo.Show;
    FrmCompetencias.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(FrmCompetencias);
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

procedure TfrmPrincipal.Faturas1Click(Sender: TObject);
begin
  FrmFaturas := TFrmFaturas.Create(self,toCadastro);
  try
    frmFundo.Show;
    FrmFaturas.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(FrmFaturas);
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

procedure TfrmPrincipal.Grupos1Click(Sender: TObject);
var
  frmGrupos_MatMed: TfrmGruposMatMed;
begin
  frmGrupos_MatMed := TfrmGruposMatMed.Create(self,toCadastro);
  try
    frmFundo.Show;
    frmGrupos_MatMed.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmGrupos_MatMed);
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

procedure TfrmPrincipal.Internao1Click(Sender: TObject);
begin
  try
    frmAtendimentos := TfrmAtendimentos.Create(self,tpInternacao);
    frmAtendimentos.ShowModal;
  finally
    FreeAndNil(frmAtendimentos);
  end;
end;

procedure TfrmPrincipal.Leitos1Click(Sender: TObject);
begin
  try
    FrmLeitos := TFrmLeitos.Create(self,toCadastro);
    FrmLeitos.ShowModal;
  finally
    FreeAndNil(FrmLeitos);
  end;
end;

procedure TfrmPrincipal.Locais1Click(Sender: TObject);
var
  frmLocaisMatMed: TFrmLocaisMatMed;
begin
  frmLocaisMatMed := TFrmLocaisMatMed.Create(self,toCadastro);
  try
    frmFundo.Show;
    frmLocaisMatMed.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmLocaisMatMed);
  end;
end;

procedure TfrmPrincipal.MatMeds1Click(Sender: TObject);
var
  frmMatMeds : TFrmMatMeds;
begin
  frmMatMeds := TFrmMatMeds.Create(Self,toCadastro);
  try
    frmFundo.Show;
    frmMatMeds.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmMatMeds);
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
    frmPacientes := TfrmPacientes.Create(Self,toCadastro);
    frmFundo.Show;
    frmPacientes.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmPacientes);
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

procedure TfrmPrincipal.Procedimentos1Click(Sender: TObject);
begin
  try
    frmProcedimentos := TfrmProcedimentos.Create(self,toCadastro);
    frmProcedimentos.ShowModal;
  finally
    FreeAndNil(frmProcedimentos);
  end;
end;

procedure TfrmPrincipal.Quartos1Click(Sender: TObject);
begin
  try
    frmQuartos := TFrmQuartos.Create(self,toCadastro);
    frmQuartos.ShowModal;
  finally
    FreeAndNil(frmQuartos);
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

procedure TfrmPrincipal.ResponsveldePaciente1Click(Sender: TObject);
begin
  try
    frmResponsavelPaciente := TfrmResponsavelPaciente.Create(self,toCadastro);
    frmResponsavelPaciente.ShowModal;
  finally
    FreeAndNil(frmResponsavelPaciente);
  end;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
  try
    frmSetores := TfrmSetores.Create(self,toCadastro);
    frmSetores.ShowModal;
  finally
    FreeAndNil(frmSetores);
  end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  try
    frmPacientes := TfrmPacientes.Create(Self,toCadastro);
    frmFundo.Show;
    frmPacientes.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmPacientes);
  end;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  try
    frmAtendimentos := TfrmAtendimentos.Create(self,tpAmbulatorial);
    frmAtendimentos.ShowModal;
  finally
    FreeAndNil(frmAtendimentos);
  end;
end;

procedure TfrmPrincipal.UnidadesdeMedida1Click(Sender: TObject);
var
  frmUnidades_MatMed: TFrmUnidades_MatMed;
begin
  frmUnidades_MatMed := TFrmUnidades_MatMed.Create(self,toCadastro);
  try
    frmFundo.Show;
    frmUnidades_MatMed.ShowModal;
  finally
    frmFundo.Hide;
    FreeAndNil(frmUnidades_MatMed);
  end;
end;

initialization
   ReportMemoryLeaksOnShutDown := true;

end.


