unit unFrmAmbulatoriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Controller.Ambulatorial,
  Vcl.ComCtrls, unConstantes, unFrmConvenios, u_FrmBase, unFrmColaboradores,
  unFrmProcedimentos, unFrmCID, unFrmSetores, unFrmPacientes;

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
    Label11: TLabel;
    edtIDAtendimento: TEdit;
    mskDataAtendimento: TMaskEdit;
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
    Label23: TLabel;
    Label24: TLabel;
    mskDataAlta: TMaskEdit;
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
    Label28: TLabel;
    CbxStatus: TComboBox;
    Label29: TLabel;
    edtPaciente: TEdit;
    BtnBuscaPacienteNovoAtendimento: TBitBtn;
    lblPacienteNovo: TLabel;
    mskHoraAtendimento: TMaskEdit;
    mskHoraAlta: TMaskEdit;
    Label10: TLabel;
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
    procedure edtPacienteExit(Sender: TObject);
    procedure BtnBuscaPacienteNovoAtendimentoClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
  private

    iTipoOperacao: integer;
    FController: TControllerAmbulatorial;
    procedure AlimentaModel;
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

procedure TfrmAmbulatoriais.AlimentaModel;
var
  vDataHoraAtendimento,vDataHoraAlta: TDateTime;
  vMedicoResponsavel,vProcedimento,vCidProvisorio,vSetor,vConvenio,
  vResponsavelPaciente, vCIDDefinitivo, vPaciente: integer;
begin
  FController.Model.Hora_atendimento := StrToTime(mskHoraAtendimento.Text);

  if TryStrToInt(edtPaciente.Text,vPaciente) then
    FController.Model.Id_paciente := vPaciente
  else
    begin
      MessageDlg('Informe o paciente a ser atendido!',mtWarning,[mbOk],0);
      edtPaciente.SetFocus;
      Exit;
    end;

  if TryStrToDateTime(mskDataAtendimento.Text,vDataHoraAtendimento) then
    FController.Model.Data_atendimento := vDataHoraAtendimento
  else
    begin
      MessageDlg('Informe a data e hora do atendimento!',mtWarning,[mbOk],0);
      mskDataAtendimento.SetFocus;
      Exit;
    end;

  FController.Model.Carater          := CbxCarater.ItemIndex;

  if TryStrToInt(edtMedicoResponsavel.Text,vMedicoResponsavel) then
    FController.Model.Id_medico_responsavel := vMedicoResponsavel
  else
    begin
      MessageDlg('Informe o m�dico respons�vel pelo atendimento!',mtWarning,[mbOk],0);
      edtMedicoResponsavel.SetFocus;
      Exit;
    end;

  if TryStrToInt(edtProcedimento.Text,vProcedimento) then
    FController.Model.Id_procedimento       := vProcedimento;

  FController.Model.Id_cid_provisorio     := edtCIDProvisorio.Text;

  if TryStrToInt(edtSetor.Text,vSetor) then
    FController.Model.Id_setor := vSetor
  else
    begin
      MessageDlg('Informe o setor!',mtWarning,[mbOk],0);
      edtSetor.SetFocus;
      Exit;
    end;

  FController.Model.Tipo_clinica          := CbxTipoClinica.ItemIndex;
  FController.Model.Tipo_atendimento      := CbxTipoAtendimento.ItemIndex;

  if TryStrToInt(edtConvenio.Text,vConvenio) then
    FController.Model.Id_convenio           := vConvenio
  else
    begin
      MessageDlg('Informe o conv�nio que o paciente ser� atendido!',mtWarning,[mbOK],0);
      edtConvenio.SetFocus;
      Exit;
    end;

  FController.Model.Responsavel_paciente  := CbxResponsavel.ItemIndex;
  if CbxResponsavel.ItemIndex = 1 then
    if TryStrToInt(edtResponsavel.Text,vResponsavelPaciente) then
      FController.Model.Id_responsavel := vResponsavelPaciente
    else
      begin
        MessageDlg('Informe o respons�vel pelo paciente!',mtWarning,[mbOk],0);
        edtResponsavel.SetFocus;
        Exit;
      end;

  if iTipoOperacao <> iINCLUINDO then
    begin
      FController.Model.Data_alta             := StrToDate(mskDataAlta.Text);
      FController.Model.Hora_alta             := StrToTime(mskHoraAlta.Text);

      if (edtCIDDefinitivo.Text <> trim('')) and (edtCIDDefinitivo.Text <> EmptyStr) then
        FController.Model.Id_cid_definitivo     := edtCIDDefinitivo.Text;

      FController.Model.Motivo_alta           := CbxMotivoAlta.ItemIndex;
      FController.Model.Tipo_saida_tiss       := CbxTipoSaidaTISS.ItemIndex;
      FController.Model.Transferido_para      := edtTransferidoPara.Text;
    end;
