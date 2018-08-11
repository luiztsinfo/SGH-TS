unit Model.Colaboradores;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('COLABORADORES')]
  TColaboradores = class(TTabela)
  private
    FId: Integer;
    FNome: string;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    [attNotNull('Nome do colaborador não informado!')]
    property Nome: string read FNome write FNome;
    property Situacao : string read FSituacao write FSituacao;
  end;

implementation

end.

