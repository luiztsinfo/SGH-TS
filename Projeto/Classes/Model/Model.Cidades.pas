unit Model.Cidades;

interface

uses Lca.Orm.Base, Lca.Orm.Atributos;

type
  [AttTabela('public.cidades')]
  TCidade = class(TTabela)
    private
      FId: integer;
      FNome: string;
      FSituacao: string;
      FCep_Unico: integer;
      FUF: integer;
      FCep: string;
      FCod_IBGE: integer;

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
      property Cep_Unico: integer read FCep_Unico write FCep_Unico;
      property Cep: string read FCep write FCep;
      property Cod_IBGE: integer read FCod_IBGE write FCod_IBGE;
      property UF: integer read FUF write FUF;
      property Situacao : string read FSituacao write FSituacao;

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
