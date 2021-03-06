unit Model.Competencias;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('faturamento.competencias')]
  TCompetencias = class(TTabela)
    private
    FId_Convenio: integer;
    FDescricao: string;
    FId: integer;
    FStatus: integer;
    FSituacao: string;
    FData_Abertura: TDateTime;
    FData_Fechamento: TDateTime;

    public
      [attPk]
      property Id: integer read FId write FId;
      property Descricao: string read FDescricao write FDescricao;
      property Status: integer read FStatus write FStatus;
      property Id_Convenio: integer read FId_Convenio write FId_Convenio;
      property Situacao: string read FSituacao write FSituacao;
      property Data_Abertura: TDateTime read FData_Abertura write FData_Abertura;
      property Data_Fechamento: TDateTime read FData_Fechamento write FData_Fechamento;
  end;

implementation

end.
