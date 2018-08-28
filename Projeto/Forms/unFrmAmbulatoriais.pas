unit unFrmAmbulatoriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Controller.Ambulatorial,
  Vcl.ComCtrls;

type
  TfrmAmbulatoriais = class(TForm)
    PgCtrlAtendimentos: TPageControl;
    TbShAtendimentos: TTabSheet;
    TbShDadosAtendimento: TTabSheet;
    PnConsulta: TPanel;
    Label1: TLabel;
    GrpBxAtendimento: TGroupBox;
    edtAtendimento: TEdit;
    BtnConsulta: TBitBtn;
    CbxConsultaPor: TComboBox;
    GrpBxDatas: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    mskInicial: TMaskEdit;
    mskFinal: TMaskEdit;
    GrpBxPaciente: TGroupBox;
    lblPaciente: TLabel;
    edtIDPaciente: TEdit;
    BtnBuscaPaciente: TBitBtn;
    PnAtendimentos: TPanel;
    GrdAmbulatoriais: TDBGrid;
    PnBotoes: TPanel;
    BtnNovo: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    PnDadosAtendimento: TPanel;
    PnBotoesAtendimento: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelarOperacao: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtIDAtendimento: TEdit;
    mskDataAtendimento: TMaskEdit;
    mskHoraAtendimento: TMaskEdit;
    CbxCarater: TComboBox;
    Label12: TLabel;
    CbxTipoClinica: TComboBox;
    Label13: TLabel;
    CbxTipoAtendimento: TComboBox;
    PnDadosAlta: TPanel;
    Label14: TLabel;
    lblMedicoResponsavel: TLabel;
    BtnBuscaMedico: TBitBtn;
    edtMedicoResponsavel: TEdit;
    Label15: TLabel;
    edtProcedimento: TEdit;
    BtnBuscaProcedimento: TBitBtn;
    lblProcedimento: TLabel;
    Label16: TLabel;
    edtConvenio: TEdit;
    BtnBuscaConvenio: TBitBtn;
    lblConvenio: TLabel;
    Label17: TLabel;
    edtCIDProvisorio: TEdit;
    BtnBuscaCIDProvisorio: TBitBtn;
    lblProvisorio: TLabel;
    Label18: TLabel;
    edtSetor: TEdit;
    BtnBuscaSetor: TBitBtn;
    lblSetor: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbxConsultaPorExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
  private
    FController: TControllerAmbulatorial;
    procedure VerificaTipoConsulta;
  public
    { Public declarations }
  end;

var
  frmAmbulatoriais: TfrmAmbulatoriais;

implementation

{$R *.dfm}

procedure TfrmAmbulatoriais.BtnNovoClick(Sender: TObject);
begin
  PgCtrlAtendimentos.ActivePageIndex := 1;
end;

procedure TfrmAmbulatoriais.CbxConsultaPorExit(Sender: TObject);
begin
  VerificaTipoConsulta;
end;

procedure TfrmAmbulatoriais.FormCreate(Sender: TObject);
begin
  FController := TControllerAmbulatorial.Create;
end;

procedure TfrmAmbulatoriais.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TfrmAmbulatoriais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Self.Close;
end;

procedure TfrmAmbulatoriais.FormShow(Sender: TObject);
begin
  GrdAmbulatoriais.DataSource := FController.Ds;
  VerificaTipoConsulta;
end;

procedure TfrmAmbulatoriais.VerificaTipoConsulta;
begin
  if CbxConsultaPor.ItemIndex = 0 then
    begin
      GrpBxAtendimento.Visible := False;
      GrpBxPaciente.Visible := False;
      GrpBxDatas.Visible := True;
      mskInicial.SetFocus;
    end;

    if CbxConsultaPor.ItemIndex = 1 then // atendimento
      begin
        GrpBxAtendimento.Visible := true;
        GrpBxDatas.Visible := false;
        GrpBxPaciente.Visible := false;
        edtAtendimento.SetFocus;
      end;

    if CbxConsultaPor.ItemIndex = 2 then
      begin
        GrpBxAtendimento.Visible := False;
        GrpBxDatas.Visible := true;
        GrpBxPaciente.Visible := true;
        mskInicial.SetFocus;
      end;
end;

end.
