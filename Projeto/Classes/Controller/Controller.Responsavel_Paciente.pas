unit Controller.Responsavel_Paciente;

interface

uses Controller.Interfaces, Model.Responsavel_Paciente, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes, Model.Cidades;

type
  TControllerResponsavelPaciente = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TResponsavel_Paciente;
      FConexao               : TConexao;
      FRegistros             : TDataSet;
      FDs                    : TDataSource;
      FCidade                : TCidade;
      function GetDataSource : TDataSource;
    public
      FDao: TDaoFireDac;
      constructor Create;
      destructor  Destroy; override;
      function    GetNomeCidade(AID: Integer;iOperacao: integer): string;
      procedure   Excluir;
      procedure   Consultar(sCampoWhere, sOrderBy: string);
      procedure   MostraDados;
      procedure   AlimentaCamposModel;
      procedure   Incluir;
      function    ExisteRegistro: Boolean;
      property    Model: TResponsavel_Paciente read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerResponsavelPaciente }

procedure TControllerResponsavelPaciente.AlimentaCamposModel;
begin
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Nome := FRegistros.FieldByName('nome').AsString;
  FModel.Data_nascimento := FRegistros.FieldByName('data_nascimento').AsDateTime;
  FModel.Numero_documento := FRegistros.FieldByName('numero_documento').AsString;
  FModel.Tipo_documento := FRegistros.FieldByName('tipo_documento').AsInteger;
  FModel.Id_cidade := FRegistros.FieldByName('id_cidade').AsInteger;
  FModel.Bairro := FRegistros.FieldByName('bairro').AsString;
  FModel.Endereco := FRegistros.FieldByName('endereco').AsString;
  FModel.Fone := FRegistros.FieldByName('fone').AsString;
  FModel.Parentesco := FRegistros.FieldByName('parentesco').AsInteger;
  FModel.Local_Trabalho := FRegistros.FieldByName('local_trabalho').AsString;
end;

procedure TControllerResponsavelPaciente.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerResponsavelPaciente.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TResponsavel_Paciente.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  FCidade          := TCidade.Create;
  inherited;
end;

destructor TControllerResponsavelPaciente.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FDao.Free;
  FCidade.Free;
end;

procedure TControllerResponsavelPaciente.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerResponsavelPaciente.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerResponsavelPaciente.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerResponsavelPaciente.GetNomeCidade(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FCidade,'nome','id',AID,iOperacao);
end;

procedure TControllerResponsavelPaciente.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerResponsavelPaciente.MostraDados;
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

