unit Model.Procedimento;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.PROCEDIMENTOS')]
  TProcedimentos = class(TTabela)
  private
    FId: Integer;
    FCodigo_amb_chpm: string;
    FDescricao: string;
    FCodigo_tuss: string;
    FSituacao: string;
    FValor_Padrao_Total: Double;
    FValor_Padrao_Operacional: Double;
    FValor_Padrao_Honorarios_Medicos: Double;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Codigo_amb_chpm: string read FCodigo_amb_chpm write FCodigo_amb_chpm;
    property Descricao: string read FDescricao write FDescricao;
    property Codigo_tuss: string read FCodigo_tuss write FCodigo_tuss;
    property Situacao: string read FSituacao write FSituacao;
    property Valor_Padrao_Total: Double read FValor_Padrao_Total write FValor_Padrao_Total;

    property Valor_Padrao_Operacional: Double read FValor_Padrao_Operacional
      write FValor_Padrao_Operacional;

    property Valor_Padrao_Honorarios_Medicos: Double read FValor_Padrao_Honorarios_Medicos
      write FValor_Padrao_Honorarios_Medicos;
  end;

implementation

end.