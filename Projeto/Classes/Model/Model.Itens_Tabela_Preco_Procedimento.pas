unit Model.Itens_Tabela_Preco_Procedimento;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('faturamento.itens_tabela_preco_procedimentos')]
  TItens_Tabela_Preco_Procedimento = class(TTabela)
    private
      FValor_total: Double;
      Fid_tabela_procedimentos: integer;
      FId: integer;
      FId_Procedimento: integer;
      FHonorarios_medicos: Double;
      FCusto_Operacional: Double;

    public
      [attPk]
      property id : integer read FId write FId;
      property Id_tabela_procedimentos : integer read Fid_tabela_procedimentos
        write Fid_tabela_procedimentos;
      property Id_Procedimento : integer read FId_Procedimento write FId_Procedimento;
      property Custo_Operacional : Double read FCusto_Operacional write FCusto_Operacional;
      property Honorarios_medicos : Double read FHonorarios_medicos write FHonorarios_medicos;
      property Valor_total : Double read FValor_total write FValor_total;
  end;

implementation

end.
