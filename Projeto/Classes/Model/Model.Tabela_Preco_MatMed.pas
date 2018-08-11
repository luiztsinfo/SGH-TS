unit Model.Tabela_Preco_MatMed;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('faturamento.TABELA_PRECO_MATMED')]
  TTabela_preco_matmed = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FVigencia_geral: TDateTime;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    [attNotNull('Descri��o da Tabela de Pre�o de MatMed n�o informada!')]
    property Descricao: string read FDescricao write FDescricao;
    property Vigencia_geral: TDateTime read FVigencia_geral write FVigencia_geral;
    property Situacao : string read FSituacao write FSituacao;
  end;

implementation

end.

