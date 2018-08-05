unit Model.Religiao;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('religioes')]
  TReligioes = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
  public

    [attPK]
    property Id: Integer read FId write FId;
    [AttNotNull('Descri��o')]
    property Descricao: string read FDescricao write FDescricao;
    [AttNotNull('Situa��o')]
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.

