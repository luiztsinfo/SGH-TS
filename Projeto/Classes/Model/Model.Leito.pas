unit Model.Leito;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.LEITOS')]
  TLeitos = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FId_quarto: Integer;
    FStatus: Integer;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Id_quarto: Integer read FId_quarto write FId_quarto;
    property Status: Integer read FStatus write FStatus;
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.

