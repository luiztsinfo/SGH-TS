unit Model.Itens_Tabela_Preco_Matmed;

interface

uses
  Lca.Orm.base, Lca.Orm.Atributos;

type
  [attTabela('faturamento.itens_tabela_preco_matmed')]
  TItens_Tabela_Preco_Matmed = class(TTabela)
    private
      FValor: Double;
      FId_tabela_preco_matmed: integer;
      FId: integer;
      FId_MatMed: integer;

    public
      [attPk]
      property Id: integer read FId write FId;
      property Id_tabela_preco_matmed: integer read FId_tabela_preco_matmed
        write FId_tabela_preco_matmed;
      property Id_MatMed: integer read FId_MatMed write FId_MatMed;
      property Valor: Double read FValor write FValor;

  end;

implementation

end.