end;

procedure TfrmAmbulatoriais.BtnBuscaCIDDefinitivoClick(Sender: TObject);
begin
  inherited;
  try
    frmCID := TfrmCID.Create(Self,toConsulta);
    frmCID.ShowModal;
  finally
    edtCIDDefinitivo.Text := IntToStr(frmCID.FValueFieldKey);

    if (edtCIDDefinitivo.Text <> trim('0')) and (edtCIDDefinitivo.Text <> EmptyStr) then
      lblCIDDefinitivo.Caption := FController.GetDescricaoCID(edtCIDDefinitivo.Text,iINCLUINDO);

    FreeAndNil(frmCID);
  end;
end;

procedure TfrmAmbulatoriais.BtnBuscaCIDProvisorioClick(Sender: TObject);
begin
  inherited;
  try
    frmCID := TfrmCID.Create(Self,toConsulta);
    frmCID.ShowModal;
  finally
    edtCIDProvisorio.Text := IntToStr(frmCID.FValueFieldKey);

    if (edtCIDProvisorio.Text <> trim('0')) and (edtCIDProvisorio.Text <> EmptyStr) then
      lblProvisorio.Caption := FController.GetDescricaoCID(edtCIDProvisorio.Text,iINCLUINDO);

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

procedure TfrmAmbulatoriais.BtnBuscaPacienteNovoAtendimentoClick(
  Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  try
    frmPacientes := TfrmPacientes.Create(Self,toConsulta);
    frmPacientes.ShowModal;
  finally
    edtPaciente.Text := IntToStr(frmPacientes.FValueFieldKey);

    if TryStrToInt(edtPaciente.Text,vValue) then
      lblPacienteNovo.Caption := FController.GetNomePaciente(vValue,iINCLUINDO);

    FreeAndNil(frmPacientes);
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

procedure TfrmAmbulatoriais.BtnConsultaClick(Sender: TObject);
begin
  FController.ConsultarAtendimento(StrToDate(mskInicial.Text),StrToDate(mskFinal.Text));
end;

procedure TfrmAmbulatoriais.BtnNovoClick(Sender: TObject);
begin
  mskDataAtendimento.Text := DateTimeToStr(Now);
  PgCtrlAtendimentos.ActivePageIndex := 1;
  iTipoOperacao := iINCLUINDO;
  BtnConsultaClick(Self);
end;

procedure TfrmAmbulatoriais.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAmbulatoriais.BtnSalvarClick(Sender: TObject);
begin
  if iTipoOperacao = iINCLUINDO then
    begin
      AlimentaModel;
      FController.Model.Status := 'A';
      FController.IncluirAtendimento;
      PgCtrlAtendimentos.ActivePageIndex := 0;
      BtnConsultaClick(self);
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
begin
  inherited;
  if (edtCIDDefinitivo.Text <> trim('0')) and (edtCIDDefinitivo.Text <> EmptyStr) then
    lblCIDDefinitivo.Caption := FController.GetDescricaoCID(edtCIDProvisorio.Text,iINCLUINDO);
end;

procedure TfrmAmbulatoriais.edtCIDProvisorioExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if (edtCIDProvisorio.Text <> trim('0')) and (edtCIDProvisorio.Text <> EmptyStr) then
    lblProvisorio.Caption := FController.GetDescricaoCID(edtCIDProvisorio.Text,iINCLUINDO);
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

procedure TfrmAmbulatoriais.edtPacienteExit(Sender: TObject);
var
  vValue: integer;
begin
  inherited;
  if TryStrToInt(edtPaciente.Text,vValue) then
    lblPacienteNovo.Caption := FController.GetNomePaciente(vValue,iINCLUINDO);
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

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmAmbulatoriais.FormShow(Sender: TObject);
begin
  PgCtrlAtendimentos.ActivePageIndex := 0;
  mskInicial.Text := DateToStr(Now);
  mskFinal.Text   := DateToStr(Now);
  mskInicial.SetFocus;
  frmAmbulatoriais.Height := 610;
//  661 se for usar alta e transferencia
  GrdAmbulatoriais.DataSource := FController.DataSource;
  VerificaTipoConsulta;
  BtnConsultaClick(Self);
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