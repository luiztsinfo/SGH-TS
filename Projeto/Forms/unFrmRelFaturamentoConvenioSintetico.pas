unit unFrmRelFaturamentoConvenioSintetico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Controller.ConsultasFK, unFrmFaturas, u_FrmBase, unConstantes, unDMRel,
  Controller.Relatorios;

type
  TfrmRelFaturamentoConvenioSintetico = class(TForm)
    pnFiltro: TPanel;
    pnBotoes: TPanel;
    BtnRelatorio: TBitBtn;
    BtnSair: TBitBtn;
    Label1: TLabel;
    edtFatura: TEdit;
    lblFatura: TLabel;
    SpdBtnBuscaFatura: TSpeedButton;
    procedure edtFaturaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpdBtnBuscaFaturaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
  private
    FController: TControllerConsultasFK;
    FControllerRel: TControllerRelatorios;
  public
    { Public declarations }
  end;

var
  frmRelFaturamentoConvenioSintetico: TfrmRelFaturamentoConvenioSintetico;

implementation

{$R *.dfm}

procedure TfrmRelFaturamentoConvenioSintetico.BtnRelatorioClick(
  Sender: TObject);
begin
  FControllerRel.RelFaturamentoSintetico(StrToInt(edtFatura.Text));

  DMRelatorios.frxFaturamentoConvenio.ShowReport();
end;

procedure TfrmRelFaturamentoConvenioSintetico.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmRelFaturamentoConvenioSintetico.edtFaturaExit(Sender: TObject);
var
  vValue: integer;
begin
  if TryStrToInt(edtFatura.Text,vValue) then
    lblFatura.Caption := FController.GetDescricaoFatura(vValue,iINCLUINDO);
end;

procedure TfrmRelFaturamentoConvenioSintetico.FormCreate(Sender: TObject);
begin
  FController := TControllerConsultasFK.Create;
  FControllerRel := TControllerRelatorios.Create;
end;

procedure TfrmRelFaturamentoConvenioSintetico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
  FreeAndNil(FControllerRel);
end;

procedure TfrmRelFaturamentoConvenioSintetico.SpdBtnBuscaFaturaClick(
  Sender: TObject);
var
  vValue: integer;
begin
  try
    FrmFaturas := TFrmFaturas.Create(Self,toConsulta);
    FrmFaturas.ShowModal;
  finally
    edtFatura.Text := IntToStr(FrmFaturas.FValueFieldKey);

    if TryStrToInt(edtFatura.Text,vValue) then
      lblFatura.Caption := FController.GetDescricaoFatura(vValue,iINCLUINDO);

    FreeAndNil(FrmFaturas);
  end;
end;

end.