unit Controller.Procedimento;

interface

uses Controller.Interfaces, Model.Procedimento, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes;

type
  TControllerProcedimento = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TProcedimentos;
      FConexao               : TConexao;
      FRegistros             : TDataSet;
      FDs                    : TDataSource;
      function GetDataSource : TDataSource;
    public
      FDao: TDaoFireDac;
      constructor Create;
      destructor  Destroy; override;
      procedure   Excluir;
      procedure   Consultar(sCampoWhere, sOrderBy: string);
      procedure   MostraDados;
      procedure   AlimentaCamposModel;
      procedure   Incluir;
      function    ExisteRegistro: Boolean;
      property    Model: TProcedimentos read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerProcedimento }

procedure TControllerProcedimento.AlimentaCamposModel;
begin
  FModel.Id               := FRegistros.FieldByName('id').AsInteger;
  FModel.Codigo_amb_chpm  := FRegistros.FieldByName('codigo_amb_chpm').AsString;
  FModel.Descricao        := FRegistros.FieldByName('descricao').AsString;
  FModel.Codigo_tuss      := FRegistros.FieldByName('codigo_tuss').AsString;

  TNumericField(FRegistros.FieldByName('valor_padrao_total')).DisplayFormat := ',0.00;-,0.00';
  TNumericField(FRegistros.FieldByName('valor_padrao_operacional')).DisplayFormat := ',0.00;-,0.00';
  TNumericField(FRegistros.FieldByName('valor_padrao_honorarios_medicos')).DisplayFormat := ',0.00;-,0.00';

  FModel.Valor_Padrao_Total     := FRegistros.FieldByName('valor_padrao_total').AsFloat;
  FModel.Valor_Padrao_Operacional := FRegistros.FieldByName('valor_padrao_operacional').AsFloat;
  FModel.Valor_Padrao_Honorarios_Medicos := FRegistros.FieldByName('valor_padrao_honorarios_medicos').AsFloat;
end;

procedure TControllerProcedimento.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerProcedimento.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TProcedimentos.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerProcedimento.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
end;

procedure TControllerProcedimento.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerProcedimento.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerProcedimento.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

procedure TControllerProcedimento.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerProcedimento.MostraDados;
begin
  try
    FModel.Situacao := sATIVO;

    FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao'],[],semLike);

    FDs.DataSet := FRegistros;
    alimentaCamposModel;
  finally

  end;
end;
end.

