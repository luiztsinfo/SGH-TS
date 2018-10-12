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
    FValor_Padrao: Double;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Codigo_amb_chpm: string read FCodigo_amb_chpm write FCodigo_amb_chpm;
    property Descricao: string read FDescricao write FDescricao;
    property Codigo_tuss: string read FCodigo_tuss write FCodigo_tuss;
    property Situacao: string read FSituacao write FSituacao;
    property Valor_Padrao: Double read FValor_Padrao write FValor_Padrao;
  end;

implementation

end.