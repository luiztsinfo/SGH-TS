unit U_MyResult;

interface

type
  TMyResult = class
  private
    FValor: string;
    FStatus: Boolean;
    FMensagem: string;
    procedure SetMensagem(const Value: string);
    procedure SetStatus(const Value: Boolean);
    procedure SetValor(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;

    function ToJsonString: string;
    function ToObj(AValue: string): TMyResult;

    property Status: Boolean read FStatus write SetStatus;
    property Valor: string read FValor write SetValor;
    property Mensagem: string read FMensagem write SetMensagem;
  end;

implementation

uses
  System.SysUtils, System.JSON;

{ TMyResult }

constructor TMyResult.Create;
begin
  FStatus   := True;
  FValor    := '';
  FMensagem := '';
end;

destructor TMyResult.Destroy;
begin

  inherited;
end;

procedure TMyResult.SetMensagem(const Value: string);
begin
  FMensagem := Value;
end;

procedure TMyResult.SetStatus(const Value: Boolean);
begin
  FStatus := Value;
end;

procedure TMyResult.SetValor(const Value: string);
begin
  FValor := Value;
end;

function TMyResult.ToJsonString: string;
var
  vJObj: TJSONObject;
begin
  vJObj := TJSONObject.Create;
  try
    vJObj.AddPair('STATUS',   self.Status.ToString());
    vJObj.AddPair('VALOR',    self.FValor);
    vJObj.AddPair('MENSAGEM', self.FMensagem);

    Result := vJObj.ToJSON();
  finally
    FreeAndNil(vJObj);
  end;
end;

function TMyResult.ToObj(AValue: string): TMyResult;
var
  oObj: TJSONObject;
begin
  Result := Self;
  if (AValue <> '') then
  begin
    oObj := TJSONObject.ParseJSONValue(AValue) as TJSONObject;
    try
      Self.Status   := oObj.GetValue<Boolean>('STATUS');
      Self.Valor    := oObj.GetValue<string>('VALOR');
      Self.Mensagem := oObj.GetValue<string>('MENSAGEM');
    finally
      FreeAndNil(oObj);
    end;
  end;
end;

end.
