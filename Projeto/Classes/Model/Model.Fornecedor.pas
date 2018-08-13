unit Model.Fornecedor;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.FORNECEDORES')]
  TFornecedores = class(TTabela)
  private
    FId: Integer;
    FRazaosocial: string;
    FSituacao: string;
  public
    [attPK]
    property Id: Integer read FId write FId;
    property Razaosocial: string read FRazaosocial write FRazaosocial;
    property Situacao: string read FSituacao write FSituacao;
  end;

implementation

end.
