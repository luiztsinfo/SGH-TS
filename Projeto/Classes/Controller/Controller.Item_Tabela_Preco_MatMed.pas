unit Controller.Item_Tabela_Preco_MatMed;

interface

uses Model.Itens_Tabela_Preco_Matmed, Data.DB, FireDAC.Comp.Client;

type
  TControllerItensTabelaPrecoMatMed = class

    private
      FQuery: TFDQuery;
      FDataSource: TDataSource;
      FModel: TItens_Tabela_Preco_Matmed;

      FIDTabelaMatMed: integer;
      constructor Create;
      destructor Destroy; override;
    public
      property IDTabelaMatMed: integer read FIDTabelaMatMed write FIDTabelaMatMed;
    protected
      function MostrarTodosItens: Boolean;
      function ConsultarItensTabelaMatMed(pDescricao: string): Boolean;
      function ConsultarItemTabelaMatMed(pIDMatMed: integer): Boolean;
      function IncluirItem(pIDMatMed: integer; pValor: Double): Boolean;
      function ExcluirItem(pID: integer): Boolean;
      function ExcluirTodos: Boolean;
  end;

implementation

{ TControllerItensTabelaPrecoMatMed }

function TControllerItensTabelaPrecoMatMed.ConsultarItemTabelaMatMed(
  pIDMatMed: integer): Boolean;
begin
  try
    FQuery.Close;
    FQuery.SQL.Clear;
    FQuery.SQL.Add('SELECT itens.id_matmed, matmed.descricao, itens.valor');
    FQuery.SQL.Add('FROM itens_tabela_preco_matmed itens');
    FQuery.SQL.Add('INNER JOIN matmed');
    FQuery.SQL.Add('ON matmed.id = itens.id_matmed');
    FQuery.SQL.Add('WHERE itens.id_matmed = :id_matmed');
    FQuery.ParamByName('id_matmed').AsInteger := pIDMatMed;
    FQuery.Open;
    Result := true;
  except
    Result := false;
    // mensagem de erro aqui.
  end;
end;

function TControllerItensTabelaPrecoMatMed.ConsultarItensTabelaMatMed(
  pDescricao: string): Boolean;
begin

end;

constructor TControllerItensTabelaPrecoMatMed.Create;
begin
  FQuery := TDataSet.Create(nil);
  FDataSource := TDataSource.Create(nil);
  FModel := TItens_Tabela_Preco_Matmed.Create;
end;

destructor TControllerItensTabelaPrecoMatMed.Destroy;
begin
  FQuery.Free;
  FDataSource.Free;
  FModel.Free;
  inherited;
end;

function TControllerItensTabelaPrecoMatMed.ExcluirItem(pID: integer): Boolean;
begin

end;

function TControllerItensTabelaPrecoMatMed.ExcluirTodos: Boolean;
begin

end;

function TControllerItensTabelaPrecoMatMed.IncluirItem(pIDMatMed: integer;
  pValor: Double): Boolean;
begin

end;

function TControllerItensTabelaPrecoMatMed.MostrarTodosItens: Boolean;
begin

end;

end.
