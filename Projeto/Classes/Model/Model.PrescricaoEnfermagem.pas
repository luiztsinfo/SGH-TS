unit Model.PrescricaoEnfermagem;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('he.prescricoes_enfermagem')]
  TPrescricoes_enfermagem = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;
    procedure SetDescricao(const Value: string);
    procedure SetSituacao(const Value: string);
  public

    [attPK]
    property Id: Integer read FId write FId;
    [AttNotNull('Descri��o')]
    property Descricao: string read FDescricao write SetDescricao;
    [AttNotNull('Situa��o')]
    property Situacao: string read FSituacao write SetSituacao;
  end;

implementation

{ TPrescricoes_enfermagem }

procedure TPrescricoes_enfermagem.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TPrescricoes_enfermagem.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

end.

