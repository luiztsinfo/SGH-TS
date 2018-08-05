unit Model.GrupoCID;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('GRUPOS_CID')]
  TGrupos_cid = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    [attNotNull('Campo Descrição não preenchido')]
    property Descricao: string read FDescricao write FDescricao;
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.

