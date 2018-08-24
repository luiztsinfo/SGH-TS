unit Model.Paciente;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.PACIENTES')]
  TPacientes = class(TTabela)
  private
    FId: Integer;
    FNome: string;
    FId_cidade: Integer;
    FTipo_pessoa: string;
    FRegistro_profissional: string;
    FNascimento: TDateTime;
    FSituacao: string;
    FTipo_registro: Integer;
    FSexo: Integer;
    FCor: Integer;
    FEstado_civil: Integer;
    FEscolaridade: Integer;
    FId_religiao: Integer;
    FNome_mae: string;
    FNome_pai: string;
    FId_naturalidade: Integer;
    FId_nacionalidade: Integer;
    FConjuge: string;
    FEtnia: Integer;
    FTipo_sangue: Integer;
    FFone_principal: string;
    FFone_adicional1: string;
    FDesc_fone1: string;
    FFone_adicional2: string;
    FDesc_fone2: string;
    FCns: string;
    FCpf: string;
    FRg: string;
    FData_expedicao_rg: TDateTime;
    FOrgao_expedidor_rg: Integer;
    FUf_expedicao_rg: Integer;
    FEndereco: string;
    FNumero: string;
    FCep: string;
    FBairro: string;
    FComplemento: string;
    FLocal_trabalho: string;
    FProfissao: string;
    FEmail: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Id_cidade: Integer read FId_cidade write FId_cidade;
    property Nascimento: TDateTime read FNascimento write FNascimento;
    property Situacao: string read FSituacao write FSituacao;
    property Sexo: Integer read FSexo write FSexo;
    property Cor: Integer read FCor write FCor;
    property Estado_civil: Integer read FEstado_civil write FEstado_civil;
    property Escolaridade: Integer read FEscolaridade write FEscolaridade;
    property Id_religiao: Integer read FId_religiao write FId_religiao;
    property Nome_mae: string read FNome_mae write FNome_mae;
    property Nome_pai: string read FNome_pai write FNome_pai;
    property Id_naturalidade: Integer read FId_naturalidade write FId_naturalidade;
    property Id_nacionalidade: Integer read FId_nacionalidade write FId_nacionalidade;
    property Conjuge: string read FConjuge write FConjuge;
    property Etnia: Integer read FEtnia write FEtnia;
    property Tipo_sangue: Integer read FTipo_sangue write FTipo_sangue;
    property Fone_principal: string read FFone_principal write FFone_principal;
    property Fone_adicional1: string read FFone_adicional1 write FFone_adicional1;
    property Desc_fone1: string read FDesc_fone1 write FDesc_fone1;
    property Fone_adicional2: string read FFone_adicional2 write FFone_adicional2;
    property Desc_fone2: string read FDesc_fone2 write FDesc_fone2;
    property Cns: string read FCns write FCns;
    property Cpf: string read FCpf write FCpf;
    property Rg: string read FRg write FRg;
    property Data_expedicao_rg: TDateTime read FData_expedicao_rg write FData_expedicao_rg;
    property Orgao_expedidor_rg: Integer read FOrgao_expedidor_rg write FOrgao_expedidor_rg;
    property Uf_expedicao_rg: Integer read FUf_expedicao_rg write FUf_expedicao_rg;
    property Endereco: string read FEndereco write FEndereco;
    property Numero: string read FNumero write FNumero;
    property Cep: string read FCep write FCep;
    property Bairro: string read FBairro write FBairro;
    property Complemento: string read FComplemento write FComplemento;
    property Local_trabalho: string read FLocal_trabalho write FLocal_trabalho;
    property Profissao: string read FProfissao write FProfissao;
    property Email: string read FEmail write FEmail;
  end;

implementation

end.

