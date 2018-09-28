unit Model.Unidades_MatMed;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('estoque.unidades_matmed')]
  TUnidades_MatMed = class(TTabela)
    private
      FDescricao: string;
      FId: integer;
      FAbreviacao: string;
      FSituacao: string;

    public
      [attPk]
      property Id: integer read FId write FId;
      property Descricao: string read FDescricao write FDescricao;
      property Abreviacao: string read FAbreviacao write FAbreviacao;
      property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.
