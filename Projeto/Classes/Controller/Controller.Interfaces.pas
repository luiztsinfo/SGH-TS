unit Controller.Interfaces;

interface

uses
  Data.DB, Conexao, FireDAC.Comp.Client;

type
  iControllerCadastros = interface
    ['{89CFA3CA-EFD1-4FA8-99D2-7AABD75CDD2A}']
     procedure mostraDados;
     procedure alimentaCamposModel;
     procedure Consultar(sCampoWhere, sOrderBy: string);
     procedure Excluir;
     procedure incluir;
     function GetDataSource: TDataSource;
     function existeRegistro: boolean;
     property DataSource: TDataSource read GetDataSource;
  end;

implementation

end.
