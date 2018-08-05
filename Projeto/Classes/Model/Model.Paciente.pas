unit Model.Paciente;

interface

uses Lca.Orm.Base, Lca.Orm.Atributos;

type
  [AttTabela('pessoas')]
  TPessoa = class(TTabela)
    private
      FId: integer;
      FNome: string;
      FId_cidade: integer;
      FTipo_pessoa: string;
      FRegistro_conselho: string;
      FNascimento: TDateTime;
      FSituacao: string;

      function GetId: integer;
      procedure setId(const Value: integer);
      function GetNome: string;
      procedure SetNome(const Value: string);
      function GetId_Cidade: integer;
      procedure SetId_Cidade(const Value: integer);
      function GetNascimento: TDateTime;
      function GetRegistro_conselho: string;
      function GetTipo_pessoa: string;
      procedure SetNascimento(const Value: TDateTime);
      procedure SetRegistro_conselho(const Value: string);
      procedure SetTipo_pessoa(const Value: string);
      function GetSituacao: string;
      procedure SetSituacao(const Value: string);

    public
      [AttPk]
      [AttNotNull('Id')]
      property Id : integer read GetId write setId;
      [AttNotNull('Nome')]
      property Nome : string read GetNome write SetNome;
      [AttNotNull('Id cidade')]
      property Id_cidade : integer read GetId_Cidade write SetId_Cidade;
      [AttNotNull('Tipo de Pessoa')]
      property Tipo_pessoa : string read GetTipo_pessoa write SetTipo_pessoa;
      property Registro_conselho : string read GetRegistro_conselho write SetRegistro_conselho;
      [AttNotNull('Nascimento')]
      property Nascimento : TDateTime read GetNascimento write SetNascimento;
      property Situacao : string read GetSituacao write SetSituacao;
  end;

implementation

{ TPessoa }

function TPessoa.GetId: integer;
begin
  Result := FId;
end;

function TPessoa.GetId_Cidade: integer;
begin
  Result := FId_cidade;
end;

function TPessoa.GetNascimento: TDateTime;
begin
  Result := FNascimento;
end;

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;

function TPessoa.GetRegistro_conselho: string;
begin
  Result := FRegistro_conselho;
end;

function TPessoa.GetSituacao: string;
begin
  Result := FSituacao;
end;

function TPessoa.GetTipo_pessoa: string;
begin
  Result := FTipo_pessoa;
end;

procedure TPessoa.setId(const Value: integer);
begin
  FId := Value;
end;


procedure TPessoa.SetId_Cidade(const Value: integer);
begin
  FId_cidade := Value;
end;

procedure TPessoa.SetNascimento(const Value: TDateTime);
begin
  FNascimento := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;


procedure TPessoa.SetRegistro_conselho(const Value: string);
begin
  FRegistro_conselho := Value;
end;

procedure TPessoa.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

procedure TPessoa.SetTipo_pessoa(const Value: string);
begin
  FTipo_pessoa := Value;
end;

end.
