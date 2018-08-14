unit Model.Setor;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.SETORES')]
  TSetores = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.
