unit unFrmConsumosAtendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.AppEvnts;

type
  TfrmConsumosAtendimentos = class(TForm)
    PnConsulta: TPanel;
    Label1: TLabel;
    edtAtendimento: TEdit;
    lblNomePaciente: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    lblTipoAtendimento: TLabel;
    PnTituloMatMed: TPanel;
    PnTituloServicos: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    PnItem: TPanel;
    Label5: TLabel;
    lblMatMed: TLabel;
    Label6: TLabel;
    edtIDMatMed: TEdit;
    BtnBuscaMatMed: TBitBtn;
    edtQuantidade: TEdit;
    BtnIncluirMatMed: TBitBtn;
    PnMatMeds: TPanel;
    PnServico: TPanel;
    BtnIncluirTaxaServico: TBitBtn;
    PnTaxasServicos: TPanel;
    GrdMatMeds: TDBGrid;
    GrdTaxasServicos: TDBGrid;
    Label7: TLabel;
    lblProcedimento: TLabel;
    Label9: TLabel;
    edtProcedimento: TEdit;
    edtQuantidadeProcedimento: TEdit;
    BtnBuscaProcedimento: TBitBtn;
    PnBotoes: TPanel;
    BtnConcluirFaturamento: TBitBtn;
    BtnNaoCobrar: TBitBtn;
    BtnSair: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumosAtendimentos: TfrmConsumosAtendimentos;

implementation

{$R *.dfm}

uses unFrmFundo;

procedure TfrmConsumosAtendimentos.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmConsumosAtendimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

end.
