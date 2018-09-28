program SGH;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  EDebugExports,
  EDebugJCL,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  ExceptionLog7,
  {$ENDIF EurekaLog}
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  Controller.Paciente in 'Classes\Controller\Controller.Paciente.pas',
  Model.HE in 'Classes\Model\Model.HE.pas',
  Model.Pessoa in 'Classes\Model\Model.Pessoa.pas',
  Lca.Orm.Atributos in 'Classes\ORM\Lca.Orm.Atributos.pas',
  Lca.Orm.Base in 'Classes\ORM\Lca.Orm.Base.pas',
  Conexao in 'Classes\Conexao.pas',
  Lca.Orm.Comp.FireDac in 'Classes\ORM\Lca.Orm.Comp.FireDac.pas',
  Lca.Orm.GerarClasse.BancoFirebird in 'Classes\ORM\Lca.Orm.GerarClasse.BancoFirebird.pas',
  Lca.Orm.GerarClasseFireDac in 'Classes\ORM\Lca.Orm.GerarClasseFireDac.pas',
  Lca.Orm.GerarClasse in 'Classes\ORM\Lca.Orm.GerarClasse.pas',
  unConstantes in 'Classes\unConstantes.pas',
  Model.Cidades in 'Classes\Model\Model.Cidades.pas',
  unFrmColaboradores in 'Forms\unFrmColaboradores.pas' {frmColaborador},
  Controller.Colaborador in 'Classes\Controller\Controller.Colaborador.pas',
  u_FrmBase in 'Forms\u_FrmBase.pas' {frmBase},
  unFrmPrescricaoEnfermagem in 'Forms\unFrmPrescricaoEnfermagem.pas' {frmPrescricaoEnfermagem},
  Model.PrescricaoEnfermagem in 'Classes\Model\Model.PrescricaoEnfermagem.pas',
  Controller.PrescricaoEnfermagem in 'Classes\Controller\Controller.PrescricaoEnfermagem.pas',
  unFrmHE in 'Forms\unFrmHE.pas' {frmHE},
  Controller.HE in 'Classes\Controller\Controller.HE.pas',
  unFrmPreenchimentoHE in 'Forms\unFrmPreenchimentoHE.pas' {frmPreenchimentoHE},
  unFrmReligiao in 'Forms\unFrmReligiao.pas' {frmReligiao},
  Controller.Religiao in 'Classes\Controller\Controller.Religiao.pas',
  Model.Religiao in 'Classes\Model\Model.Religiao.pas',
  unFrmAntecedentes in 'Forms\unFrmAntecedentes.pas' {frmAntecedentes},
  Model.Antecedentes in 'Classes\Model\Model.Antecedentes.pas',
  Controller.Antecedentes in 'Classes\Controller\Controller.Antecedentes.pas',
  Model.Antecedente_Paciente in 'Classes\Model\Model.Antecedente_Paciente.pas',
  Model.Alergia in 'Classes\Model\Model.Alergia.pas',
  Controller.Alergia in 'Classes\Controller\Controller.Alergia.pas',
  unFrmAlergia in 'Forms\unFrmAlergia.pas' {frmAlergia},
  Model.Alergia_HE in 'Classes\Model\Model.Alergia_HE.pas',
  unFrmCirurgia in 'Forms\unFrmCirurgia.pas' {frmCirurgia},
  Model.Cirurgia in 'Classes\Model\Model.Cirurgia.pas',
  Controller.Cirurgia in 'Classes\Controller\Controller.Cirurgia.pas',
  Model.Cirurgia_HE in 'Classes\Model\Model.Cirurgia_HE.pas',
  unFrmAtividadeReligiosa in 'Forms\unFrmAtividadeReligiosa.pas' {frmAtividadeReligiosa},
  Controller.AtividadeReligiosa in 'Classes\Controller\Controller.AtividadeReligiosa.pas',
  Model.AtividadeReligiosa in 'Classes\Model\Model.AtividadeReligiosa.pas',
  Model.AtividadeReligiosa_HE in 'Classes\Model\Model.AtividadeReligiosa_HE.pas',
  Model.Infs_antecedentes in 'Classes\Model\Model.Infs_antecedentes.pas',
  Model.Homem_he in 'Classes\Model\Model.Homem_he.pas',
  Model.Mulher_he in 'Classes\Model\Model.Mulher_he.pas',
  Model.Sinais_Vitais_HE in 'Classes\Model\Model.Sinais_Vitais_HE.pas',
  Model.CondicoesGerais_He in 'Classes\Model\Model.CondicoesGerais_He.pas',
  Model.Avaliacao_Neurologica_He in 'Classes\Model\Model.Avaliacao_Neurologica_He.pas',
  Model.AtividadeFisica_HE in 'Classes\Model\Model.AtividadeFisica_HE.pas',
  Model.Pele_HE in 'Classes\Model\Model.Pele_HE.pas',
  Model.Couro_Cabeludo_He in 'Classes\Model\Model.Couro_Cabeludo_He.pas',
  Model.Olhos_HE in 'Classes\Model\Model.Olhos_HE.pas',
  Model.Ouvidos_HE in 'Classes\Model\Model.Ouvidos_HE.pas',
  Model.Nariz_HE in 'Classes\Model\Model.Nariz_HE.pas',
  Model.Boca_Faringe_He in 'Classes\Model\Model.Boca_Faringe_He.pas',
  Model.Vias_Aereas_HE in 'Classes\Model\Model.Vias_Aereas_HE.pas',
  Model.Pescoco_HE in 'Classes\Model\Model.Pescoco_HE.pas',
  Model.Torax_HE in 'Classes\Model\Model.Torax_HE.pas',
  Model.Ausculta_Pulmonar_HE in 'Classes\Model\Model.Ausculta_Pulmonar_HE.pas',
  Model.Ausculta_Cardiaca_HE in 'Classes\Model\Model.Ausculta_Cardiaca_HE.pas',
  Model.TGI_HE in 'Classes\Model\Model.TGI_HE.pas',
  Model.Avaliacao_Renal_HE in 'Classes\Model\Model.Avaliacao_Renal_HE.pas',
  Model.Genitais_HE in 'Classes\Model\Model.Genitais_HE.pas',
  Model.Extremidades_HE in 'Classes\Model\Model.Extremidades_HE.pas',
  unFrmDiagnosticoEnfermagem in 'Forms\unFrmDiagnosticoEnfermagem.pas' {frmDiagnosticoEnfermagem},
  Controller.DiagnosticoEnfermagem in 'Classes\Controller\Controller.DiagnosticoEnfermagem.pas',
  Model.Diagnostico_Enfermagem in 'Classes\Model\Model.Diagnostico_Enfermagem.pas',
  Model.Diagnosticos_HE in 'Classes\Model\Model.Diagnosticos_HE.pas',
  Model.Risco_Ulcera_Decubito_HE in 'Classes\Model\Model.Risco_Ulcera_Decubito_HE.pas',
  Model.Risco_Queda_HE in 'Classes\Model\Model.Risco_Queda_HE.pas',
  Model.Prescricao_Enfermagem_HE in 'Classes\Model\Model.Prescricao_Enfermagem_HE.pas',
  Model.Aprazamento_Prescricao_HE in 'Classes\Model\Model.Aprazamento_Prescricao_HE.pas',
  unDMRel in 'Classes\unDMRel.pas' {DMRel: TDataModule},
  Controller.Interfaces in 'Classes\Controller\Controller.Interfaces.pas',
  unFrmNacionalidades in 'Forms\unFrmNacionalidades.pas' {frmNacionalidades},
  Controller.Nacionalidade in 'Classes\Controller\Controller.Nacionalidade.pas',
  Model.Nacionalidade in 'Classes\Model\Model.Nacionalidade.pas',
  unFrmGruposCID in 'Forms\unFrmGruposCID.pas' {frmGruposCID},
  Controller.GrupoCID in 'Classes\Controller\Controller.GrupoCID.pas',
  Model.GrupoCID in 'Classes\Model\Model.GrupoCID.pas',
  Model.CID in 'Classes\Model\Model.CID.pas',
  Controller.CID in 'Classes\Controller\Controller.CID.pas',
  unFrmCID in 'Forms\unFrmCID.pas' {frmCID},
  unFrmBaseBasico in 'Forms\unFrmBaseBasico.pas' {frmBaseBasico},
  Controller.Base in 'Classes\Controller\Controller.Base.pas',
  Model.Interfaces in 'Classes\Model\Model.Interfaces.pas',
  unFrmBuscaBase in 'Forms\unFrmBuscaBase.pas' {frmBuscaBase},
  Model.Colaboradores in 'Classes\Model\Model.Colaboradores.pas',
  unFrmTabelasPrecoMatMed in 'Forms\unFrmTabelasPrecoMatMed.pas' {frmTabelasMatMed},
  Model.Tabela_Preco_MatMed in 'Classes\Model\Model.Tabela_Preco_MatMed.pas',
  Controller.TabelaPrecoMatMed in 'Classes\Controller\Controller.TabelaPrecoMatMed.pas',
  unFrmTabelasPrecoProcedimentos in 'Forms\unFrmTabelasPrecoProcedimentos.pas' {frmTabelasPrecoProcedimentos},
  Model.Tabela_Preco_Procedimentos in 'Classes\Model\Model.Tabela_Preco_Procedimentos.pas',
  Controller.TabelaPrecoProcedimentos in 'Classes\Controller\Controller.TabelaPrecoProcedimentos.pas',
  Model.Convenios in 'Classes\Model\Model.Convenios.pas',
  unFrmConvenios in 'Forms\unFrmConvenios.pas' {frmConvenios},
  Controller.Convenio in 'Classes\Controller\Controller.Convenio.pas',
  unFrmFornecedor in 'Forms\unFrmFornecedor.pas' {frmFornecedores},
  Model.Fornecedor in 'Classes\Model\Model.Fornecedor.pas',
  Controller.Fornecedor in 'Classes\Controller\Controller.Fornecedor.pas',
  Model.Setor in 'Classes\Model\Model.Setor.pas',
  unFrmSetores in 'Forms\unFrmSetores.pas' {frmSetores},
  Controller.Setor in 'Classes\Controller\Controller.Setor.pas',
  unFrmQuartos in 'Forms\unFrmQuartos.pas' {frmQuartos},
  Controller.Quarto in 'Classes\Controller\Controller.Quarto.pas',
  Model.Quarto in 'Classes\Model\Model.Quarto.pas',
  unFrmLeitos in 'Forms\unFrmLeitos.pas' {frmLeitos},
  Controller.Leito in 'Classes\Controller\Controller.Leito.pas',
  Model.Leito in 'Classes\Model\Model.Leito.pas',
  unFrmPacientes in 'Forms\unFrmPacientes.pas' {frmPacientes},
  Model.Paciente in 'Classes\Model\Model.Paciente.pas',
  unFrmProcedimentos in 'Forms\unFrmProcedimentos.pas' {frmProcedimentos},
  Controller.Procedimento in 'Classes\Controller\Controller.Procedimento.pas',
  Model.Procedimento in 'Classes\Model\Model.Procedimento.pas',
  unFuncoes in 'Classes\unFuncoes.pas',
  unFrmCidades in 'Forms\unFrmCidades.pas' {frmCidades},
  Controller.Cidade in 'Classes\Controller\Controller.Cidade.pas',
  unFrmAtendimentos in 'Forms\unFrmAtendimentos.pas' {frmAtendimentos},
  Controller.Atendimentos in 'Classes\Controller\Controller.Atendimentos.pas',
  Model.Atendimentos in 'Classes\Model\Model.Atendimentos.pas',
  Model.Responsavel_Paciente in 'Classes\Model\Model.Responsavel_Paciente.pas',
  Controller.Responsavel_Paciente in 'Classes\Controller\Controller.Responsavel_Paciente.pas',
  unFrmResponsavelPaciente in 'Forms\unFrmResponsavelPaciente.pas' {frmResponsavelPaciente},
  unFrmOpcaoAtendimento in 'Forms\unFrmOpcaoAtendimento.pas' {frmOpcaoAtendimento},
  unFrmConsumosAtendimentos in 'Forms\unFrmConsumosAtendimentos.pas' {frmConsumosAtendimentos},
  unFrmFundo in 'Forms\unFrmFundo.pas' {frmFundo},
  Controller.ConsumoAtendimento in 'Classes\Controller\Controller.ConsumoAtendimento.pas',
  Model.MatMed in 'Classes\Model\Model.MatMed.pas',
  unFrmMatMed in 'Forms\unFrmMatMed.pas' {frmMatMeds},
  Controller.MatMed in 'Classes\Controller\Controller.MatMed.pas',
  Model.Grupos_MatMed in 'Classes\Model\Model.Grupos_MatMed.pas',
  Controller.Grupo_MatMed in 'Classes\Controller\Controller.Grupo_MatMed.pas',
  unFrmGrupos_MatMed in 'Forms\unFrmGrupos_MatMed.pas' {frmGruposMatMed},
  Model.Locais_MatMed in 'Classes\Model\Model.Locais_MatMed.pas',
  Controller.Local_MatMed in 'Classes\Controller\Controller.Local_MatMed.pas',
  unFrmLocaisMatMed in 'Forms\unFrmLocaisMatMed.pas' {frmLocaisMatMed},
  Model.Unidades_MatMed in 'Classes\Model\Model.Unidades_MatMed.pas',
  Controller.Unidade_MatMed in 'Classes\Controller\Controller.Unidade_MatMed.pas',
  unFrmUnidades_MatMed in 'Forms\unFrmUnidades_MatMed.pas' {frmUnidades_MatMed};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMRel, DMRel);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmFundo, frmFundo);
  Application.Run;
end.











































