unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    edtNomeClasseModel: TEdit;
    edtNomeArquivoController: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mUnit: TMemo;
    BtnGerarClasseController: TBitBtn;
    BtnGerarClasseForm: TBitBtn;
    Label3: TLabel;
    edtNomeClasseController: TEdit;
    Label4: TLabel;
    edtNomeArquivoModel: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CbxClasseHerda: TComboBox;
    edtNomeArquivo: TEdit;
    edtNomeClasseForm: TEdit;
    procedure BtnGerarClasseControllerClick(Sender: TObject);
    procedure BtnGerarClasseFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnGerarClasseControllerClick(Sender: TObject);
var
  Resultado: TStringList;
begin
  Resultado := TStringList.Create;
  Resultado.Clear;
  Resultado.Add('unit Controller.'+edtNomeArquivoController.Text+';');
  Resultado.Add('');
  Resultado.Add('interface');
  Resultado.Add('');
  Resultado.Add('uses Controller.Interfaces, Model.'+edtNomeArquivoModel.Text+', Lca.Orm.Comp.Firedac,');
  Resultado.Add('  Conexao, Data.DB, unConstantes;');
  Resultado.Add('');
  Resultado.Add('type');
  Resultado.Add('  '+edtNomeClasseController.Text+' = class(TInterfacedObject, iControllerCadastros)');
  Resultado.Add('    private');
  Resultado.Add('      FModel                 : '+edtNomeClasseModel.Text+';');
  Resultado.Add('      FConexao               : TConexao;');
  Resultado.Add('      FRegistros             : TDataSet;');
  Resultado.Add('      FDs                    : TDataSource;');
  Resultado.Add('      function GetDataSource : TDataSource;');
  Resultado.Add('    public');
  Resultado.Add('      FDao: TDaoFireDac;');
  Resultado.Add('      constructor Create;');
  Resultado.Add('      destructor  Destroy; override;');
  Resultado.Add('      procedure   Excluir;');
  Resultado.Add('      procedure   Consultar(sCampoWhere, sOrderBy: string);');
  Resultado.Add('      procedure   MostraDados;');
  Resultado.Add('      procedure   AlimentaCamposModel;');
  Resultado.Add('      procedure   Incluir;');
  Resultado.Add('      function    ExisteRegistro: Boolean;');
  Resultado.Add('      property    Model: '+edtNomeClasseModel.Text+' read FModel;');
  Resultado.Add('      property    DataSource: TDataSource read GetDataSource;');
  Resultado.Add('  end;');
  Resultado.Add('');
  Resultado.Add('implementation');
  Resultado.Add('');
  Resultado.Add(' { '+edtNomeClasseController.Text+' }');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.AlimentaCamposModel;');
  Resultado.Add('begin');
  Resultado.Add(' //Preencher com FModel.Campo := FRegistros(campo).AsInteger');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.Consultar(sCampoWhere, sOrderBy: string);');
  Resultado.Add('begin');
  Resultado.Add('  FRegistros := FDao.ConsultaTab(FModel,[''*''],[''situacao'',sCampoWhere],sOrderBy,comLike);');
  Resultado.Add('');
  Resultado.Add(' FDs.DataSet := FRegistros;');
  Resultado.Add(' alimentaCamposModel;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('constructor '+edtNomeClasseController.Text+'.Create;');
  Resultado.Add('begin');
  Resultado.Add('  FConexao         := TConexao.Create;');
  Resultado.Add('  FDs              := TDataSource.Create(nil);');
  Resultado.Add('  FModel           := '+edtNomeClasseModel.Text+'.Create;');
  Resultado.Add('  FDao             := TDaoFireDac.Create(FConexao.FdCon,FConexao.FdTran);');
  Resultado.Add('  inherited;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('destructor '+edtNomeClasseController.Text+'.Destroy');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  FConexao.Free;');
  Resultado.Add('  FDs.Free;');
  Resultado.Add('  FModel.Free;');
  Resultado.Add('  FDao;Free;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.Excluir;');
  Resultado.Add('begin');
  Resultado.Add('  Model.Situacao := SINATIVO;');
  Resultado.Add('  FDao.Salvar(Model);');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('function '+edtNomeClasseController.Text+'.ExisteRegistro: Boolean;');
  Resultado.Add('begin');
  Resultado.Add('  Result := false;');
  Resultado.Add('');
  Resultado.Add('  if Model.Id > 0 then');
  Resultado.Add('    Result := True;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('function '+edtNomeClasseController.Text+'.GetDataSource: TDataSource;');
  Resultado.Add('begin');
  Resultado.Add('  Result := FDs;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.Incluir;');
  Resultado.Add('begin');
  Resultado.Add('  Model.Id := FDao.GetID(Model,''id'');');
  Resultado.Add('  FDao.Inserir(Model);');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.MostraDados;');
  Resultado.Add('begin');
  Resultado.Add('  try');
  Resultado.Add('    FModel.Situacao := sATIVO;');
  Resultado.Add('');
  Resultado.Add('    FRegistros := FDao.ConsultaTab(FModel,[''*''],[''situacao''],[],semLike);');
  Resultado.Add('');
  Resultado.Add('    FDs.DataSet := FRegistros;');
  Resultado.Add('    alimentaCamposModel;');
  Resultado.Add('  finally');
  Resultado.Add('');
  Resultado.Add('  end;');
  Resultado.Add('end;');
  Resultado.Add('end.');

  mUnit.Lines.Add(Resultado.Text);
  Resultado.Free;
end;

procedure TForm1.BtnGerarClasseFormClick(Sender: TObject);
var
  Resultado: TStringList;
begin
  Resultado := TStringList.Create;
  Resultado.Clear;
end;

end.
