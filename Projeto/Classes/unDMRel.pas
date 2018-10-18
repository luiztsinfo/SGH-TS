unit unDMRel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, frxClass, frxDBSet;

type
  TDMRelatorios = class(TDataModule)
    Con: TFDConnection;
    qryPrincipal: TFDQuery;
    qryFamiliar: TFDQuery;
    qryPessoal: TFDQuery;
    qryFaturamentoConvenio: TFDQuery;
    frxFaturamentoConvenio: TfrxReport;
    frxDSFaturamentoConvenio: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorios: TDMRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
