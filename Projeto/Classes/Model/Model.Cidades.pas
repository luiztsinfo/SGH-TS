unit Model.Cidades;

interface

uses Lca.Orm.Base, Lca.Orm.Atributos;

type
  [AttTabela('cidades')]
  TCidade = class(TTabela)
    private

      FId: integer;
      FNome: string;

      function GetFId: integer;
      function GetFNome: string;
      procedure SetFId(const Value: integer);
      procedure SetFNome(const Value: string);

    public
      [AttPk]
      [AttNotNull('Id')]
      property Id : integer read GetFId write SetFId;
      [AttNotNull('Nome')]
      property Nome : string read GetFNome write setFNome;

  end;

implementation

{ TCidade }

function TCidade.GetFId: integer;
begin
  Result := FId;
end;

function TCidade.GetFNome: string;
begin
  Result := FNome;
end;

procedure TCidade.SetFId(const Value: integer);
begin
  FId := Value;
end;

procedure TCidade.SetFNome(const Value: string);
begin
  FNome := Value;
end;

end.
