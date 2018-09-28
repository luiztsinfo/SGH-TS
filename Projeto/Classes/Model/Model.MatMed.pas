unit Model.MatMed;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [AttTabela('estoque.matmed')]
  TMatMed = class(TTabela)
    private
      FId_grupo: integer;
      FId_local: integer;
      FControlado: integer;
      FDescricao: string;
      FId: integer;
      FId_unidade: integer;
      FEstoque_minimo: Double;
      FCusto_medio: Double;
      FCod_interno: integer;
      FTipo_Apresentacao: integer;
      FSituacao: string;

    public
      [attPk]
      property Id : integer read FId write FId;
      property Cod_Interno: integer read FCod_interno write FCod_interno;
      property Descricao: string read FDescricao write FDescricao;
      property Id_grupo: integer read FId_grupo write FId_grupo;
      property Controlado: integer read FControlado write FControlado;
      property Tipo_Apresentacao: integer read FTipo_Apresentacao write FTipo_Apresentacao;
      property Id_local: integer read FId_local write FId_local;
      property Estoque_minimo: Double read FEstoque_minimo write FEstoque_minimo;
      property Custo_medio: Double read FCusto_medio write FCusto_medio;
      property Id_unidade: integer read FId_unidade write FId_unidade;
      property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.
