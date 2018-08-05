unit Model.Nacionalidade;

interface

uses
  Lca.Orm.Base, Lca.Orm.Atributos;

type
  [attTabela('public.nacionalidades')]
  TNacionalidade = class(TTabela)
    private
    FDescricao: string;
    FId: Integer;
    FSituacao: string;
    procedure SetDescricao(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetSituacao(const Value: string);

    public
      [attPK]
      property Id: Integer read FId write SetId;
      [AttNotNull('Descrição')]
      property Descricao: string read FDescricao write SetDescricao;
      property Situacao: string read FSituacao write SetSituacao;

  end;

implementation

{ TNacionalidade }

procedure TNacionalidade.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TNacionalidade.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TNacionalidade.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

end.
