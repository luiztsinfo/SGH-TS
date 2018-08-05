unit Conexao;

interface

uses
  Firedac.Comp.Client, IniFiles, SysUtils, VCL.Forms, Firedac.Phys.PG;

type
  TConexao = class
    private
      FFdCon : TFDConnection;
      FFdTran: TFDTransaction;

      FLogin: string;
      FPassword: string;
      FDatabase: string;
      FServer: string;
      FPort: string;

      function LeArquivoIniConexao: boolean;
      function ConectaBD: boolean;
      function GetFdCon: TFdConnection;
      function GetFdTran: TFdTransaction;
      procedure SetFdCon(const Value: TFdConnection);
      procedure SetFdTran(const Value: TFdTransaction);

    public
      constructor Create;
      destructor Destroy; override;

      property FdCon: TFdConnection read GetFdCon write SetFdCon;
      property FdTran: TFdTransaction read GetFdTran write SetFdTran;
  end;

implementation

{ TConexao }

function TConexao.ConectaBD: boolean;
begin
  try
    FdCon.DriverName := 'PG';

    FdCon.Params.UserName := FLogin;
    FdCon.Params.Password := FPassword;
    FdCon.Params.Database := FDatabase;
    FdCon.Params.Add('Server='+FServer);
    FdCon.Params.Add('Port='+FPort);

    FdCon.Transaction := FdTran;

    FdCon.Connected := True;

    Result := True;
  except
    Result := False;
  end;
end;

constructor TConexao.Create;
begin
  if not Assigned(FdCon) then
    FdCon   := TFDConnection.Create(nil);

  if not Assigned(FdTran) then
    FdTran  := TFDTransaction.Create(nil);

  if LeArquivoIniConexao then
    ConectaBD;
end;

destructor TConexao.Destroy;
begin
  FdCon.Free;
  FdTran.Free;
  inherited;
end;

function TConexao.GetFdCon: TFdConnection;
begin
  Result := FFdCon;
end;

function TConexao.GetFdTran: TFdTransaction;
begin
  Result := FFdTran;
end;

function TConexao.LeArquivoIniConexao: boolean;
var
  ArquivoINI: TIniFile;
begin
  try
    ArquivoINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Config.ini');
    FLogin     := ArquivoINI.ReadString('Conexao_Firedac', 'UserName', '');
    FPassword  := ArquivoINI.ReadString('Conexao_Firedac', 'Password', '');
    FDatabase  := ArquivoINI.ReadString('Conexao_Firedac', 'Database', '');
    FServer    := ArquivoINI.ReadString('Conexao_Firedac', 'Server', '');
    FPort      := ArquivoINI.ReadString('Conexao_Firedac', 'Port', '');

    Result := True;
    ArquivoINI.Free;
  except
    Result := False;
  end;
end;

procedure TConexao.SetFdCon(const Value: TFdConnection);
begin
  FFdCon := Value;
end;

procedure TConexao.SetFdTran(const Value: TFdTransaction);
begin
  FFdTran := Value;
end;

end.
