unit unConstantes;

interface

const

  iTpAMBULATORIAL = 1;
  iTpINTERNACAO = 2;

  stTODOS             = 'T';
  stABERTO            = 'A';
  stCONCLUIDO         = 'E';
  stCANCELADO         = 'C';

  sVAZIO = '';
  dtVAZIA = '  /  /    ';
  dtNula  = '30/12/1899';
  iVAZIO = '';

  // SEXOS
  iFEMININO = 1;
  iMASCULINO = 2;

  // CONSULTAS COM LIKE
  semLike = false;
  comLike = true;

  //CAMPOS CONSULTA
  iID   = 0;
  iNOME = 1;
  iCPF  = 2;
  iNASCIMENTO = 3;

  // TIPOS DE PESSOAS
  sTIPO_PESSOA_PACIENTE = 'P';
  sTIPO_PESSOA_COLABORADOR = 'C';

  // TIPOS ANTECEDENTES
  iTIPO_ANTECEDENTE_FAMILIAR = 1;
  iTIPO_ANTECEDENTE_PESSOAL = 2;

  // OPÇÕES CONTROLA BOTOES
  OPC_INCLUIR = 1;
  OPC_ALTERAR = 2;
  OPC_SALVAR  = 3;
  OPC_INATIVAR= 4;
  OPC_CANCELAR= 5;
  OPC_ONSHOW  = 6;

  // MODO SALVAR
  iINCLUINDO = 1;
  iALTERANDO = 2;

  // SITUACOES
  sINATIVO = 'I';
  sATIVO   = 'A';

  // CONSULTA HISTORICO DE EVOLUCAO
  iCONSULTA_POR_ID = 0;
  iCONSULTA_POR_PACIENTE = 1;
  iCONSULTA_POR_ENFERMEIRO = 2;

  iFILTRO_ADMISSAO = 0;
  iFILTRO_ALTA = 1;
  iFILTRO_NENHUM = 2;

  iORDENAR_POR_ID = 0;
  iORDENAR_POR_PACIENTE = 1;
  iORDENAR_POR_ENFERMEIRO = 2;

implementation

end.
