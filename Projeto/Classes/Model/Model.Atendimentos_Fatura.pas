unit Model.Atendimentos_Fatura;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('faturamento.atendimentos_fatura')]
  TAtendimentos_Fatura = class(TTabela)
  private
    FId_Atendimento: integer;
    FId: integer;
    FId_Fatura: integer;

  public
    [attPk]
    property Id: integer read FId write FId;
    property Id_Atendimento: integer read FId_Atendimento write FId_Atendimento;
    property Id_Fatura: integer read FId_Fatura write FId_Fatura;
  end;

implementation

end.
