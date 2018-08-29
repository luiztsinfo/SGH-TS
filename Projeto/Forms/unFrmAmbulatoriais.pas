unit unFrmAmbulatoriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Controller.Ambulatorial,
  Vcl.ComCtrls, unConstantes, unFrmConvenios, u_FrmBase, unFrmColaboradores,
  unFrmProcedimentos, unFrmCID, unFrmSetores;

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
    Label19: TLabel;
    CbxResponsavel: TComboBox;
    PnResponsavel: TPanel;
    Label20: TLabel;
    edtResponsavel: TEdit;
    BtnBuscaResponsavel: TBitBtn;
    lblResponsavelPaciente: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    mskDataAlta: TMaskEdit;
    mskHoraAlta: TMaskEdit;
    CbxMotivoAlta: TComboBox;
    CbxTipoSaidaTISS: TComboBox;
    PnCIDDefinitivo: TPanel;
    edtCIDDefinitivo: TEdit;
    Label25: TLabel;
    BtnBuscaCIDDefinitivo: TBitBtn;
    lblCIDDefinitivo: TLabel;
    PnTransferencia: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    edtTransferidoPara: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbxConsultaPorExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure TbShDadosAtendimentoShow(Sender: TObject);
    procedure CbxResponsavelExit(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure edtConvenioExit(Sender: TObject);
    procedure BtnBuscaConvenioClick(Sender: TObject);
    procedure BtnCancelarOperacaoClick(Sender: TObject);
    procedure edtMedicoResponsavelExit(Sender: TObject);
    procedure edtProcedimentoExit(Sender: TObject);
    procedure edtCIDProvisorioExit(Sender: TObject);
    procedure edtSetorExit(Sender: TObject);
    procedure edtCIDDefinitivoExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnBuscaMedicoClick(Sender: TObject);
    procedure BtnBuscaProcedimentoClick(Sender: TObject);
    procedure BtnBuscaCIDProvisorioClick(Sender: TObject);
    procedure BtnBuscaSetorClick(Sender: TObject);
    procedure BtnBuscaCIDDefinitivoClick(Sender: TObject);
  private

    iTipoOperacao: integer;
    FController: TControllerAmbulatorial;
    procedure VerificaTipoConsulta;
    procedure VerificaResponsavel;
    procedure LimparControles;
  public
    { Public declarations }
  end;

var
  frmAmbulatoriais: TfrmAmbulatoriais;

implementation

{$R *.dfm}

procedure TfrmAmbulatoriais.BtnBuscaCIDDefinitivoClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmCID := TfrmCID.Create(Self,toConsulta);
    frmCID.ShowModal;
  finally
    edtCIDDefinitivo.Text := IntToStr(frmCID.FValueFieldKey);

    if TryStrToInt(edtCIDDefinitivo.Text,vValue) then
      lblCIDDefinitivo.Caption := FController.GetDescricaoCID(vValue,iINCLUINDO);

    FreeAndNil(frmCID);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaCIDProvisorioClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmCID := TfrmCID.Create(Self,toConsulta);
    frmCID.ShowModal;
  finally
    edtCIDProvisorio.Text := IntToStr(frmCID.FValueFieldKey);

    if TryStrToInt(edtCIDProvisorio.Text,vValue) then
      lblProvisorio.Caption := FController.GetDescricaoCID(vValue,iINCLUINDO);

    FreeAndNil(frmCID);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaConvenioClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmConvenios := TfrmConvenios.Create(Self,toConsulta);
    frmConvenios.ShowModal;
  finally
    edtConvenio.Text := IntToStr(frmConvenios.FValueFieldKey);

    if TryStrToInt(edtConvenio.Text,vValue) then
      lblConvenio.Caption := FController.GetNomeConvenio(vValue,iINCLUINDO);

    FreeAndNil(frmConvenios);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaMedicoClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmColaborador := TfrmColaborador.Create(Self,toConsulta);
    frmColaborador.ShowModal;
  finally
    edtMedicoResponsavel.Text := IntToStr(frmColaborador.FValueFieldKey);

    if TryStrToInt(edtMedicoResponsavel.Text,vValue) then
      lblMedicoResponsavel.Caption := FController.GetNomeMedico(vValue,iINCLUINDO);

    FreeAndNil(frmColaborador);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaProcedimentoClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmProcedimentos := TfrmProcedimentos.Create(Self,toConsulta);
    frmProcedimentos.ShowModal;
  finally
    edtProcedimento.Text := IntToStr(frmProcedimentos.FValueFieldKey);

    if TryStrToInt(edtProcedimento.Text,vValue) then
      lblProcedimento.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);

    FreeAndNil(frmProcedimentos);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaSetorClick(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmSetores := TfrmSetores.Create(Self,toConsulta);
    frmSetores.ShowModal;
  finally
    edtSetor.Text := IntToStr(frmSetores.FValueFieldKey);

    if TryStrToInt(edtSetor.Text,vValue) then
      lblSetor.Caption := FController.GetDescricaoSetor(vValue,iINCLUINDO);

    FreeAndNil(frmSetores);
  end;
end;

procedure TfrmAmbulatoriais.BtnCancelarOperacaoClick(Sender: TObject);
begin
  PgCtrlAtendimentos.ActivePageIndex := 0;
  LimparControles;
end;

procedure TfrmAmbulatoriais.BtnNovoClick(Sender: TObject);
begin
  PgCtrlAtendimentos.ActivePageIndex := 1;
end;

procedure TfrmAmbulatoriais.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAmbulatoriais.BtnSalvarClick(Sender: TObject);
begin
  if iTipoOperacao = iINCLUINDO then
    begin

    end;

  if iTipoOperacao = iALTERANDO then
    begin

    end;
end;

procedure TfrmAmbulatoriais.CbxConsultaPorExit(Sender: TObject);
begin
  VerificaTipoConsulta;
end;

procedure TfrmAmbulatoriais.CbxResponsavelExit(Sender: TObject);
begin
  VerificaResponsavel;
end;

procedure TfrmAmbulatoriais.edtCIDDefinitivoExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCIDDefinitivo.Text,vValue) then
    lblCIDDefinitivo.Caption := FController.GetDescricaoCID(vValue,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtCIDProvisorioExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtCIDProvisorio.Text,vValue) then
    lblProvisorio.Caption := FController.GetDescricaoCID(vValue,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtConvenioExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtConvenio.Text,vValue) then
    lblConvenio.Caption := FController.GetNomeConvenio(vValue,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtMedicoResponsavelExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtMedicoResponsavel.Text,vValue) then
    lblMedicoResponsavel.Caption := FController.GetNomeMedico(vValue,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtProcedimentoExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtProcedimento.Text,vValue) then
    lblProcedimento.Caption := FController.GetDescricaoProcedimento(vValue,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtSetorExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtSetor.Text,vValue) then
    lblSetor.Caption := FController.GetDescricaoSetor(vValue,iINCLUINDO);
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
  frmAmbulatoriais.Height := 590;
