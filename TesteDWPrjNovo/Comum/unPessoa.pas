unit unPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
      FId: integer;
      FNome: string;
      procedure SetId(const Value: integer);
      procedure SetNome(const Value: string);

    public
      constructor Create;
      destructor Destroy; override;

      function ToObj(AValue: string): TPessoa;
      function ToJsonString: string;

      property Id : integer read FId write SetId;
      property Nome : string read FNome write SetNome;

end;

implementation

uses
  System.JSON;

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TPessoa.ToJsonString: string;
var
  vJObj: TJSONObject;
begin
  vJObj := TJSONObject.Create;

  try
    vJObj.AddPair('ID', self.Id.ToString());
    vJObj.AddPair('NOME', self.Nome.ToInteger);

    Result := vJObj.ToJSON();
  finally
    FreeAndNil(vJObj);
  end;
end;

function TPessoa.ToObj(AValue: string): TPessoa;
var
  oObj: TJSONObject;
begin
  oObj := TJSONObject.Create;

  Result := Self;
  if (AValue <> '') then
  begin
    oObj := TJSONObject.ParseJSONValue(AValue) as TJSONObject;

    try
      Self.FId := oObj.GetValue<Integer>('id');
      Self.FNome := oObj.GetValue<string>('nome');
    finally
      FreeAndNil(oObj);
    end;
  end;
end;

end.