unit Model.Convenios;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('CONVENIOS')]
  TConvenios = class(TTabela)
  private
    FId: Integer;
    FNome: string;
    FSituacao: string;
    FFonte_remuneracao: Integer;
    FEndereco: string;
    FId_cidade: Integer;
    FCep: string;
    FBairro: string;
    FCnpj_convenio: string;
    FRegistro_ans: string;
    FCod_hospital_convenio: string;
    FExporta_cih: Integer;
    FId_tabela_preco_matmed: Integer;
    FId_tabela_preco_procedimentos: Integer;
  public
    [attPK]
    property Id: Integer read FId write FId;
    [attNotNull('Campo Nome do Convênio é obrigatório!')]
    property Nome: string read FNome write FNome;
    property Situacao: string read FSituacao write FSituacao;
    property Fonte_remuneracao: Integer read FFonte_remuneracao write FFonte_remuneracao;
    property Endereco: string read FEndereco write FEndereco;
    property Id_cidade: Integer read FId_cidade write FId_cidade;
    property Cep: string read FCep write FCep;
    property Bairro: string read FBairro write FBairro;
    property Cnpj_convenio: string read FCnpj_convenio write FCnpj_convenio;
    property Registro_ans: string read FRegistro_ans write FRegistro_ans;
    property Cod_hospital_convenio: string read FCod_hospital_convenio write FCod_hospital_convenio;
    property Exporta_cih: Integer read FExporta_cih write FExporta_cih;
    property Id_tabela_preco_matmed: Integer read FId_tabela_preco_matmed write FId_tabela_preco_matmed;
    property Id_tabela_preco_procedimentos: Integer read FId_tabela_preco_procedimentos write FId_tabela_preco_procedimentos;

  end;

implementation

end.

