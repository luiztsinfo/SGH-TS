unit Controller.Paciente;

interface

uses Controller.Interfaces, Model.Paciente, Lca.Orm.Comp.Firedac,
  Conexao, Data.DB, unConstantes, Model.Cidades, Model.Religiao,
  Model.Nacionalidade;

type
  TControllerPaciente = class(TInterfacedObject, iControllerCadastros)
    private
      FModel                 : TPacientes;
      FCidade                : TCidade;
      FReligiao              : TReligioes;
      FNacionalidade         : TNacionalidade;
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
      function    GetNomeCidade(AID: Integer;iOperacao: integer): string;
      function    GetDescricaoReligiao(AID: Integer;iOperacao: integer): string;          
      function    GetDescricaoNacionalidade(AID: Integer;iOperacao: integer): string;
      function    ExisteRegistro: Boolean;
      property    Model: TPacientes read FModel;
      property    DataSource: TDataSource read GetDataSource;
  end;

implementation

 { TControllerPaciente }

procedure TControllerPaciente.AlimentaCamposModel;
begin
  //Preencher com FModel.Campo := FRegistros(campo).AsInteger
  FModel.Id := FRegistros.FieldByName('id').AsInteger;
  FModel.Nome := FRegistros.FieldByName('nome').AsString;
  FModel.Id_cidade := FRegistros.FieldByName('id_cidade').AsInteger;
  FModel.Nascimento := FRegistros.FieldByName('nascimento').AsDateTime;
  FModel.Situacao := FRegistros.FieldByName('situacao').AsString;
  FModel.Sexo := FRegistros.FieldByName('sexo').AsInteger;
  FModel.Cor := FRegistros.FieldByName('cor').AsInteger;
  FModel.Estado_civil := FRegistros.FieldByName('estado_civil').AsInteger;
  FModel.Escolaridade := FRegistros.FieldByName('escolaridade').AsInteger;
  FModel.Id_religiao := FRegistros.FieldByName('id_religiao').AsInteger;
  FModel.Nome_mae := FRegistros.FieldByName('nome_mae').AsString;
  FModel.Nome_pai := FRegistros.FieldByName('nome_pai').AsString;
  FModel.Id_naturalidade := FRegistros.FieldByName('id_naturalidade').AsInteger;
  FModel.Id_nacionalidade := FRegistros.FieldByName('id_nacionalidade').AsInteger;
  FModel.Conjuge := FRegistros.FieldByName('conjuge').AsString;
  FModel.Etnia := FRegistros.FieldByName('etnia').AsInteger;
  FModel.Tipo_sangue := FRegistros.FieldByName('tipo_sangue').AsInteger;
  FModel.Fone_principal := FRegistros.FieldByName('fone_principal').AsString;
  FModel.Fone_adicional1 := FRegistros.FieldByName('fone_adicional1').AsString;
  FModel.Desc_fone1 := FRegistros.FieldByName('desc_fone1').AsString;
  FModel.Fone_adicional2 := FRegistros.FieldByName('fone_adicional2').AsString;
  FModel.Desc_fone2 := FRegistros.FieldByName('desc_fone2').AsString;
  FModel.Cns := FRegistros.FieldByName('cns').AsString;
  FModel.Cpf := FRegistros.FieldByName('cpf').AsString;
  FModel.Rg := FRegistros.FieldByName('rg').AsString;
  FModel.Data_expedicao_rg := FRegistros.FieldByName('data_expedicao_rg').AsDateTime;
  FModel.Orgao_expedidor_rg := FRegistros.FieldByName('orgao_expedidor_rg').AsInteger;
  FModel.Uf_expedicao_rg := FRegistros.FieldByName('uf_expedicao_rg').AsInteger;
  FModel.Endereco := FRegistros.FieldByName('endereco').AsString;
  FModel.Numero := FRegistros.FieldByName('numero').AsString;
  FModel.Cep := FRegistros.FieldByName('cep').AsString;
  FModel.Bairro := FRegistros.FieldByName('bairro').AsString;
  FModel.Complemento := FRegistros.FieldByName('complemento').AsString;
  FModel.Local_trabalho := FRegistros.FieldByName('local_trabalho').AsString;
  FModel.Profissao := FRegistros.FieldByName('profissao').AsString;
  FModel.Email := FRegistros.FieldByName('email').AsString;
end;

procedure TControllerPaciente.Consultar(sCampoWhere, sOrderBy: string);
begin
  FRegistros := FDao.ConsultaTab(FModel,['*'],['situacao',sCampoWhere],sOrderBy,comLike);

  FDs.DataSet := FRegistros;
  alimentaCamposModel;
end;

constructor TControllerPaciente.Create;
begin
  FConexao         := TConexao.Create;
  FDs              := TDataSource.Create(nil);
  FModel           := TPacientes.Create;
  FCidade          := TCidade.Create;
  FReligiao        := TReligioes.Create;
  FNacionalidade   := TNacionalidade.Create;
  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);
  inherited;
end;

destructor TControllerPaciente.Destroy;
begin
  inherited;
  FConexao.Free;
  FDs.Free;
  FModel.Free;
  FCidade.Free;
  FReligiao.Free;
  FNacionalidade.Free;
  FDao.Free;
end;

procedure TControllerPaciente.Excluir;
begin
  Model.Situacao := SINATIVO;
  FDao.Salvar(Model);
end;

function TControllerPaciente.ExisteRegistro: Boolean;
begin
  Result := false;

  if Model.Id > 0 then
    Result := True;
end;

function TControllerPaciente.GetDataSource: TDataSource;
begin
  Result := FDs;
end;

function TControllerPaciente.GetDescricaoReligiao(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FReligiao,'descricao','id',AID,iOperacao);
end;

function TControllerPaciente.GetNomeCidade(AID, iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FCidade,'nome','id',AID,iOperacao);
end;

function TControllerPaciente.GetDescricaoNacionalidade(AID,
  iOperacao: integer): string;
begin
  if Assigned(FDao) then
    Result := FDao.GetValueForeignKey(FNacionalidade,'descricao','id',AID,iOperacao);
end;

procedure TControllerPaciente.Incluir;
begin
  Model.Id := FDao.GetID(Model,'id');
  FDao.Inserir(Model);
end;

procedure TControllerPaciente.MostraDados;
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

