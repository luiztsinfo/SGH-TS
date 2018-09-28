unit Model.Grupos_MatMed;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('estoque.grupos_matmed')]
  TGrupos_MatMed = class(TTabela)
    private
    FDescricao: string;
    FId: integer;
    FSituacao: string;

    public
      [attPk]
      property Id: integer read FId write FId;
      property Descricao: string read FDescricao write FDescricao;
      property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.