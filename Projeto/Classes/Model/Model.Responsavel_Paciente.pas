unit Model.Responsavel_Paciente;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.responsavel_paciente')]
  TResponsavel_Paciente = class(TTabela)
    private
      FFone: string;
      FBairro: string;
      FLocal_trabalho: string;
      FId: integer;
      FNumero_documento: string;
      FData_nascimento: TDateTime;
      FParentesco: integer;
      FNome: string;
      FEndereco: string;
      FId_cidade: integer;
      FTipo_documento: integer;
      FSituacao: string;

    public
      [attPk]
      property Id: integer read FId write FId;
      property Nome: string read FNome write FNome;
      property Data_nascimento: TDateTime read FData_nascimento write FData_nascimento;
      property Numero_documento: string read FNumero_documento write FNumero_documento;
      property Tipo_documento: integer read FTipo_documento write FTipo_documento;
      property Id_cidade: integer read FId_cidade write FId_cidade;
      property Bairro: string read FBairro write FBairro;
      property Endereco: string read FEndereco write FEndereco;
      property Fone: string read FFone write FFone;
      property Parentesco: integer read FParentesco write FParentesco;
      property Local_Trabalho: string read FLocal_trabalho write FLocal_trabalho;
      property Situacao: string read FSituacao write FSituacao;

  end;

implementation

end.
