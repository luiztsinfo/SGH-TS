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
    [AttNotNull('Descrição')]
    property Descricao: string read FDescricao write FDescricao;
    [AttNotNull('Situação')]
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.

