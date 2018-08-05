unit unDM;

interface

uses
  System.SysUtils, System.Classes, uDWDataModule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uRESTDWServerEvents, FireDAC.Phys.PG, FireDAC.Comp.UI,
  uRESTDWPoolerDB, uDWAbout, uRestDWDriverFD, uDWJSONObject;

type
  TDM = class(TServerMethodDataModule)
    FDConexao: TFDConnection;
    RESTDWDriverFD: TRESTDWDriverFD;
    RESTDWPoolerDB: TRESTDWPoolerDB;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    DWServerEvents: TDWServerEvents;
    WebServerEvents: TDWServerEvents;
    qryGeral: TFDQuery;
    procedure DWServerEventsEventsInsertPacienteReplyEvent(
      var Params: TDWParams; var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  U_MyResult, unPessoa;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DWServerEventsEventsInsertPacienteReplyEvent(
  var Params: TDWParams; var Result: string);
var
  vJSONValue: TJSONValue;
  oResult: TMyResult;
  oPessoa: TPessoa;
begin
  oResult := TMyResult.Create;
  oPessoa := TPessoa.Create;
  vJSONValue := TJSONValue.Create;

  try
    if (Trim(Params.ItemsString['ObjPesso'].AsString) <> EmptyStr) then
    begin
      oPessoa.ToObj(Params.ItemsString['ObjPessoa'].AsString);

      qryGeral.Close;
      qryGeral.SQL.Clear;
      qryGeral.SQL.Add('INSERT INTO pessoas');
      qryGeral.SQL.Add('(id,nome) VALUES');
      qryGeral.SQL.Add('(:id,:nome)');
      qryGeral.ParamByName('id').Value := oPessoa.Id;
      qryGeral.ParamByName('nome').Value := oPessoa.Nome;
      qryGeral.ExecSQL;

      try
        qryGeral.ExecSQL;
        vJSONValue.JsonMode := Params.JsonMode;
        vJSONValue.Encoding := Encoding;
        vJSONValue.Encoded := Params.ItemsString['Result'].Encoded;
        oResult.Valor := 'Inclusão Realizada com Sucesso';
      except
        on e : Exception do
        begin
          oResult.Status := false;
          oResult.Mensagem := 'Classe: '+ ClassName + sLineBreak  +
                              'Mensagem: '+ e.Message;
        end;
      end;
    end
    else
    begin
      oResult.Status := false;
      oResult.Mensagem := 'Erro no Objeto pessoa passado como parametro';
    end;
  finally
    Params.ItemsString['Result'].AsString := oResult.ToJsonString;
    if qryGeral.Active then
      qryGeral.Close;

    FreeAndNil(vJSONValue);
    FreeAndNil(oResult);
    FreeAndNil(oPessoa);
  end;
end;

end.