//  661 se for usar alta e transferencia
  PgCtrlAtendimentos.ActivePageIndex := 0;
  GrdAmbulatoriais.DataSource := FController.Ds;
  VerificaTipoConsulta;
end;

procedure TfrmAmbulatoriais.LimparControles;
var
  n : Integer;
  nTotComponentes : Integer;
begin
  nTotComponentes :=  Self.ComponentCount;
    for n := 0 to nTotComponentes-1 do
      begin
      if(Self.Components[n] is TEdit)then
        begin
          (Self.Components[n] as TEdit).Clear;
        end
      else
      if(Self.Components[n] is TMemo)then
        begin
         (Self.Components[n] as TMemo).Clear;
        end
      else
      if(Self.Components[n] is TMaskEdit)then
        begin
          (Self.Components[n] as TMaskEdit).Clear
        end
      else
      if (Self.Components[n] is TComboBox)then
        begin
          (Self.Components[n] as TComboBox).ItemIndex := 0;
          (Self.Components[n] as TComboBox).Text := '';
         end
      else
      if (Self.Components[n] is TRichEdit) then
        begin
          (Self.Components[n] as TRichEdit).Lines.Text := '';
        end;
      end;
end;

procedure TfrmAmbulatoriais.TbShDadosAtendimentoShow(Sender: TObject);
begin
  mskDataAtendimento.SetFocus;
end;

procedure TfrmAmbulatoriais.VerificaResponsavel;
begin
  if CbxResponsavel.ItemIndex = 1 then
    PnResponsavel.Visible := false;

  if CbxResponsavel.ItemIndex = 2 then
    begin
      PnResponsavel.Visible := true;
      BtnBuscaResponsavel.SetFocus;
    end;
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
