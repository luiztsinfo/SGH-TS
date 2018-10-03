unit unFrmItensTabelaPrecoMatMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmItensTabelaPrecoMatMed = class(TForm)
    PnDadosTabela: TPanel;
    PnInclusaoItem: TPanel;
    PnConsultaItem: TPanel;
    PnItens: TPanel;
    lblTabelaPreco: TLabel;
    Label1: TLabel;
    lblMatMedFinal: TLabel;
    Label3: TLabel;
    lblMatMedInicial: TLabel;
    edtCodInicial: TEdit;
    edtCodFinal: TEdit;
    BtnBuscaMatMedInicial: TBitBtn;
    BtnBuscaMatMedFinal: TBitBtn;
    BtnIncluirItem: TBitBtn;
    GrdItensMatMed: TDBGrid;
    BtnExcluirItem: TBitBtn;
    BtnExcluirTudo: TBitBtn;
    StatusBar1: TStatusBar;
    RdGrpTipoBusca: TRadioGroup;
    edtConsulta: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    iID_TabelaPrecoMatMed: integer;
  end;

var
  frmItensTabelaPrecoMatMed: TfrmItensTabelaPrecoMatMed;

implementation

{$R *.dfm}

procedure TfrmItensTabelaPrecoMatMed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;
end;

end.
