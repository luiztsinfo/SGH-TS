unit Model.Cirurgia;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('cirurgias')]
  TCirurgia = class(TTabela)
  private
    FId: Integer;
    FDescricao: string;
    FSituacao: string;

    procedure SetDescricao(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetSituacao(const Value: string);
  public

    [attPK]
    property Id: Integer read FId write SetId;
    [AttNotNull('Descrição')]
    property Descricao: string read FDescricao write SetDescricao;
    [AttNotNull('Situação')]
    property Situacao: string read FSituacao write SetSituacao;
  end;

implementation

{ TCirurgia }

procedure TCirurgia.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TCirurgia.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCirurgia.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

end.
