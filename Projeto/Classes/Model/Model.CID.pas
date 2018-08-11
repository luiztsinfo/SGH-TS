unit Model.CID;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('CID')]
  TCid = class(TTabela)
  private
    FId: string;
    FDescricao: string;
    FId_grupo_cid: Integer;
    FSexo: Integer;
    FCausa_obito: Integer;
    FSituacao: string;
  public
    [attPK]
    property Id: string read FId write FId;
    [attNotNull('Descrição do CID não informada')]
    property Descricao: string read FDescricao write FDescricao;
    [attNotNull('Grupo que o CID pertence, não informado!')]
    property Id_grupo_cid: Integer read FId_grupo_cid write FId_grupo_cid;

    property Sexo: Integer read FSexo write FSexo;

    property Causa_obito: Integer read FCausa_obito write FCausa_obito;
    property Situacao : string read FSituacao write FSituacao;
  end;

implementation

end.

