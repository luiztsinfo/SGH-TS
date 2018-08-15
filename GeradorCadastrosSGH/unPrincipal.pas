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
  Resultado.Add('unit '+edtNomeArquivoController.Text+';');
  Resultado.Add('');
  Resultado.Add('interface');
  Resultado.Add('');
  Resultado.Add('uses Controller.Interfaces, '+edtNomeArquivoModel.Text+', Lca.Orm.Comp.Firedac,');
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
  Resultado.Add('  //Preencher com FModel.Campo := FRegistros(campo).AsInteger');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseController.Text+'.Consultar(sCampoWhere, sOrderBy: string);');
  Resultado.Add('begin');
  Resultado.Add('  FRegistros := FDao.ConsultaTab(FModel,[''*''],[''situacao'',sCampoWhere],sOrderBy,comLike);');
  Resultado.Add('');
  Resultado.Add('  FDs.DataSet := FRegistros;');
  Resultado.Add('  alimentaCamposModel;');
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
  Resultado.Add('destructor '+edtNomeClasseController.Text+'.Destroy;');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  FConexao.Free;');
  Resultado.Add('  FDs.Free;');
  Resultado.Add('  FModel.Free;');
  Resultado.Add('  FDao.Free;');
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
  Resultado.Add('unit '+edtNomeArquivo.Text+';');
  Resultado.Add('');
  Resultado.Add('interface');
  Resultado.Add('');
  Resultado.Add('uses');
  Resultado.Add('  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,');
  Resultado.Add('  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFrmBaseBasico, Data.DB, Vcl.StdCtrls,');
  Resultado.Add('  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,');
  Resultado.Add('  '+edtNomeArquivoController.Text+', unConstantes;');
  Resultado.Add('');
  Resultado.Add('type');
  Resultado.Add('  '+edtNomeClasseForm.Text+' = class('+CbxClasseHerda.Text+')');
  Resultado.Add('    procedure BtnNovoClick(Sender: TObject);');
  Resultado.Add('    procedure TbShCadastroShow(Sender: TObject);');
  Resultado.Add('    procedure FormCreate(Sender: TObject);');
  Resultado.Add('  private');
  Resultado.Add('    { Private declarations }');
  Resultado.Add('  public');
  Resultado.Add('    procedure alimentaModel; override;');
  Resultado.Add('    procedure carregarCampos; override;');
  Resultado.Add('    procedure consultar; override;');
  Resultado.Add('    procedure alterar; override;');
  Resultado.Add('  end;');
  Resultado.Add('');
  Resultado.Add('var');
  Resultado.Add('  '+edtNomeClasseForm.Text+': '+ edtNomeClasseForm.Text+';');
  Resultado.Add('');
  Resultado.Add('implementation');
  Resultado.Add('');
  Resultado.Add('{$R *.dfm}');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.alimentaModel;');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  '+edtNomeClasseController.Text+'(FController).Model.Descricao := edtDescricao.Text;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.alterar;');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  '+edtNomeClasseController.Text+'(FController).Model.Id := StrToInt(edtID.Text);');
  Resultado.Add('  '+edtNomeClasseController.Text+'(FController).FDao.Salvar('+edtNomeClasseController.Text+'(FController).Model)');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.BtnNovoClick(Sender: TObject);');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  edtDescricao.SetFocus;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.carregarCampos;');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  edtID.Text := IntToStr('+edtNomeClasseController.Text+'(FController).Model.Id);');
  Resultado.Add('  edtDescricao.Text := '+edtNomeClasseController.Text+'(FController).Model.Descricao;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.consultar;');
  Resultado.Add('begin');
  Resultado.Add('  '+edtNomeClasseController.Text+'(FController).Model.Situacao := sATIVO;');
  Resultado.Add('');
  Resultado.Add('  case CbxConsulta.ItemIndex of');
  Resultado.Add('    iID:');
  Resultado.Add('      '+edtNomeClasseController.Text+'(FController).Model.Id := StrToInt(trim(edtConsulta.Text));');
  Resultado.Add('    iNOME:');
  Resultado.Add('      '+edtNomeClasseController.Text+'(FController).Model.Descricao := ''%''+trim(edtConsulta.Text)+''%'';');
  Resultado.Add('  end;');
  Resultado.Add('  '+edtNomeClasseController.Text+'(FController).consultar(CbxConsulta.Text,CbxOrdenarPor.Text);');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.FormCreate(Sender: TObject);');
  Resultado.Add('begin');
  Resultado.Add('  FController := '+edtNomeClasseController.Text+'.Create;');
  Resultado.Add('  inherited;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('procedure '+edtNomeClasseForm.Text+'.TbShCadastroShow(Sender: TObject);');
  Resultado.Add('begin');
  Resultado.Add('  inherited;');
  Resultado.Add('  edtDescricao.SetFocus;');
  Resultado.Add('end;');
  Resultado.Add('');
  Resultado.Add('end.');
  mUnit.Text := Resultado.Text;
  Resultado.Free;
end;

end.
