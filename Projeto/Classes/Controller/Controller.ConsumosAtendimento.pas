unit Controller.ConsumosAtendimento;

interface

uses
  Conexao, Lca.Orm.Comp.FireDac, Model.Itens_Atendimento, Data.DB,
  System.SysUtils, Vcl.Dialogs, Model.MatMed, Model.Procedimento;

type
  TControllerConsumosAtendimento = class
    private
      FConexao: TConexao;
      FDao: TDaoFireDac;
      FModel: TItens_Atendimento;
      FRegistros: TDataSet;
      FRegistrosMatMeds: TDataSet;
      FRegistrosProcedimentos: TDataSet;
      FDsMatMeds: TDataSource;
      FDsProcedimentos: TDataSource;
      FDs: TDataSource;
      FMatMed: TMatMed;
      FProcedimento: TProcedimentos;
    public
      constructor Create;
      destructor Destroy;
      procedure LimparModel;
      function GetDescricaoProcedimento(AID: Integer;iOperacao: integer): string;
      function GetDescricaoMatMed(AID: Integer;iOperacao: integer): string;
      function IncluirItem(pTipoItem,pID: integer): Boolean;
      function ConsultarDadosAtendimento(pID: integer): boolean;
      function ConsultarMatMedsAtendimento(pID: integer): boolean;
      function ConsultarProcedimentosAtendimento(pID: integer): boolean;
      property Model : TItens_Atendimento read FModel write FModel;
      property Registros: TDataSet read FRegistros write FRegistros;
      property DsMatMeds: TDataSource read FDsMatMeds write FDsMatMeds;
      property DsProcedimentos: TDataSource read FDsProcedimentos write FDsProcedimentos;
  end;

implementation

{ TControllerConsumoAtendimento }

function TControllerConsumosAtendimento.ConsultarDadosAtendimento(
  pID: integer): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;
  try
    ConsultaSQL.Append(' SELECT pac.nome, at.tipo, at.id_convenio, c.nome AS Convenio,');
    ConsultaSQL.Append(' CASE WHEN at.tipo = 1 THEN :param1');
    ConsultaSQL.Append(' WHEN at.tipo = 2 THEN :param2');
    ConsultaSQL.Append(' END As TipoAtendimento');
    ConsultaSQL.Append(' FROM atendimentos.atendimentos at');
    ConsultaSQL.Append(' INNER JOIN pacientes pac');
    ConsultaSQL.Append(' ON pac.id = at.id_paciente');
    ConsultaSQL.Append(' INNER JOIN convenios c');
    ConsultaSQL.Append(' ON c.id = at.id_convenio');
    ConsultaSQL.Append(' LEFT JOIN faturamento.tabela_preco_matmed tmm');
    ConsultaSQL.Append(' ON c.id_tabela_preco_matmed = tmm.id');
    ConsultaSQL.Append(' LEFT JOIN faturamento.tabela_preco_procedimentos tp');
    ConsultaSQL.Append(' ON c.id_tabela_preco_procedimentos = tp.id');
    ConsultaSQL.Append(' WHERE at.id = :param3');
    FRegistros := FDao.ConsultaSql(ConsultaSQL.ToString,['Ambulat�rio','Interna��o',pID]);
    FDs.DataSet := FRegistros;
    FreeAndNil(ConsultaSQL);

    if FRegistros.RecordCount > 0 then
      Result := True
    else
    begin
      Result := False;
      MessageDlg('Atendimento n�o encontrado!',mtWarning,[mbOk],0);
    end;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar dados do atendimento!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

function TControllerConsumosAtendimento.ConsultarMatMedsAtendimento(
  pID: integer): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT it.*, mm.descricao As MatMed');
    ConsultaSQL.Append(' FROM atendimentos.itens_atendimento it');
    ConsultaSQL.Append(' INNER JOIN estoque.matmed mm');
    ConsultaSQL.Append(' ON it.id_matmed = mm.id');
    ConsultaSQL.Append(' WHERE it.id_atendimento = :param1');

    FRegistrosMatMeds := FDao.ConsultaSql(ConsultaSQL.ToString,[pID]);
    DsMatMeds.DataSet := FRegistrosMatMeds;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar itens consumidos no atendimento!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

function TControllerConsumosAtendimento.ConsultarProcedimentosAtendimento(
  pID: integer): boolean;
var
  ConsultaSQL: TStringBuilder;
begin
  ConsultaSQL := TStringBuilder.Create;

  try
    ConsultaSQL.Append(' SELECT it.*, p.descricao As Procedimento');
    ConsultaSQL.Append(' FROM atendimentos.itens_atendimento it');
    ConsultaSQL.Append(' INNER JOIN procedimentos p');
    ConsultaSQL.Append(' ON it.id_procedimento = p.id');
    ConsultaSQL.Append(' WHERE it.id_atendimento = :param1');

    FRegistrosProcedimentos := FDao.ConsultaSql(ConsultaSQL.ToString,[pID]);
    DsProcedimentos.DataSet := FRegistrosProcedimentos;
    FreeAndNil(ConsultaSQL);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao buscar procedimentos consumidos no atendimento!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

constructor TControllerConsumosAtendimento.Create;
begin
  FConexao := TConexao.Create;
  FDao := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FModel := TItens_Atendimento.Create;
  FDs := TDataSource.Create(nil);
  FDsMatMeds := TDataSource.Create(nil);
  FDsProcedimentos := TDataSource.Create(nil);
  FMatMed := TMatMed.Create;
  FProcedimento := TProcedimentos.Create;
end;

destructor TControllerConsumosAtendimento.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FDao);
  FreeAndNil(FModel);
  FreeAndNil(FDs);
  FreeAndNil(FDsMatMeds);
  FreeAndNil(FDsProcedimentos);
  FreeAndNil(FMatMed);
  FreeAndNil(FProcedimento);
  inherited;
end;

function TControllerConsumosAtendimento.GetDescricaoMatMed(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FMatMed,'descricao','id',AID,iOperacao);
end;

function TControllerConsumosAtendimento.GetDescricaoProcedimento(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FProcedimento,'descricao','id',AID,iOperacao);
end;

function TControllerConsumosAtendimento.IncluirItem(pTipoItem, pID: integer): Boolean;
begin
  try
    Model.Id_Atendimento := pID;
    FModel.Id := FDao.GetID(FModel,'id');
    FDao.Inserir(FModel);
    Result := True;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro incluir item no atendimento!' +#13+ e.Message);
      Result := False;
    end;
  end;
end;

procedure TControllerConsumosAtendimento.LimparModel;
begin
  Model.Id := 0;
  Model.Id_matmed := 0;
  Model.Id_procedimento := 0;
  Model.Data_Consumo := 0;
  Model.Quantidade := 0;
  Model.Valor := 0;
  Model.Valor_Total := 0;
  Model.Exame := 0;
  Model.Id_Atendimento := 0;
end;

end.
