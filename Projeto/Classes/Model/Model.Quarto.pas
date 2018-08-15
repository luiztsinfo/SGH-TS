unit Model.Quarto;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.QUARTOS')]
  TQuartos = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FId_setor: Integer;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Id_setor: Integer read FId_setor write FId_setor;
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.

