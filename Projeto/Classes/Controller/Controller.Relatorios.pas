unit Controller.Relatorios;

interface

uses
  Lca.Orm.Comp.FireDac, Conexao, unDMRel, System.SysUtils,
  System.Classes, FireDAC.Comp.Client;

type
  TControllerRelatorios = class
    private
      FDao : TDaoFireDac;
      FConexao : TConexao;
    public
      procedure PassarSQL(aQuery: string; aSQL: TStringBuilder; aParams: array of Variant);
      procedure RelFaturamentoSintetico(aFatura: integer);
      constructor Create;
      destructor Destroy; override;
  end;

implementation

uses
  System.Variants;

{ TControllerRelatorios }

constructor TControllerRelatorios.Create;
begin

end;

destructor TControllerRelatorios.Destroy;
begin

  inherited;
end;

procedure TControllerRelatorios.PassarSQL(aQuery: string; aSQL: TStringBuilder; aParams: array of Variant);
var
  aQueryRel: TFDQuery;
  i : integer;
begin
  try
    TFDQuery(DMRelatorios.FindComponent(aQuery)).Close;
    TFDQuery(DMRelatorios.FindComponent(aQuery)).SQL.Clear;
    TFDQuery(DMRelatorios.FindComponent(aQuery)).SQL.Text := aSQL.ToString;

   for i := 0 to Length(aParams) -1 do
     if (i < Length(aParams)) then
     begin
       if VarIsType(aParams[i], varDate) then
         TFDQuery(DMRelatorios.FindComponent(aQuery)).Params[i].AsDateTime := VarToDateTime(aParams[i])
       else
         TFDQuery(DMRelatorios.FindComponent(aQuery)).Params[i].Value := aParams[i];
     end;

    TFDQuery(DMRelatorios.FindComponent(aQuery)).Active := True;
  except
    raise Exception.Create('Erro ao efetuar consulta para o relatório!');
  end;
end;

procedure TControllerRelatorios.RelFaturamentoSintetico(aFatura: integer);
var
  SQL: TStringBuilder;
  Params: array[0..0] of Variant;
begin
  SQL := TStringBuilder.Create;
  SQL.Append(' SELECT atend.id, atend.data_atendimento, atend.hora_atendimento,');
  SQL.Append(' pac.nome, atend.valor_total');
  SQL.Append(' FROM atendimentos.atendimentos atend');
  SQL.Append(' INNER JOIN pacientes pac');
  SQL.Append(' ON pac.id = atend.id_paciente');
  SQL.Append(' INNER JOIN faturamento.atendimentos_fatura afat');
  SQL.Append(' ON afat.id_atendimento = atend.id');
  SQL.Append(' WHERE afat.id_fatura = :fatura');

  Params[0] := aFatura;

  PassarSQL('qryFaturamentoConvenio',SQL,Params);
  FreeAndNil(SQL);
end;

end.
