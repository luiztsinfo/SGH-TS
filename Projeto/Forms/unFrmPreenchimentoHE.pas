unit unFrmPreenchimentoHE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Controller.HE,
  unConstantes, Vcl.Imaging.jpeg;

type
  tpSalvar = (tpIncluir, tpAlterar);

  TfrmPreenchimentoHE = class(TForm)
    PgCtrlHE: TPageControl;
    TbShPrincipal: TTabSheet;
    TbShAntecedentesFamiliares: TTabSheet;
    PnBotoes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtID: TEdit;
    edtPaciente: TEdit;
    edtEnfermeiro: TEdit;
    edtLeito: TEdit;
    edtIdade: TEdit;
    edtQtdFilhos: TEdit;
    mskAdmissao: TMaskEdit;
    mskAlta: TMaskEdit;
    GrdPaciente: TDBGrid;
    GrdEnfermeiro: TDBGrid;
    BtnVoltar: TBitBtn;
    BtnProximo: TBitBtn;
    BtnSair: TBitBtn;
    GrdAntecedentesFamiliarHE: TDBGrid;
    Label9: TLabel;
    edtAntececedenteFamiliar: TEdit;
    BtnIncluirAntecedenteFamiliar: TBitBtn;
    Bevel1: TBevel;
    BtnRemover: TBitBtn;
    GrdAntecedenteFamiliar: TDBGrid;
    TbShAntecedentesPessoais: TTabSheet;
    edtAntecedentePessoal: TEdit;
    GrdAntecedentePessoal: TDBGrid;
    Bevel2: TBevel;
    GrdAntecedentesPessoaisHE: TDBGrid;
    edtQuantidade: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtFrequencia: TEdit;
    Label13: TLabel;
    edtTempoConsumo: TEdit;
    Label14: TLabel;
    RchEdtObsGerais: TRichEdit;
    Label15: TLabel;
    CbxEmTratamento: TComboBox;
    Label16: TLabel;
    edtTempoQuimioterapia: TEdit;
    Label17: TLabel;
    edtTempoRadioterapia: TEdit;
    Label18: TLabel;
    CbxTratado: TComboBox;
    Label20: TLabel;
    edtUltimaInternacao: TEdit;
    Label21: TLabel;
    edtMotivoUltimaInternacao: TEdit;
    Label22: TLabel;
    edtAlergia: TEdit;
    BtnAdicionarAlergia: TBitBtn;
    GrdAlergias: TDBGrid;
    GrdAlergiasHE: TDBGrid;
    BtnRemoverAlergia: TBitBtn;
    Label23: TLabel;
    edtTempoTransfusao: TEdit;
    Label19: TLabel;
    edtCirurgia: TEdit;
    BtnAdicionarCirurgia: TBitBtn;
    GrdCirurgias: TDBGrid;
    GrdCirurgiasHE: TDBGrid;
    BtnRemoverCirurgia: TBitBtn;
    Bevel3: TBevel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtAlteracoesOsseas: TEdit;
    edtAlteracoesRenaisUrinarias: TEdit;
    edtCardiovasculares: TEdit;
    edtAlteracoesPulmonares: TEdit;
    edtAlteracoesGastrointestinais: TEdit;
    Bevel4: TBevel;
    Label29: TLabel;
    GrdAtividadeReligiosa: TDBGrid;
    GrdAtividadesReligiosasHE: TDBGrid;
    edtAtividadeReligiosa: TEdit;
    BtnAdicionarAtividadeAtividadeReligiosa: TBitBtn;
    BtnRemoverAtividadeReligiosa: TBitBtn;
    GrpBxHomem: TGroupBox;
    GrpBxMulher: TGroupBox;
    Label30: TLabel;
    mskExameProstata: TMaskEdit;
    Label31: TLabel;
    edtResultadoExameProstata: TEdit;
    Label32: TLabel;
    CbxAtividadeSexual: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    CbxG: TComboBox;
    CbxP: TComboBox;
    CbxA: TComboBox;
    Label36: TLabel;
    edtDUM: TEdit;
    Label37: TLabel;
    mskMenopausa: TMaskEdit;
    Label38: TLabel;
    CbxContraceptivo: TComboBox;
    Label39: TLabel;
    CbxAutoExameMama: TComboBox;
    Label40: TLabel;
    mskExamePreventivo: TMaskEdit;
    Label41: TLabel;
    edtResultadoPreventivo: TEdit;
    BtnGravarAntecedente: TBitBtn;
    TbShAvaliacaoFisica: TTabSheet;
    PnSinaisVitais: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    edtTemperatura: TEdit;
    edtFC: TEdit;
    edtFR: TEdit;
    edtPA: TEdit;
    edtSPO: TEdit;
    PnCondicoesGerais: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    CbxBEG: TComboBox;
    CbxREG: TComboBox;
    CbxMEG: TComboBox;
    CbxApatico: TComboBox;
    CbxCianotico: TComboBox;
    CbxIcterico: TComboBox;
    CbxDesidratado: TComboBox;
    CbxSudoretico: TComboBox;
    CbxDispneico: TComboBox;
    CbxEdema: TComboBox;
    CbxPalidezCutanea: TComboBox;
    PnAvaliacaoNeurologica: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    CbxSonolencia: TComboBox;
    CbxTorpor: TComboBox;
    CbxDesorientado: TComboBox;
    CbxAgitado: TComboBox;
    CbxOrientado: TComboBox;
    PnEscalaComa: TPanel;
    edtEscalaComa: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    Image1: TImage;
    TbShAvaliacaoFisica41: TTabSheet;
    PnAtividadeFisica: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    CbxDeambulaAuxilio: TComboBox;
    edtParesias: TEdit;
    edtParaplegia: TEdit;
    edtTetraplegia: TEdit;
    edtPlegias: TEdit;
    CbxPreservada: TComboBox;
    CbxAusencia: TComboBox;
    CbxDeambulaSemAuxilio: TComboBox;
    CbxCadeiraRodas: TComboBox;
    CbxAcamado: TComboBox;
    CbxRepousoAbsoluto: TComboBox;
    PnPeleAnexos: TPanel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    CbxPalidez: TComboBox;
    CbxCianose: TComboBox;
    CbxHiperemiaPele: TComboBox;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    edtLocalLesao: TEdit;
    CbxIntegra: TComboBox;
    CbxLesionada: TComboBox;
    CbxPrurido: TComboBox;
    CbxDeformidades: TComboBox;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    CbxTurgorNormal: TComboBox;
    CbxTurgorDiminuido: TComboBox;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    CbxEquimose: TComboBox;
    CbxPetequias: TComboBox;
    CbxEritemas: TComboBox;
    CbxExantemas: TComboBox;
    CbxHematomas: TComboBox;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    CbxUrticarias: TComboBox;
    CbxPapulas: TComboBox;
    CbxTumor: TComboBox;
    CbxNodulos: TComboBox;
    CbxAbscessos: TComboBox;
    CbxPustulas: TComboBox;
    CbxBolhas: TComboBox;
    CbxVesiculas: TComboBox;
    Label109: TLabel;
    Label110: TLabel;
    edtLocalManchas: TEdit;
    edtTamanhoManchas: TEdit;
    PnCouroCabeludo: TPanel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    CbxSeborreia: TComboBox;
    CbxDermatites: TComboBox;
    CbxSujidade: TComboBox;
    CbxPediculose: TComboBox;
    edtTipoLesao: TEdit;
    edtTamanhoLesao: TEdit;
    PnOlhos: TPanel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    CbxAcuidadePreservada: TComboBox;
    CbxAcuidadeDiminuida: TComboBox;
    CbxAcuidadeAusente: TComboBox;
    edtQualAcuidade: TEdit;
    CbxCorada: TComboBox;
    CbxDescorada: TComboBox;
    CbxAnemia: TComboBox;
    CbxIctericia: TComboBox;
    CbxEdemaPalpebral: TComboBox;
    CbxSujidadeOlhos: TComboBox;
    CbxPtosePalpebral: TComboBox;
    CbxHiperemiaOlhos: TComboBox;
    CbxIsocoricas: TComboBox;
    CbxAnisocoricas: TComboBox;
    CbxFotoReagentes: TComboBox;
    CbxSemFotoreacao: TComboBox;
    edtOutros: TEdit;
    PnOuvidos: TPanel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    CbxPreservadaOuvidos: TComboBox;
    CbxDiminuidaOuvidos: TComboBox;
    Label143: TLabel;
    CbxOuvidosAusente: TComboBox;
    Label144: TLabel;
    edtQualAusente: TEdit;
    Label145: TLabel;
    Label146: TLabel;
    CbxTipoLesao: TComboBox;
    Label147: TLabel;
    edtLocalLesaoOuvidos: TEdit;
    Label148: TLabel;
    Label149: TLabel;
    CbxTipoSecrecao: TComboBox;
    Label150: TLabel;
    edtLocalSecrecao: TEdit;
    Label151: TLabel;
    CbxOtalgia: TComboBox;
    TbShAvaliacaoFisica42: TTabSheet;
    PnNariz: TPanel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    CbxSecrecao: TComboBox;
    CbxSujidadeNariz: TComboBox;
    CbxEpistaxe: TComboBox;
    CbxRinorreia: TComboBox;
    CbxDesvioSepto: TComboBox;
    CbxLesao: TComboBox;
    edtTipoLesaoNariz: TEdit;
    PnBocaFaringe: TPanel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    CbxLinguaSaburrosa: TComboBox;
    CbxDislalia: TComboBox;
    CbxDisfasia: TComboBox;
    CbxDisfonia: TComboBox;
    CbxLesoes: TComboBox;
    CbxTipoLesaoBoca: TComboBox;
    CbxCianoseLabial: TComboBox;
    CbxLabiosRessecados: TComboBox;
    edtLocalLesaoBoca: TEdit;
    Label169: TLabel;
    PnViasAereas: TPanel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    CbxControlado: TComboBox;
    CbxAssistido: TComboBox;
    CbxAssistidoControlado: TComboBox;
    CbxMandatorioIntermitente: TComboBox;
    edtFio2: TEdit;
    edtPeep: TEdit;
    edtComissuraLabial: TEdit;
    PnPescoco: TPanel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    CbxGangliosLinfaticosPalpaveis: TComboBox;
    CbxIndolorPalpacao: TComboBox;
    CbxTurgidez: TComboBox;
    CbxDorPalpacao: TComboBox;
    edtAlteracoes: TEdit;
    PnTorax: TPanel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    CbxFormaNormal: TComboBox;
    CbxFormaAlterado: TComboBox;
    edtAlteracoesTorax: TEdit;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    CbxSimetrico: TComboBox;
    CbxAssimetrico: TComboBox;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    CbxFunil: TComboBox;
    CbxBarril: TComboBox;
    CbxPombo: TComboBox;
    CbxCifoescoliose: TComboBox;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    CbxExpNormal: TComboBox;
    CbxExpDiminuida: TComboBox;
    Label200: TLabel;
    edtLocalDiminuida: TEdit;
    Label201: TLabel;
    edtPresCatetCentrais: TEdit;
    Label202: TLabel;
    edtPresencaDesdeCatetCentrais: TEdit;
    PnAusculaPulmonar: TPanel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    CbxEupneia: TComboBox;
    CbxTaquipneia: TComboBox;
    CbxBradipneia: TComboBox;
    Label207: TLabel;
    Label208: TLabel;
    edtExcursaoRespiratoria: TEdit;
    edtFremitoToracovocal: TEdit;
    Label209: TLabel;
    edtTraqueia: TEdit;
    Label210: TLabel;
    Label211: TLabel;
    CbxMurmuriosVesiculares: TComboBox;
    CbxTraqueia: TComboBox;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    CbxRoncos: TComboBox;
    CbxSibilos: TComboBox;
    CbxEstertores: TComboBox;
    CbxCrepitantes: TComboBox;
    CbxExpectoracaoEspontanea: TComboBox;
    Label218: TLabel;
    CbxTipoTosse: TComboBox;
    Label219: TLabel;
    edtPercussaoRespiratoriaCostelas: TEdit;
    PnAusculta_Cardiaca_HE: TPanel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    edtPalpacaoIctusCordis: TEdit;
    edtFremitoTatil: TEdit;
    edtFocoAortico: TEdit;
    edtFocoPulmonar: TEdit;
    edtFocoMitral: TEdit;
    edtFocoTricuspide: TEdit;
    Label226: TLabel;
    TbShTGI: TTabSheet;
    PnAvaliacaoTGI: TPanel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    CbxEspontanea: TComboBox;
    CbxEspontaneaAssistida: TComboBox;
    CbxNPO: TComboBox;
    CbxSNE: TComboBox;
    CbxSNG: TComboBox;
    CbxJejunostomia: TComboBox;
    CbxNPT: TComboBox;
    CbxSNGAberta: TComboBox;
    CbxGastrostomia: TComboBox;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    CbxGloboso: TComboBox;
    CbxPlano: TComboBox;
    CbxEscavado: TComboBox;
    CbxDistendido: TComboBox;
    CbxFlacido: TComboBox;
    CbxAscitico: TComboBox;
    CbxTimpanico: TComboBox;
    Label245: TLabel;
    Label246: TLabel;
    Label247: TLabel;
    CbxInspecao: TComboBox;
    edtCicatrizes: TEdit;
    edtOutrosAchados: TEdit;
    Label248: TLabel;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    Label252: TLabel;
    CbxRHAHiperativos: TComboBox;
    CbxRHAAusentes: TComboBox;
    CbxRHAHipoativos: TComboBox;
    CbxRHANormais: TComboBox;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    CbxSonsTimpanicos: TComboBox;
    CbxSonsMacicos: TComboBox;
    Label256: TLabel;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    CbxPalpacaoIndolor: TComboBox;
    edtDolorosoPalpacao: TEdit;
    edtPresencaMassaAnormal: TEdit;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    CbxPalpacaoFigadoNormal: TComboBox;
    CbxPalpacaoFigadoAlterado: TComboBox;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    CbxPercussaoFigadoNormal: TComboBox;
    CbxPercussaoFigadoAlterado: TComboBox;
    edtMedidaFigado: TEdit;
    Label267: TLabel;
    PnAvaliacao_Renal_HE: TPanel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    Label271: TLabel;
    Label272: TLabel;
    Label273: TLabel;
    Label274: TLabel;
    CbxPalpacaoNormal: TComboBox;
    CbxPalpacaoAnormal: TComboBox;
    CbxPercussaoComDor: TComboBox;
    CbxPercussaoSemDor: TComboBox;
    Label275: TLabel;
    Label276: TLabel;
    Label277: TLabel;
    CbxDrenos: TComboBox;
    CbxCurativos: TComboBox;
    CbxOstomias: TComboBox;
    edtObsDrenos: TEdit;
    edtObsCurativos: TEdit;
    edtObsOstomias: TEdit;
    Label278: TLabel;
    CbxVesicalPresente: TComboBox;
    CbxVesicalAusente: TComboBox;
    CbxVesicalEspontanea: TComboBox;
    Label279: TLabel;
    Label280: TLabel;
    Label281: TLabel;
    Label282: TLabel;
    Label283: TLabel;
    CbxSVDVolume: TComboBox;
    edtCaracteristicaDiurese: TEdit;
    Label284: TLabel;
    Label285: TLabel;
    Label286: TLabel;
    Label287: TLabel;
    Label288: TLabel;
    Label289: TLabel;
    Label290: TLabel;
    Label291: TLabel;
    Label292: TLabel;
    CbxFralda: TComboBox;
    CbxArdencia: TComboBox;
    CbxOliguria: TComboBox;
    CbxDisuria: TComboBox;
    CbxHematuria: TComboBox;
    CbxPolaciuria: TComboBox;
    CbxIncontinenciaUrinaria: TComboBox;
    CbxGloboVesical: TComboBox;
    Label293: TLabel;
    Label294: TLabel;
    Label295: TLabel;
    Label296: TLabel;
    Label297: TLabel;
    Label298: TLabel;
    Label299: TLabel;
    Label300: TLabel;
    Label301: TLabel;
    CbxIntestinaisPresente: TComboBox;
    CbxEnterorragia: TComboBox;
    CbxIntestinaisConstipacao: TComboBox;
    CbxIntestinaisMelena: TComboBox;
    CbxIntestinaisDiarreia: TComboBox;
    CbxIntestinaisAusente: TComboBox;
    CbxEliminacaoIntestinal: TComboBox;
    CbxColostomia: TComboBox;
    Label302: TLabel;
    edtQuantoTempoAusente: TEdit;
    Label303: TLabel;
    Label304: TLabel;
    Label305: TLabel;
    edtTipoFralda: TEdit;
    edtQuantidadeFralda: TEdit;
    edtCaracteristicasFralda: TEdit;
    Label306: TLabel;
    Label307: TLabel;
    Label308: TLabel;
    edtTipoColostomia: TEdit;
    edtQuantidadeColostomia: TEdit;
    edtCaracteristicasColostomia: TEdit;
    Label309: TLabel;
    CbxAnuria: TComboBox;
    TbShGenitaliasExtremidades: TTabSheet;
    PnGenitais: TPanel;
    Label310: TLabel;
    Label311: TLabel;
    Label312: TLabel;
    Label313: TLabel;
    Label314: TLabel;
    Label315: TLabel;
    Label316: TLabel;
    Label317: TLabel;
    CbxAspectoLesoes: TComboBox;
    CbxAspectoOdor: TComboBox;
    CbxAspectoMiccoes: TComboBox;
    CbxAspectoPrurido: TComboBox;
    CbxPresencaSecrecao: TComboBox;
    CbxCaracteristicaSecrecao: TComboBox;
    PnGenitaisFemininos: TPanel;
    Label320: TLabel;
    Label318: TLabel;
    Label319: TLabel;
    CbxSuspeitaDST: TComboBox;
    CbxUltimaColetaCO: TComboBox;
    Label321: TLabel;
    Label322: TLabel;
    Label323: TLabel;
    Label324: TLabel;
    Label325: TLabel;
    Label326: TLabel;
    Label327: TLabel;
    CbxAnalEdema: TComboBox;
    CbxAnalUlceracoes: TComboBox;
    CbxAnalAbscesso: TComboBox;
    CbxAnalFistulas: TComboBox;
    CbxAnalHemorroidas: TComboBox;
    CbxAnalFissuras: TComboBox;
    PnGenitaisMasculinos: TPanel;
    Label328: TLabel;
    Label329: TLabel;
    Label330: TLabel;
    Label331: TLabel;
    Label332: TLabel;
    Label333: TLabel;
    Label334: TLabel;
    Label335: TLabel;
    CbxAtencaoDST: TComboBox;
    CbxUsoPreservativo: TComboBox;
    CbxBolsaEdema: TComboBox;
    CbxBolsaHiperemia: TComboBox;
    CbxPresencaParasitas: TComboBox;
    PnExtremidades: TPanel;
    Label336: TLabel;
    Label337: TLabel;
    Label338: TLabel;
    Label339: TLabel;
    Label340: TLabel;
    Label341: TLabel;
    Label342: TLabel;
    Label343: TLabel;
    Label344: TLabel;
    Label345: TLabel;
    Label346: TLabel;
    Label347: TLabel;
    Label348: TLabel;
    Label349: TLabel;
    Label350: TLabel;
    Label351: TLabel;
    edtEdema: TEdit;
    edtLesoes: TEdit;
    edtDeformidades: TEdit;
    CbxSinaisInfeccaoFungos: TComboBox;
    CbxBaqueteamentoDedos: TComboBox;
    edtPresCatetVenosas: TEdit;
    edtDesde: TEdit;
    CbxPerfusaoNormal: TComboBox;
    CbxPerfusaoDiminuida: TComboBox;
    edtLocalPerfusaoDiminuida: TEdit;
    edtEdemaMMII: TEdit;
    edtUlcerasVenosas: TEdit;
    edtUlcerasArteriais: TEdit;
    TbShDiagnosticos: TTabSheet;
    edtDiagnosticoEnfermagem: TEdit;
    Label352: TLabel;
    BtnAdicionarAntecedentePessoal: TBitBtn;
    BtnRemoverAntecedentePessoal: TBitBtn;
    BtnAdicionarDiagnosticoEnfermagem: TBitBtn;
    BtnRemoverDiagnosticoEnfermagem: TBitBtn;
    GrdDiagnosticoEnfermagem: TDBGrid;
    GrdDiagnosticosEnfermagem_HE: TDBGrid;
    Bevel5: TBevel;
    Label353: TLabel;
    Label354: TLabel;
    Label355: TLabel;
    CbxPercepcaoSensorial: TComboBox;
    Label356: TLabel;
    CbxUmidade: TComboBox;
    Label357: TLabel;
    CbxAtividade: TComboBox;
    Label358: TLabel;
    CbxMobilidade: TComboBox;
    Label359: TLabel;
    CbxNutricao: TComboBox;
    Label360: TLabel;
    CbxFriccaoCisalhamento: TComboBox;
    Label361: TLabel;
    lblEscalaBraden: TLabel;
    Label363: TLabel;
    lblValorScore: TLabel;
    Bevel6: TBevel;
    Label362: TLabel;
    Label364: TLabel;
    Label365: TLabel;
    Label366: TLabel;
    Label367: TLabel;
    Label368: TLabel;
    Label369: TLabel;
    Label370: TLabel;
    Label371: TLabel;
    Label372: TLabel;
    Label373: TLabel;
    CbxMaior65: TComboBox;
    CbxUrgenciaUrinariaFecal: TComboBox;
    CbxDeficitAuditivo: TComboBox;
    CbxUsoSedativos: TComboBox;
    CbxHipotensaoPostural: TComboBox;
    CbxMobilidadeFisica: TComboBox;
    CbxDisturbiosComportamento: TComboBox;
    CbxDificuldadaMarcha: TComboBox;
    CbxHistoricoQuedaUltimoAno: TComboBox;
    CbxHipoxia: TComboBox;
    Label374: TLabel;
    lblRiscoQueda: TLabel;
    TbShPrescricoes: TTabSheet;
    Label375: TLabel;
    Label376: TLabel;
    Label377: TLabel;
    edtPrescricaoEnfermagem: TEdit;
    GrdPrescricoesEnfermagem: TDBGrid;
    GrdPrescricoesHE: TDBGrid;
    BtnAdicionarPrescricao: TBitBtn;
    BtnRemoverPrescricao: TBitBtn;
    edtDescricaoAdicionalPrescricao: TEdit;
    Label378: TLabel;
    Label379: TLabel;
    CbxFrequenciaPrescricao: TComboBox;
    Label380: TLabel;
    Label381: TLabel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPacienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdPacienteDblClick(Sender: TObject);
    procedure GrdPacienteExit(Sender: TObject);
    procedure GrdPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEnfermeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEnfermeiroKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdEnfermeiroDblClick(Sender: TObject);
    procedure GrdEnfermeiroExit(Sender: TObject);
    procedure GrdEnfermeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProximoClick(Sender: TObject);
    procedure edtAntececedenteFamiliarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAntececedenteFamiliarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdAntecedenteFamiliarDblClick(Sender: TObject);
    procedure GrdAntecedenteFamiliarExit(Sender: TObject);
    procedure GrdAntecedenteFamiliarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnIncluirAntecedenteFamiliarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure edtAntecedentePessoalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAntecedentePessoalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdAntecedentePessoalDblClick(Sender: TObject);
    procedure BtnAdicionarAntecedentePessoalClick(Sender: TObject);
    procedure BtnRemoverAntecedentePessoalClick(Sender: TObject);
    procedure GrdAntecedentePessoalExit(Sender: TObject);
    procedure GrdAntecedentePessoalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAlergiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAlergiaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdAlergiasDblClick(Sender: TObject);
    procedure GrdAlergiasExit(Sender: TObject);
    procedure GrdAlergiasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarAlergiaClick(Sender: TObject);
    procedure BtnRemoverAlergiaClick(Sender: TObject);
    procedure edtCirurgiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCirurgiaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarCirurgiaClick(Sender: TObject);
    procedure BtnRemoverCirurgiaClick(Sender: TObject);
    procedure GrdCirurgiasDblClick(Sender: TObject);
    procedure GrdCirurgiasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdCirurgiasExit(Sender: TObject);
    procedure edtAtividadeReligiosaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAtividadeReligiosaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarAtividadeAtividadeReligiosaClick(Sender: TObject);
    procedure BtnRemoverAtividadeReligiosaClick(Sender: TObject);
    procedure GrdAtividadeReligiosaDblClick(Sender: TObject);
    procedure GrdAtividadeReligiosaExit(Sender: TObject);
    procedure GrdAtividadeReligiosaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarAntecedenteClick(Sender: TObject);
    procedure TbShAntecedentesPessoaisShow(Sender: TObject);
    procedure TbShGenitaliasExtremidadesShow(Sender: TObject);
    procedure edtDiagnosticoEnfermagemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdDiagnosticoEnfermagemDblClick(Sender: TObject);
    procedure GrdDiagnosticoEnfermagemExit(Sender: TObject);
    procedure GrdDiagnosticoEnfermagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarDiagnosticoEnfermagemClick(Sender: TObject);
    procedure edtDiagnosticoEnfermagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRemoverDiagnosticoEnfermagemClick(Sender: TObject);
    procedure CbxPercepcaoSensorialSelect(Sender: TObject);
    procedure CbxUmidadeSelect(Sender: TObject);
    procedure CbxAtividadeSelect(Sender: TObject);
    procedure CbxMobilidadeSelect(Sender: TObject);
    procedure CbxNutricaoSelect(Sender: TObject);
    procedure CbxFriccaoCisalhamentoSelect(Sender: TObject);
    procedure CbxMaior65Select(Sender: TObject);
    procedure CbxUrgenciaUrinariaFecalSelect(Sender: TObject);
    procedure CbxDeficitAuditivoSelect(Sender: TObject);
    procedure CbxUsoSedativosSelect(Sender: TObject);
    procedure CbxDificuldadaMarchaSelect(Sender: TObject);
    procedure CbxDisturbiosComportamentoSelect(Sender: TObject);
    procedure CbxMobilidadeFisicaSelect(Sender: TObject);
    procedure CbxHipotensaoPosturalSelect(Sender: TObject);
    procedure CbxHistoricoQuedaUltimoAnoSelect(Sender: TObject);
    procedure CbxHipoxiaSelect(Sender: TObject);
    procedure edtPrescricaoEnfermagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPrescricaoEnfermagemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdPrescricoesEnfermagemDblClick(Sender: TObject);
    procedure GrdPrescricoesEnfermagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAdicionarPrescricaoClick(Sender: TObject);
    procedure BtnRemoverPrescricaoClick(Sender: TObject);
  private

    FControllerHE : TControllerHE;
    procedure Limpar;
    procedure AlimentaModelHE;
    procedure AlimentaModelAntecedentes_Paciente;
    procedure AlimentaModelInfs_antecedentes;
    procedure AlimentaModelHomem_he;
    procedure AlimentaModelMulher_he;
    procedure AlimentaModelSinaisVitais;
    procedure AlimentaModelCondicoesGerais;
    procedure AlimentaModelAvaliacaoNeurologica;
    procedure AlimentaModelAtividadeFisica_he;
    procedure AlimentaModelPele_he;
    procedure AlimentaModelCouro_cabeludo_he;
    procedure AlimentaModelOlhos_he;
    procedure AlimentaModelOuvidos_he;
    procedure AlimentaModelNariz_he;
    procedure AlimentaModelBoca_Faringe_he;
    procedure AlimentaModelVias_Aeres_he;
    procedure AlimentaModelPescoco_he;
    procedure AlimentaModelTorax_he;
    procedure AlimentaModelAusculta_Pulmonar_he;
    procedure AlimentaModelAusculta_Cardiaca_he;
    procedure AlimentaModelTGI_he;
    procedure AlimentaModelAvaliacao_Renal_he;
    procedure AlimentaModelGenitais_he;
    procedure AlimentaModelExtremidades_he;
    procedure AlimentaModelRisco_Ulcera_Decubito_HE;
    procedure AlimentaModelRisco_Queda_HE;
    function VerificaSexo: integer;
    function CalculaScore: integer;
    procedure VerificaRiscoQueda;

  public

  end;

var
  frmPreenchimentoHE: TfrmPreenchimentoHE;

implementation

{$R *.dfm}

procedure TfrmPreenchimentoHE.AlimentaModelAntecedentes_Paciente;
begin
  FControllerHE.FAntecedente_paciente.Id := FControllerHE.FDao.GetMax(FControllerHE.FAntecedente_paciente,'id',['id']);
  FControllerHE.FAntecedente_paciente.Quantidade := StrToInt(edtQuantidade.Text);
  FControllerHE.FAntecedente_paciente.Frequencia := StrToInt(edtFrequencia.Text);
  FControllerHE.FAntecedente_paciente.Tempoconsumo := StrToFloat(edtTempoConsumo.Text);
  FControllerHE.FAntecedente_paciente.Tratamento := CbxEmTratamento.ItemIndex;
  FControllerHE.FAntecedente_paciente.Tratado := CbxTratado.ItemIndex;
  FControllerHE.FAntecedente_paciente.TempoQuimioterapia := StrToFloat(edtTempoQuimioterapia.Text);
  FControllerHE.FAntecedente_paciente.TempoRadioterapia := StrToFloat(edtTempoRadioterapia.Text);
  FControllerHE.FAntecedente_paciente.Obs_geral := RchEdtObsGerais.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelAtividadeFisica_he;
begin
  FControllerHE.FAtividadeFisica_HE.id := FControllerHE.FDao.GetID(FControllerHE.FAtividadeFisica_HE,'id');
  FControllerHE.FAtividadeFisica_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FAtividadeFisica_HE.forca_muscular := CbxPreservada.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.ausencia_forca := CbxAusencia.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.deambula_auxilio := CbxDeambulaAuxilio.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.deambula_sem_auxilio := CbxDeambulaSemAuxilio.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.cadeira_rodas := CbxCadeiraRodas.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.acamado := CbxAcamado.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.repouso_absoluto := CbxRepousoAbsoluto.ItemIndex;
  FControllerHE.FAtividadeFisica_HE.paresias := edtParesias.Text;
  FControllerHE.FAtividadeFisica_HE.paraplegia := edtParaplegia.Text;
  FControllerHE.FAtividadeFisica_HE.tetraplegia := edtTetraplegia.Text;
  FControllerHE.FAtividadeFisica_HE.plegias := edtPlegias.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelAusculta_Cardiaca_he;
begin
  FControllerHE.FAusculta_Cardiaca_HE.id := FControllerHE.FDao.GetID(FControllerHE.FAusculta_Cardiaca_HE,'id');
  FControllerHE.FAusculta_Cardiaca_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FAusculta_Cardiaca_HE.palpacao_ictus_cordis := edtPalpacaoIctusCordis.Text;
  FControllerHE.FAusculta_Cardiaca_HE.fremito_tatil := edtFremitoTatil.Text;
  FControllerHE.FAusculta_Cardiaca_HE.foco_aortico := edtFocoAortico.Text;
  FControllerHE.FAusculta_Cardiaca_HE.foco_pulmonar := edtFocoPulmonar.Text;
  FControllerHE.FAusculta_Cardiaca_HE.foco_mitral := edtFocoMitral.Text;
  FControllerHE.FAusculta_Cardiaca_HE.foco_tricuspide := edtFocoTricuspide.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelAusculta_Pulmonar_he;
begin
  FControllerHE.FAusculta_Pulmonar_he.id := FControllerHE.FDao.GetID(FControllerHE.FAusculta_Pulmonar_he,'id');
  FControllerHE.FAusculta_Pulmonar_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FAusculta_Pulmonar_he.excursao_respiratoria := edtExcursaoRespiratoria.Text;
  FControllerHE.FAusculta_Pulmonar_he.fremito_toracovocal := edtFremitoToracovocal.Text;
  FControllerHE.FAusculta_Pulmonar_he.traqueia := edtTraqueia.Text;
  FControllerHE.FAusculta_Pulmonar_he.tipo_tosse := CbxTipoTosse.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.eupneia := CbxEupneia.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.taquipneia := CbxTaquipneia.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.bradipneia := CbxBradipneia.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.murmurios_vesiculares := CbxMurmuriosVesiculares.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.roncos := CbxRoncos.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.sibilos := CbxSibilos.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.estertores := CbxEstertores.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.crepitantes := CbxCrepitantes.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.expectoracao_espontanea := CbxExpectoracaoEspontanea.ItemIndex;
  FControllerHE.FAusculta_Pulmonar_he.percussao_respiratoria_costelas := edtPercussaoRespiratoriaCostelas.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelAvaliacaoNeurologica;
begin
  FControllerHE.FAvaliacao_neurologica_he.id := FControllerHE.FDao.GetID(FControllerHE.FAvaliacao_neurologica_he,'id');
  FControllerHE.FAvaliacao_neurologica_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FAvaliacao_neurologica_he.escala_coma := StrToFloat(edtEscalaComa.Text);
  FControllerHE.FAvaliacao_neurologica_he.sonolencia := CbxSonolencia.ItemIndex;
  FControllerHE.FAvaliacao_neurologica_he.torpor := CbxTorpor.ItemIndex;
  FControllerHE.FAvaliacao_neurologica_he.agitado := CbxAgitado.ItemIndex;
  FControllerHE.FAvaliacao_neurologica_he.desorientado := CbxDesorientado.ItemIndex;
  FControllerHE.FAvaliacao_neurologica_he.orientado := CbxOrientado.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelAvaliacao_Renal_he;
begin
  FControllerHE.FAvaliacao_Renal_HE.id := FControllerHE.FDao.GetID(FControllerHE.FAvaliacao_Renal_HE,'id');
  FControllerHE.FAvaliacao_Renal_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FAvaliacao_Renal_HE.obs_drenos := edtObsDrenos.Text;
  FControllerHE.FAvaliacao_Renal_HE.obs_curativos := edtObsCurativos.Text;
  FControllerHE.FAvaliacao_Renal_HE.obs_ostomias := edtObsOstomias.Text;
  FControllerHE.FAvaliacao_Renal_HE.ausente_tempo := edtQuantoTempoAusente.Text;
  FControllerHE.FAvaliacao_Renal_HE.fralda_tipo := edtTipoFralda.Text;
  FControllerHE.FAvaliacao_Renal_HE.fralda_quantidade := StrToInt(edtQuantidadeFralda.Text);
  FControllerHE.FAvaliacao_Renal_HE.caracteristicas_fralda := edtCaracteristicasFralda.Text;
  FControllerHE.FAvaliacao_Renal_HE.colostomia_tipo := edtTipoColostomia.Text;
  FControllerHE.FAvaliacao_Renal_HE.colostomia_quantidade := StrToFloat(edtQuantidadeColostomia.Text);
  FControllerHE.FAvaliacao_Renal_HE.colostomia_caracteristicas := edtCaracteristicasColostomia.Text;
  FControllerHE.FAvaliacao_Renal_HE.normal := CbxPalpacaoNormal.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.anormal := CbxPalpacaoAnormal.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.dor_percussao := CbxPercussaoComDor.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.sem_dor := CbxPercussaoSemDor.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.drenos := CbxDrenos.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.curativos := CbxCurativos.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.ostomias := CbxOstomias.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.presente := CbxVesicalPresente.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.ausente := CbxVesicalAusente.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.espontanea := CbxVesicalEspontanea.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.ardencia := CbxArdencia.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.oliguria := CbxOliguria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.disuria := CbxDisuria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.anuria := CbxAnuria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.hematuria := CbxHematuria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.polaciuria := CbxPolaciuria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.incontinencia_urinaria := CbxIncontinenciaUrinaria.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.globo_vesical := CbxGloboVesical.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.presente_intestinais := CbxIntestinaisPresente.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.constipacao := CbxIntestinaisConstipacao.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.melena := CbxIntestinaisMelena.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.diarreia := CbxIntestinaisDiarreia.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.enterorragia := CbxEnterorragia.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.fralda := CbxFralda.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.colostomia := CbxColostomia.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.svd_fralda := CbxSVDVolume.ItemIndex;
  FControllerHE.FAvaliacao_Renal_HE.caracteristica_diurese := edtCaracteristicaDiurese.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelBoca_Faringe_he;
begin
  FControllerHE.FBoca_Faringe_HE.id := FControllerHE.FDao.GetID(FControllerHE.FBoca_Faringe_HE,'id');
  FControllerHE.FBoca_Faringe_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FBoca_Faringe_HE.lingua_saburrosa := CbxLinguaSaburrosa.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.dislalia := CbxDislalia.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.disfasia := CbxDisfasia.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.disfonia := CbxDisfonia.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.labios_ressecados := CbxLabiosRessecados.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.cianose_labial := CbxCianoseLabial.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.lesoes := CbxLesoes.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.tipo_lesao := CbxTipoLesaoBoca.ItemIndex;
  FControllerHE.FBoca_Faringe_HE.local_lesao := edtLocalLesaoBoca.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelCondicoesGerais;
begin
  FControllerHE.FCondicoesgerais_he.id := FControllerHE.FDao.GetID(FControllerHE.FCondicoesgerais_he,'id');
  FControllerHE.FCondicoesgerais_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FCondicoesgerais_he.beg := CbxBEG.ItemIndex;
  FControllerHE.FCondicoesgerais_he.reg := CbxREG.ItemIndex;
  FControllerHE.FCondicoesgerais_he.meg := CbxMEG.ItemIndex;
  FControllerHE.FCondicoesgerais_he.apatico := CbxApatico.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Cianotico := CbxCianotico.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Icterico := CbxIcterico.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Desidratado := CbxDesidratado.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Sudoretico := CbxSudoretico.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Dispneico := CbxDispneico.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Edema := CbxEdema.ItemIndex;
  FControllerHE.FCondicoesgerais_he.Palidez_cutanea := CbxPalidezCutanea.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelCouro_cabeludo_he;
begin
  FControllerHE.FCouro_cabeludo_he.id := FControllerHE.FDao.GetID(FControllerHE.FCouro_cabeludo_he,'id');
  FControllerHE.FCouro_cabeludo_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FCouro_cabeludo_he.seborreia := CbxSeborreia.ItemIndex;
  FControllerHE.FCouro_cabeludo_he.desmatites := CbxDermatites.ItemIndex;
  FControllerHE.FCouro_cabeludo_he.sujidade := CbxSujidade.ItemIndex;
  FControllerHE.FCouro_cabeludo_he.pediculose := CbxPediculose.ItemIndex;
  FControllerHE.FCouro_cabeludo_he.tipo_lesao := edtTipoLesao.Text;
  FControllerHE.FCouro_cabeludo_he.tamanho_lesao := edtTamanhoLesao.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelExtremidades_he;
begin
  FControllerHE.FExtremidades_HE.id := FControllerHE.FDao.GetID(FControllerHE.FExtremidades_HE,'id');
  FControllerHE.FExtremidades_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FExtremidades_HE.edema := edtEdema.Text;
  FControllerHE.FExtremidades_HE.lesoes := edtLesoes.Text;
  FControllerHE.FExtremidades_HE.deformidades := edtDeformidades.Text;
  FControllerHE.FExtremidades_HE.cateteres_venenosos := edtPresCatetVenosas.Text;
  FControllerHE.FExtremidades_HE.local_diminuida := edtLocalPerfusaoDiminuida.Text;
  FControllerHE.FExtremidades_HE.sinais_infeccao_fungos := CbxSinaisInfeccaoFungos.ItemIndex;
  FControllerHE.FExtremidades_HE.baqueteamento_dedos := CbxBaqueteamentoDedos.ItemIndex;
  FControllerHE.FExtremidades_HE.desde := edtDesde.Text;
  FControllerHE.FExtremidades_HE.normal := CbxPerfusaoNormal.ItemIndex;
  FControllerHE.FExtremidades_HE.diminuida := CbxPerfusaoDiminuida.ItemIndex;
  FControllerHE.FExtremidades_HE.edema_mmii := edtEdemaMMII.Text;
  FControllerHE.FExtremidades_HE.ulceras_venosas := edtUlcerasVenosas.Text;
  FControllerHE.FExtremidades_HE.ulceras_arteriais := edtUlcerasArteriais.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelGenitais_he;
begin
  FControllerHE.FGenitais_HE.id := FControllerHE.FDao.GetID(FControllerHE.FGenitais_HE,'id');
  FControllerHE.FGenitais_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FGenitais_HE.tipo_secrecao := CbxCaracteristicaSecrecao.ItemIndex;
  FControllerHE.FGenitais_HE.lesoes := CbxAspectoLesoes.ItemIndex;
  FControllerHE.FGenitais_HE.odor := CbxAspectoOdor.ItemIndex;
  FControllerHE.FGenitais_HE.dor_miccoes := CbxAspectoMiccoes.ItemIndex;
  FControllerHE.FGenitais_HE.prurido := CbxAspectoPrurido.ItemIndex;
  FControllerHE.FGenitais_HE.presenca_secrecao := CbxPresencaSecrecao.ItemIndex;
  FControllerHE.FGenitais_HE.suspeita_dst := CbxSuspeitaDST.ItemIndex;
  FControllerHE.FGenitais_HE.ultima_coleta_co := CbxUltimaColetaCO.ItemIndex;
  FControllerHE.FGenitais_HE.atento_dst := CbxAtencaoDST.ItemIndex;
  FControllerHE.FGenitais_HE.usa_preservativo := CbxUsoPreservativo.ItemIndex;
  FControllerHE.FGenitais_HE.escrotal_edema := CbxBolsaEdema.ItemIndex;
  FControllerHE.FGenitais_HE.escrotal_hiperemia := CbxBolsaHiperemia.ItemIndex;
  FControllerHE.FGenitais_HE.presenca_parasitas := CbxPresencaParasitas.ItemIndex;
  FControllerHE.FGenitais_HE.anal_edema := CbxAnalEdema.ItemIndex;
  FControllerHE.FGenitais_HE.anal_ulceracoes := CbxAnalUlceracoes.ItemIndex;
  FControllerHE.FGenitais_HE.anal_hemorroidas := CbxAnalHemorroidas.ItemIndex;
  FControllerHE.FGenitais_HE.anal_abscesso := CbxAnalAbscesso.ItemIndex;
  FControllerHE.FGenitais_HE.anal_fissuras := CbxAnalFissuras.ItemIndex;
  FControllerHE.FGenitais_HE.anal_fistulas := CbxAnalFistulas.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelHE;
begin
  { GRAVA DADOS PRINCIPAIS }
  FControllerHE.FModel.ID := FControllerHE.FDao.GetID(FControllerHE.FModel,'id');

  if mskAdmissao.Text <> dtVAZIA then
    FControllerHE.FModel.Data_Admissao := StrToDate(mskAdmissao.Text);

  if mskAlta.Text <> dtVAZIA then
    FControllerHE.FModel.Data_alta := StrToDate(mskAlta.Text);

  FControllerHE.FModel.Leito := edtLeito.Text;
  FControllerHE.FModel.Idade := edtIdade.Text;

  FControllerHE.FModel.Numero_filhos := StrToInt(edtQtdFilhos.Text);
end;

procedure TfrmPreenchimentoHE.AlimentaModelHomem_he;
begin
  FControllerHE.FHomem_he.id := FControllerHE.GetID(FControllerHE.FHomem_he,'id');
  FControllerHE.FHomem_he.id_he := FControllerHE.FModel.ID;

  if mskExameProstata.Text <> dtVAZIA then
    FControllerHE.FHomem_he.Exame_preventivo_prostata := StrToDate(mskExameProstata.Text);

  FControllerHE.FHomem_he.Resultado_exame_prostata := edtResultadoExameProstata.Text;
  FControllerHE.FHomem_he.Atividade_sexual := CbxAtividadeSexual.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelInfs_antecedentes;
begin
  FControllerHE.FInfs_antecedentes.id := FControllerHE.FDao.GetID(FControllerHE.FInfs_antecedentes,'id');
  FControllerHE.FInfs_antecedentes.id_he := FControllerHE.FModel.ID;
  FControllerHE.FInfs_antecedentes.data_registro := Date;
  FControllerHE.FInfs_antecedentes.Tempo_internacao_anterior := StrToFloat(edtUltimaInternacao.Text);
  FControllerHE.FInfs_antecedentes.Motivo_internacao := edtMotivoUltimaInternacao.Text;
  FControllerHE.FInfs_antecedentes.tempo_transfusaosanguinea_anterior := StrToFloat(edtTempoTransfusao.Text);
  FControllerHE.FInfs_antecedentes.Obs_gastrointestinais_hepatobiliares := edtAlteracoesGastrointestinais.Text;
  FControllerHE.FInfs_antecedentes.Obs_alteracoes_osseas := edtAlteracoesOsseas.Text;
  FControllerHE.FInfs_antecedentes.Obs_alteracoes_renais_urinarias := edtAlteracoesRenaisUrinarias.Text;
  FControllerHE.FInfs_antecedentes.Obs_alteracoes_cardiovasculares := edtCardiovasculares.Text;
  FControllerHE.FInfs_antecedentes.Obs_alteracoes_pulmonares := edtAlteracoesPulmonares.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelMulher_he;
begin
  FControllerHE.FMulher_he.id := FControllerHE.FDao.GetID(FControllerHE.FMulher_he,'id');
  FControllerHE.FMulher_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FMulher_he.dum := edtDUM.Text;

  if (mskMenopausa.Text <> dtVAZIA) then
    FControllerHE.FMulher_he.Menopausa_desde := StrToDate(mskMenopausa.Text);

  FControllerHE.FMulher_he.Contraceptivo := CbxContraceptivo.ItemIndex;

  if (mskMenopausa.Text <> dtVAZIA) then
    FControllerHE.FMulher_he.Data_ginecologico_preventivo := StrToDate(mskExamePreventivo.Text);

  FControllerHE.FMulher_he.resultado_ginecologico_preventivo := edtResultadoPreventivo.Text;
  FControllerHE.FMulher_he.G := CbxG.ItemIndex;
  FControllerHE.FMulher_he.P := CbxP.ItemIndex;
  FControllerHE.FMulher_he.A := CbxA.ItemIndex;
  FControllerHE.FMulher_he.Autoexame_mama := CbxAutoExameMama.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelNariz_he;
begin
  FControllerHE.FNariz_He.id := FControllerHE.FDao.GetID(FControllerHE.FNariz_He,'id');
  FControllerHE.FNariz_He.id_he := FControllerHE.FModel.ID;
  FControllerHE.FNariz_He.secrecao := CbxSecrecao.ItemIndex;
  FControllerHE.FNariz_He.sujidade := CbxSujidadeNariz.ItemIndex;
  FControllerHE.FNariz_He.epistaxe := CbxEpistaxe.ItemIndex;
  FControllerHE.FNariz_He.rinorreia := CbxRinorreia.ItemIndex;
  FControllerHE.FNariz_He.desvio_septo := CbxDesvioSepto.ItemIndex;
  FControllerHE.FNariz_He.lesao := CbxLesao.ItemIndex;
  FControllerHE.FNariz_He.tipo_lesao := edtTipoLesaoNariz.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelOlhos_he;
begin
  FControllerHE.FOlhos_He.id := FControllerHE.FDao.GetID(FControllerHE.FOlhos_He,'id');
  FControllerHE.FOlhos_He.id_he := FControllerHE.FModel.ID;
  FControllerHE.FOlhos_He.preservada := CbxPreservada.ItemIndex;
  FControllerHE.FOlhos_He.diminuida := CbxAcuidadeDiminuida.ItemIndex;
  FControllerHE.FOlhos_He.ausente := CbxAcuidadeAusente.ItemIndex;
  FControllerHE.FOlhos_He.corada := CbxCorada.ItemIndex;
  FControllerHE.FOlhos_He.descorada := CbxDescorada.ItemIndex;
  FControllerHE.FOlhos_He.hiperemia := CbxHiperemiaOlhos.ItemIndex;
  FControllerHE.FOlhos_He.ictericia := CbxIctericia.ItemIndex;
  FControllerHE.FOlhos_He.anemia := CbxAnemia.ItemIndex;
  FControllerHE.FOlhos_He.sujidade := CbxSujidadeOlhos.ItemIndex;
  FControllerHE.FOlhos_He.edema_palpebral := CbxEdemaPalpebral.ItemIndex;
  FControllerHE.FOlhos_He.ptose_palpebral := CbxPtosePalpebral.ItemIndex;
  FControllerHE.FOlhos_He.isocoricas := CbxIsocoricas.ItemIndex;
  FControllerHE.FOlhos_He.anisocoricas := CbxAnisocoricas.ItemIndex;
  FControllerHE.FOlhos_He.fotoreagentes := CbxFotoReagentes.ItemIndex;
  FControllerHE.FOlhos_He.sem_fotoreacao := CbxSemFotoreacao.ItemIndex;
  FControllerHE.FOlhos_He.obs_outros := edtOutros.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelOuvidos_he;
begin
  FControllerHE.FOuvidos_He.id := FControllerHE.FDao.GetID(FControllerHE.FOuvidos_He,'id');
  FControllerHE.FOuvidos_He.id_he := FControllerHE.FModel.ID;
  FControllerHE.FOuvidos_He.qual_ausente := edtQualAusente.Text;
  FControllerHE.FOuvidos_He.tipo_lesao := CbxTipoLesao.ItemIndex;
  FControllerHE.FOuvidos_He.local_lesao := edtLocalLesaoOuvidos.Text;
  FControllerHE.FOuvidos_He.tipo_secrecao := CbxTipoSecrecao.ItemIndex;
  FControllerHE.FOuvidos_He.local_secrecao := edtLocalSecrecao.Text;
  FControllerHE.FOuvidos_He.preservada := CbxPreservadaOuvidos.ItemIndex;
  FControllerHE.FOuvidos_He.diminuida := CbxDiminuidaOuvidos.ItemIndex;
  FControllerHE.FOuvidos_He.ausente := CbxOuvidosAusente.ItemIndex;
  FControllerHE.FOuvidos_He.otalgia := CbxOtalgia.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelPele_he;
begin
  FControllerHE.FPele_HE.id := FControllerHE.FDao.GetID(FControllerHE.FPele_HE,'id');
  FControllerHE.FPele_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FPele_HE.palidez := CbxPalidez.ItemIndex;
  FControllerHE.FPele_HE.cianose := CbxCianose.ItemIndex;
  FControllerHE.FPele_HE.hiperemia := CbxHiperemiaPele.ItemIndex;
  FControllerHE.FPele_HE.integra := CbxIntegra.ItemIndex;
  FControllerHE.FPele_HE.lesionada := CbxLesionada.ItemIndex;
  FControllerHE.FPele_HE.local_lesao := edtLocalLesao.Text;
  FControllerHE.FPele_HE.prurido := CbxIntegra.ItemIndex;
  FControllerHE.FPele_HE.deformidades := CbxDeformidades.ItemIndex;
  FControllerHE.FPele_HE.torgor_normal := CbxTurgorNormal.ItemIndex;
  FControllerHE.FPele_HE.torgor_diminuido := CbxTurgorDiminuido.ItemIndex;
  FControllerHE.FPele_HE.equimose := CbxEquimose.ItemIndex;
  FControllerHE.FPele_HE.petequias := CbxPetequias.ItemIndex;
  FControllerHE.FPele_HE.eritemas := CbxEritemas.ItemIndex;
  FControllerHE.FPele_HE.exantemas := CbxExantemas.ItemIndex;
  FControllerHE.FPele_HE.hematomas := CbxHematomas.ItemIndex;
  FControllerHE.FPele_HE.urticarias := CbxUrticarias.ItemIndex;
  FControllerHE.FPele_HE.papulas := CbxPapulas.ItemIndex;
  FControllerHE.FPele_HE.tumor := CbxTumor.ItemIndex;
  FControllerHE.FPele_HE.nodulos := CbxNodulos.ItemIndex;
  FControllerHE.FPele_HE.abscessos := CbxAbscessos.ItemIndex;
  FControllerHE.FPele_HE.pustulas := CbxPustulas.ItemIndex;
  FControllerHE.FPele_HE.bolhas := CbxBolhas.ItemIndex;
  FControllerHE.FPele_HE.vesiculas := CbxVesiculas.ItemIndex;
  FControllerHE.FPele_HE.local_manchas := edtLocalManchas.Text;
  FControllerHE.FPele_HE.tamanho_manchas := edtTamanhoManchas.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelPescoco_he;
begin
  FControllerHE.FPescoco_HE.id := FControllerHE.FDao.GetID(FControllerHE.FPescoco_HE,'id');
  FControllerHE.FPescoco_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FPescoco_HE.ganglios_linfaticos := CbxGangliosLinfaticosPalpaveis.ItemIndex;
  FControllerHE.FPescoco_HE.dor_palpacao := CbxDorPalpacao.ItemIndex;
  FControllerHE.FPescoco_HE.indolor_palpacao := CbxIndolorPalpacao.ItemIndex;
  FControllerHE.FPescoco_HE.turgidez := CbxTurgidez.ItemIndex;
  FControllerHE.FPescoco_HE.alteracoes := edtAlteracoes.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelRisco_Queda_HE;
begin
  FControllerHE.FRisco_Queda_HE.id := FControllerHE.FDao.GetID(FControllerHE.FRisco_Queda_HE,'id');
  FControllerHE.FRisco_Queda_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FRisco_Queda_HE.maior_65 := CbxMaior65.ItemIndex;
  FControllerHE.FRisco_Queda_HE.urgencia_urinaria_fecal := CbxUrgenciaUrinariaFecal.ItemIndex;
  FControllerHE.FRisco_Queda_HE.deficit_avs := CbxDeficitAuditivo.ItemIndex;
  FControllerHE.FRisco_Queda_HE.uso_sedativos := CbxUsoSedativos.ItemIndex;
  FControllerHE.FRisco_Queda_HE.dificuldade_marcha := CbxDificuldadaMarcha.ItemIndex;
  FControllerHE.FRisco_Queda_HE.disturbio_comportamentos := CbxDisturbiosComportamento.ItemIndex;
  FControllerHE.FRisco_Queda_HE.mobilidade_prejudicada := CbxMobilidadeFisica.ItemIndex;
  FControllerHE.FRisco_Queda_HE.hipotensao_postural := CbxHipotensaoPostural.ItemIndex;
  FControllerHE.FRisco_Queda_HE.historico_queda_ultimo_ano := CbxHistoricoQuedaUltimoAno.ItemIndex;
  FControllerHE.FRisco_Queda_HE.hipoxia_hipoxemia := CbxHipoxia.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelRisco_Ulcera_Decubito_HE;
begin
  FControllerHE.FRisco_Ulcera_Decubito_HE.id := FControllerHE.FDao.GetID(FControllerHE.FRisco_Ulcera_Decubito_HE,'id');
  FControllerHE.FRisco_Ulcera_Decubito_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FRisco_Ulcera_Decubito_HE.percepcao_sensorial := CbxPercepcaoSensorial.ItemIndex;
  FControllerHE.FRisco_Ulcera_Decubito_HE.umidade := CbxUmidade.ItemIndex;
  FControllerHE.FRisco_Ulcera_Decubito_HE.atividade := CbxAtividade.ItemIndex;
  FControllerHE.FRisco_Ulcera_Decubito_HE.mobilidade := CbxMobilidade.ItemIndex;
  FControllerHE.FRisco_Ulcera_Decubito_HE.nutricao := CbxNutricao.ItemIndex;
  FControllerHE.FRisco_Ulcera_Decubito_HE.friccao_cisalhamento := CbxFriccaoCisalhamento.ItemIndex;

  if lblValorScore.Caption <> trim('') then
    FControllerHE.FRisco_Ulcera_Decubito_HE.valor_score := StrToFloat(lblValorScore.Caption);

  if lblEscalaBraden.Caption <> trim('') then
    FControllerHE.FRisco_Ulcera_Decubito_HE.braden := lblEscalaBraden.Caption;
end;

procedure TfrmPreenchimentoHE.AlimentaModelSinaisVitais;
begin
  FControllerHE.FSinais_vitais_he.id := FControllerHE.FDao.GetID(FControllerHE.FSinais_vitais_he,'id');
  FControllerHE.FSinais_vitais_he.id_he := FControllerHE.FModel.ID;
  FControllerHE.FSinais_vitais_he.temperatura := StrToFloat(edtTemperatura.Text);
  FControllerHE.FSinais_vitais_he.fc := StrToFloat(edtFC.Text);
  FControllerHE.FSinais_vitais_he.fr := StrToFloat(edtFR.Text);
  FControllerHE.FSinais_vitais_he.pa := StrToFloat(edtPA.Text);
  FControllerHE.FSinais_vitais_he.spo2 := StrToFloat(edtSPO.Text);
end;

procedure TfrmPreenchimentoHE.AlimentaModelTGI_he;
begin
  FControllerHE.FTGI_HE.id := FControllerHE.FDao.GetID(FControllerHE.FTGI_HE,'id');
  FControllerHE.FTGI_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FTGI_HE.cicatrizes := edtCicatrizes.Text;
  FControllerHE.FTGI_HE.outros_achados := edtOutrosAchados.Text;

  if edtMedidaFigado.Text <> trim('') then
    FControllerHE.FTGI_HE.medida_figado := StrToFloat(edtMedidaFigado.Text);

  FControllerHE.FTGI_HE.espontanea := CbxEspontanea.ItemIndex;
  FControllerHE.FTGI_HE.espontanea_assistida := CbxEspontaneaAssistida.ItemIndex;
  FControllerHE.FTGI_HE.npo := CbxNPO.ItemIndex;
  FControllerHE.FTGI_HE.sng := CbxSNG.ItemIndex;
  FControllerHE.FTGI_HE.sne := CbxSNE.ItemIndex;
  FControllerHE.FTGI_HE.npt := CbxNPT.ItemIndex;
  FControllerHE.FTGI_HE.sng_aberta := CbxSNGAberta.ItemIndex;
  FControllerHE.FTGI_HE.jejunostomia := CbxJejunostomia.ItemIndex;
  FControllerHE.FTGI_HE.gastrostomia := CbxGastrostomia.ItemIndex;
  FControllerHE.FTGI_HE.globoso := CbxGloboso.ItemIndex;
  FControllerHE.FTGI_HE.plano := CbxPlano.ItemIndex;
  FControllerHE.FTGI_HE.escavado := CbxEscavado.ItemIndex;
  FControllerHE.FTGI_HE.flacido := CbxFlacido.ItemIndex;
  FControllerHE.FTGI_HE.distendido := CbxDistendido.ItemIndex;
  FControllerHE.FTGI_HE.timpanico := CbxTimpanico.ItemIndex;
  FControllerHE.FTGI_HE.ascitico := CbxAscitico.ItemIndex;
  FControllerHE.FTGI_HE.inspecao := CbxInspecao.ItemIndex;
  FControllerHE.FTGI_HE.normais_audiveis := CbxRHANormais.ItemIndex;
  FControllerHE.FTGI_HE.ausentes := CbxRHAAusentes.ItemIndex;
  FControllerHE.FTGI_HE.hiperativos := CbxRHAHiperativos.ItemIndex;
  FControllerHE.FTGI_HE.hipoativos := CbxRHAHipoativos.ItemIndex;
  FControllerHE.FTGI_HE.sons_timpanicos := CbxSonsTimpanicos.ItemIndex;
  FControllerHE.FTGI_HE.sons_macicos := CbxSonsMacicos.ItemIndex;
  FControllerHE.FTGI_HE.indolor := CbxPalpacaoIndolor.ItemIndex;
  FControllerHE.FTGI_HE.doloroso_palpacao := edtDolorosoPalpacao.Text;
  FControllerHE.FTGI_HE.presenca_massa_anormal := edtPresencaMassaAnormal.Text;
  FControllerHE.FTGI_HE.palpacao_fig_normal := CbxPalpacaoFigadoNormal.ItemIndex;
  FControllerHE.FTGI_HE.palpacao_fig_alterado := CbxPalpacaoFigadoAlterado.ItemIndex;
  FControllerHE.FTGI_HE.percussao_fig_normal := CbxPercussaoFigadoNormal.ItemIndex;
  FControllerHE.FTGI_HE.percussao_fig_alterado := CbxPercussaoFigadoAlterado.ItemIndex;
end;

procedure TfrmPreenchimentoHE.AlimentaModelTorax_he;
begin
  FControllerHE.FTorax_HE.id := FControllerHE.FDao.GetID(FControllerHE.FTorax_HE,'id');
  FControllerHE.FTorax_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FTorax_HE.obs_alterado := edtAlteracoesTorax.Text;
  FControllerHE.FTorax_HE.presenca_cateteres_centrais := edtPresCatetCentrais.Text;
  FControllerHE.FTorax_HE.forma_normal := CbxFormaNormal.ItemIndex;
  FControllerHE.FTorax_HE.forma_alterado := CbxFormaAlterado.ItemIndex;
  FControllerHE.FTorax_HE.simetrico := CbxSimetrico.ItemIndex;
  FControllerHE.FTorax_HE.assimetrico := CbxAssimetrico.ItemIndex;
  FControllerHE.FTorax_HE.funil := CbxFunil.ItemIndex;
  FControllerHE.FTorax_HE.barril := CbxBarril.ItemIndex;
  FControllerHE.FTorax_HE.pombo := CbxPombo.ItemIndex;
  FControllerHE.FTorax_HE.cifoescoliose := CbxCifoescoliose.ItemIndex;
  FControllerHE.FTorax_HE.expansibilidade_normal := CbxExpNormal.ItemIndex;
  FControllerHE.FTorax_HE.expansibilidade_diminuida := CbxExpDiminuida.ItemIndex;
  FControllerHE.FTorax_HE.local_expansibilidade_diminuida := edtLocalDiminuida.Text;
  FControllerHE.FTorax_HE.presenca_desde := edtPresencaDesdeCatetCentrais.Text;
end;

procedure TfrmPreenchimentoHE.AlimentaModelVias_Aeres_he;
begin
  FControllerHE.FVias_Aeres_HE.id := FControllerHE.FDao.GetID(FControllerHE.FVias_Aeres_HE,'id');
  FControllerHE.FVias_Aeres_HE.id_he := FControllerHE.FModel.ID;
  FControllerHE.FVias_Aeres_HE.controlado := CbxControlado.ItemIndex;
  FControllerHE.FVias_Aeres_HE.assistido := CbxAssistido.ItemIndex;
  FControllerHE.FVias_Aeres_HE.assistido_controlado := CbxAssistidoControlado.ItemIndex;
  FControllerHE.FVias_Aeres_HE.mandatorio_intermitente := CbxMandatorioIntermitente.ItemIndex;
  FControllerHE.FVias_Aeres_HE.fio2 := edtFio2.Text;
  FControllerHE.FVias_Aeres_HE.peep := edtPeep.Text;
  FControllerHE.FVias_Aeres_HE.comissura_labial := edtComissuraLabial.Text;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarAlergiaClick(Sender: TObject);
begin
  FControllerHE.FAlergia_he.Id := FControllerHE.FDao.GetID(FControllerHE.FAlergia_he,'id');
  FControllerHE.FAlergia_he.Id_he := FControllerHE.FModel.ID;
  FControllerHE.GravaAlergia_HE;
  FControllerHE.MostraAlergias;
  edtAlergia.Clear;
  edtAlergia.SetFocus;
  GrdAlergiasHE.DataSource := FControllerHE.DsAlergia_HE;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarAntecedentePessoalClick(
  Sender: TObject);
begin
  FControllerHE.FAntecedente_paciente.Id := FControllerHE.FDao.GetID(FControllerHE.FAntecedente_paciente,'id');
  FControllerHE.FAntecedente_paciente.Id_he := FControllerHE.FModel.ID;
  FControllerHE.FAntecedente_paciente.Tipo_antecedente := iTIPO_ANTECEDENTE_PESSOAL;
  FControllerHE.GravaAntecedentePaciente;
  FControllerHE.MostraAntecedentes;
  edtAntecedentePessoal.Clear;
  edtAntecedentePessoal.SetFocus;
  GrdAntecedentesPessoaisHE.DataSource := FControllerHE.DsAntecedentesPaciente;
  GrdAntecedentesFamiliarHE.DataSource := nil;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarCirurgiaClick(Sender: TObject);
begin
  FControllerHE.FCirurgia_he.Id := FControllerHE.FDao.GetID(FControllerHE.FCirurgia_he,'id');
  FControllerHE.FCirurgia_he.Id_he := FControllerHE.FModel.ID;
  FControllerHE.GravaCirurgia_HE;
  FControllerHE.MostraCirurgias;
  edtCirurgia.Clear;
  edtCirurgia.SetFocus;
  GrdCirurgiasHE.DataSource := FControllerHE.DsCirurgia_HE;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarDiagnosticoEnfermagemClick(
  Sender: TObject);
begin
  FControllerHE.FDiagnostico_Enfermagem_HE.Id := FControllerHE.FDao.GetID(FControllerHE.FDiagnostico_Enfermagem_HE,'id');
  FControllerHE.FDiagnostico_Enfermagem_HE.Id_he := FControllerHE.FModel.ID;
  FControllerHE.GravaDiagnosticos_HE;
  FControllerHE.MostraDiagnosticos;
  edtDiagnosticoEnfermagem.Clear;
  edtDiagnosticoEnfermagem.SetFocus;
  GrdDiagnosticosEnfermagem_HE.DataSource := FControllerHE.DsDiagnostico_HE;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarPrescricaoClick(Sender: TObject);
begin
  FControllerHE.FPrescricao_Enfermagem_HE.Id := FControllerHE.FDao.GetID(FControllerHE.FPrescricao_Enfermagem_HE,'id');
  FControllerHE.FPrescricao_Enfermagem_HE.Id_he := FControllerHE.FModel.ID;
  FControllerHE.FPrescricao_Enfermagem_HE.id_prescricao_enfermagem := FControllerHE.FPrescricaoEnfermagem.Id;
  FControllerHE.FPrescricao_Enfermagem_HE.frequencia := CbxFrequenciaPrescricao.ItemIndex;
  FControllerHE.FPrescricao_Enfermagem_HE.descricao := edtDescricaoAdicionalPrescricao.Text;
  FControllerHE.GravaPrescricoes_HE;
  FControllerHE.MostraPrescricoes;
  edtPrescricaoEnfermagem.Clear;
  edtDescricaoAdicionalPrescricao.Clear;
  CbxFrequenciaPrescricao.ItemIndex := 0;
  edtPrescricaoEnfermagem.SetFocus;
  GrdPrescricoesHE.DataSource := FControllerHE.DsPrescricao_HE;
  GrdPrescricoesEnfermagem.Visible := false;
  GrdPrescricoesHE.Visible := true;
end;

procedure TfrmPreenchimentoHE.BtnGravarAntecedenteClick(Sender: TObject);
begin
  AlimentaModelAntecedentes_Paciente;
  FControllerHE.GravaComplementosAntecedente;
end;

procedure TfrmPreenchimentoHE.BtnAdicionarAtividadeAtividadeReligiosaClick(
  Sender: TObject);
begin
  FControllerHE.FAtividadeReligiosa_he.Id := FControllerHE.FDao.GetID(FControllerHE.FAtividadeReligiosa_he,'id');
  FControllerHE.FAtividadeReligiosa_he.Id_he := FControllerHE.FModel.ID;
  FControllerHE.GravaAtividadeReligiosa_HE;
  FControllerHE.MostraAtividadesReligiosas;
  edtAtividadeReligiosa.Clear;
  edtAtividadeReligiosa.SetFocus;
  GrdAtividadesReligiosasHE.DataSource := FControllerHE.DsAtividadeReligiosa_HE;
end;

procedure TfrmPreenchimentoHE.BtnIncluirAntecedenteFamiliarClick(
  Sender: TObject);
begin
  FControllerHE.FAntecedente_paciente.Id := FControllerHE.FDao.GetID(FControllerHE.FAntecedente_paciente,'id');
  FControllerHE.FAntecedente_paciente.Id_he := FControllerHE.FModel.ID;
  FControllerHE.FAntecedente_paciente.Tipo_antecedente := iTIPO_ANTECEDENTE_FAMILIAR;
  FControllerHE.GravaAntecedentePaciente;
  FControllerHE.MostraAntecedentes;
  edtAntececedenteFamiliar.Clear;
  edtAntececedenteFamiliar.SetFocus;
  GrdAntecedentesFamiliarHE.DataSource := FControllerHE.DsAntecedentesPaciente;
  GrdAntecedentesPessoaisHE.DataSource := nil;
end;

procedure TfrmPreenchimentoHE.BtnProximoClick(Sender: TObject);
begin
  { VERIFICAR SE TA ALTERANDO OU INCLUINDO }
  case PgCtrlHE.ActivePageIndex of
    0:
      begin
        AlimentaModelHE;
        if FControllerHE.GravaHE then
          PgCtrlHE.ActivePageIndex := 1;
      end;

    1:
      begin
        PgCtrlHE.ActivePageIndex := 2;
      end;

    2:
      begin
        AlimentaModelInfs_antecedentes;
        FControllerHE.GravaInfsAntecedente;

        if VerificaSexo = iFEMININO then
        begin
          AlimentaModelMulher_he;
          FControllerHE.GravaMulher_He;
        end
        else
        if VerificaSexo = iMASCULINO then
        begin
          AlimentaModelHomem_he;
          FControllerHE.GravaHomem_He;
        end;

        PgCtrlHE.ActivePageIndex := 3;
      end;

      3:
        begin
          AlimentaModelSinaisVitais;
          FControllerHE.GravaSinaisVitais;
          AlimentaModelCondicoesGerais;
          FControllerHE.GravaCondicoesGerais;
          AlimentaModelAvaliacaoNeurologica;
          FControllerHE.GravaAvaliacaoNeurologica;
        end;

      4:
        begin
          AlimentaModelAtividadeFisica_he;
          FControllerHE.GravaAtividadeFisica_he;

          AlimentaModelPele_he;
          FControllerHE.GravaPele_he;

          AlimentaModelCouro_cabeludo_he;
          FControllerHE.GravaCouro_cabeludo_he;

          AlimentaModelOlhos_he;
          FControllerHE.GravaOlhos_he;

          AlimentaModelOuvidos_he;
          FControllerHE.GravaOuvidos_he;
        end;

      5:
        begin
          AlimentaModelNariz_he;
          FControllerHE.GravaNariz_he;

          AlimentaModelBoca_Faringe_he;
          FControllerHE.GravaBoca_Faringe_He;

          AlimentaModelVias_Aeres_he;
          FControllerHE.GravaVias_Aeres_HE;

          AlimentaModelPescoco_he;
          FControllerHE.GravaPescoco_HE;

          AlimentaModelTorax_he;
          FControllerHE.GravaTorax_HE;

          AlimentaModelAusculta_Pulmonar_he;
          FControllerHE.GravaAusculta_Pulmonar_he;

          AlimentaModelAusculta_Cardiaca_he;
          FControllerHE.GravaAusculta_Cardiaca_HE;
        end;

        6:
          begin
            AlimentaModelTGI_he;
            FControllerHE.GravaTGI_HE;

            AlimentaModelAvaliacao_Renal_he;
            FControllerHE.GravaAvaliacao_Renal_HE;
          end;

        7:
          begin
            AlimentaModelGenitais_he;
            FControllerHE.GravaGenitais_HE;

            AlimentaModelExtremidades_he;
            FControllerHE.GravaExtremidades_HE;
          end;

        8:
          begin
            AlimentaModelRisco_Ulcera_Decubito_HE;
            FControllerHE.GravaRisco_Ulcera_Decubito_HE;

            AlimentaModelRisco_Queda_HE;
            FControllerHE.GravaRisco_Queda_HE;
          end;
  end;
end;

procedure TfrmPreenchimentoHE.BtnRemoverAlergiaClick(Sender: TObject);
begin
  FControllerHE.RemoverAlergia_HE;
  FControllerHE.MostraAlergias;
  edtAlergia.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverAntecedentePessoalClick(
  Sender: TObject);
begin
  FControllerHE.RemoverAntecedentePaciente;
  FControllerHE.MostraAntecedentes;
  edtAntecedentePessoal.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverAtividadeReligiosaClick(
  Sender: TObject);
begin
  FControllerHE.RemoverAtividadeReligiosa_HE;
  FControllerHE.MostraAtividadesReligiosas;
  edtAtividadeReligiosa.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverCirurgiaClick(Sender: TObject);
begin
  FControllerHE.RemoverCirurgia_HE;
  FControllerHE.MostraCirurgias;
  edtCirurgia.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverClick(Sender: TObject);
begin
  FControllerHE.RemoverAntecedentePaciente;
  FControllerHE.MostraAntecedentes;
  edtAntececedenteFamiliar.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverDiagnosticoEnfermagemClick(
  Sender: TObject);
begin
  FControllerHE.RemoverDiagnostico_HE;
  FControllerHE.MostraDiagnosticos;
  edtDiagnosticoEnfermagem.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnRemoverPrescricaoClick(Sender: TObject);
begin
  FControllerHE.RemoverPrescricao_HE;
  FControllerHE.MostraPrescricoes;
  edtPrescricaoEnfermagem.SetFocus;
end;

procedure TfrmPreenchimentoHE.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

function TfrmPreenchimentoHE.CalculaScore: integer;
begin
  Result :=
    CbxPercepcaoSensorial.ItemIndex + CbxUmidade.ItemIndex + CbxAtividade.ItemIndex +
    CbxMobilidade.ItemIndex + CbxNutricao.ItemIndex + CbxFriccaoCisalhamento.ItemIndex;

  lblValorScore.Caption := IntToStr(Result);

  if (Result >= 6) and (Result <= 9) then
    lblEscalaBraden.Caption := '6 - 9 | Alt�ssimo Risco';

  if (Result >= 10) and (Result <= 12) then
    lblEscalaBraden.Caption := '10 - 12 | Alto Risco';

  if (Result >= 13) and (Result <= 15) then
    lblEscalaBraden.Caption := '13 - 15 | Risco Moderado';

  if (Result >= 15) and (Result <= 18) then
    lblEscalaBraden.Caption := '16 - 18 | Risco Baixo';

  if (Result >= 19) and (Result <= 25) then
    lblEscalaBraden.Caption := '19 - 25 | Sem Risco';
end;

procedure TfrmPreenchimentoHE.CbxAtividadeSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxDeficitAuditivoSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxDificuldadaMarchaSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxDisturbiosComportamentoSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxFriccaoCisalhamentoSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxHipotensaoPosturalSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxHipoxiaSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxHistoricoQuedaUltimoAnoSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxMaior65Select(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxMobilidadeFisicaSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxMobilidadeSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxNutricaoSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxPercepcaoSensorialSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxUmidadeSelect(Sender: TObject);
begin
  CalculaScore;
end;

procedure TfrmPreenchimentoHE.CbxUrgenciaUrinariaFecalSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.CbxUsoSedativosSelect(Sender: TObject);
begin
  VerificaRiscoQueda;
end;

procedure TfrmPreenchimentoHE.edtAlergiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdAlergias.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtAlergiaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtAlergia.Text <> trim(sVAZIO) then
  begin
    GrdAlergias.Visible := true;
    GrdAlergiasHE.Visible := false;
    GrdAlergias.DataSource := FControllerHE.DsAlergia;
    FControllerHE.FAlergia.Situacao := sATIVO;
    FControllerHE.FAlergia.Descricao := '%'+edtAlergia.Text+'%';
    FControllerHE.RetornaAlergiaPorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtAntececedenteFamiliarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdAntecedenteFamiliar.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtAntececedenteFamiliarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if edtAntececedenteFamiliar.Text <> trim(sVAZIO) then
  begin
    GrdAntecedenteFamiliar.Visible := true;
    GrdAntecedenteFamiliar.DataSource := FControllerHE.DsAntecedente;
    FControllerHE.FAntecedente.Tipo_antecedente := iTIPO_ANTECEDENTE_FAMILIAR;
    FControllerHE.FAntecedente.Situacao := sATIVO;
    FControllerHE.FAntecedente.Descricao := '%'+edtAntececedenteFamiliar.Text+'%';
    FControllerHE.RetornaAntecedentePorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtAntecedentePessoalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdAntecedentePessoal.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtAntecedentePessoalKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if edtAntecedentePessoal.Text <> trim(sVAZIO) then
  begin
    GrdAntecedentePessoal.Visible := true;
    GrdAntecedentesPessoaisHE.Visible := false;
    GrdAntecedentePessoal.DataSource := FControllerHE.DsAntecedente;
    FControllerHE.FAntecedente.Tipo_antecedente := iTIPO_ANTECEDENTE_PESSOAL;
    FControllerHE.FAntecedente.Situacao := sATIVO;
    FControllerHE.FAntecedente.Descricao := '%'+edtAntecedentePessoal.Text+'%';
    FControllerHE.RetornaAntecedentePorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtAtividadeReligiosaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdAtividadeReligiosa.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtAtividadeReligiosaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if edtAtividadeReligiosa.Text <> trim(sVAZIO) then
  begin
    GrdAtividadeReligiosa.Visible := true;
    GrdAtividadesReligiosasHE.Visible := false;
    GrdAtividadeReligiosa.DataSource := FControllerHE.DsAtividadeReligiosa;
    FControllerHE.FAtividadeReligiosa.Situacao := sATIVO;
    FControllerHE.FAtividadeReligiosa.Descricao := '%'+edtAtividadeReligiosa.Text+'%';
    FControllerHE.RetornaAtividadeReligiosaPorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtCirurgiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdCirurgias.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtCirurgiaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtCirurgia.Text <> trim(sVAZIO) then
  begin
    GrdCirurgias.Visible := true;
    GrdCirurgiasHE.Visible := false;
    GrdCirurgias.DataSource := FControllerHE.DsCirurgia;
    FControllerHE.FCirurgia.Situacao := sATIVO;
    FControllerHE.FCirurgia.Descricao := '%'+edtCirurgia.Text+'%';
    FControllerHE.RetornaCirurgiaPorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtDiagnosticoEnfermagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdDiagnosticoEnfermagem.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtDiagnosticoEnfermagemKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if edtDiagnosticoEnfermagem.Text <> trim(sVAZIO) then
  begin
    GrdDiagnosticoEnfermagem.Visible := true;
    GrdDiagnosticosEnfermagem_HE.Visible := false;
    GrdDiagnosticoEnfermagem.DataSource := FControllerHE.DsDiagnostico;
    FControllerHE.FDiagnostico_Enfermagem.Situacao := sATIVO;
    FControllerHE.FDiagnostico_Enfermagem.Descricao := '%'+edtDiagnosticoEnfermagem.Text+'%';
    FControllerHE.RetornaDiagnosticoPorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.edtEnfermeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdEnfermeiro.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtEnfermeiroKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtEnfermeiro.Text <> trim(sVAZIO) then
  begin
    GrdEnfermeiro.Visible := true;
    GrdEnfermeiro.DataSource := FControllerHE.DsPessoas;
    FControllerHE.FPessoa.Tipo_pessoa := sTIPO_PESSOA_COLABORADOR;
    FControllerHE.FPessoa.Situacao := sATIVO;
    FControllerHE.FPessoa.Nome := '%'+edtEnfermeiro.Text+'%';
    FControllerHE.RetornaPessoaPorNome;
  end;
end;

procedure TfrmPreenchimentoHE.edtPacienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdPaciente.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtPacienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtPaciente.Text <> trim(sVAZIO) then
  begin
    GrdPaciente.Visible := true;
    GrdPaciente.DataSource := FControllerHE.DsPessoas;
    FControllerHE.FPessoa.Tipo_pessoa := sTIPO_PESSOA_PACIENTE;
    FControllerHE.FPessoa.Situacao := sATIVO;
    FControllerHE.FPessoa.Nome := '%'+edtPaciente.Text+'%';
    FControllerHE.RetornaPessoaPorNome;
  end;
end;

procedure TfrmPreenchimentoHE.edtPrescricaoEnfermagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_DOWN then
    GrdPrescricoesEnfermagem.SetFocus;
end;

procedure TfrmPreenchimentoHE.edtPrescricaoEnfermagemKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if edtPrescricaoEnfermagem.Text <> trim(sVAZIO) then
  begin
    GrdPrescricoesEnfermagem.Visible := true;
    GrdPrescricoesHE.Visible := false;
    GrdPrescricoesEnfermagem.DataSource := FControllerHE.DsPrescricao;
    FControllerHE.FPrescricaoEnfermagem.Situacao := sATIVO;
    FControllerHE.FPrescricaoEnfermagem.Descricao := '%'+edtPrescricaoEnfermagem.Text+'%';
    FControllerHE.RetornaPrescricaoPorDescricao;
  end;
end;

procedure TfrmPreenchimentoHE.FormCreate(Sender: TObject);
begin
  FControllerHE := TControllerHE.Create;
end;

procedure TfrmPreenchimentoHE.FormDestroy(Sender: TObject);
begin
  FControllerHE.Free;
end;

procedure TfrmPreenchimentoHE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL, 0, 0);

  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TfrmPreenchimentoHE.FormShow(Sender: TObject);
var
  Salvar: tpSalvar;
begin
  PgCtrlHE.ActivePageIndex := 0;

  if Salvar = tpIncluir then
    begin
      Limpar;
      mskAdmissao.SetFocus;
    end;
end;

procedure TfrmPreenchimentoHE.GrdAlergiasDblClick(Sender: TObject);
begin
  edtAlergia.Text := FControllerHE.RegistrosAlergias.FieldByName('descricao').AsString;
  FControllerHE.FAlergia.Descricao := FControllerHE.RegistrosAlergias.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FAlergia_he.Id_Alergia := FControllerHE.RegistrosAlergias.FieldByName('id').AsInteger;
  GrdAlergias.Visible := false;
  GrdAlergiasHE.Visible := true;
  BtnAdicionarAlergia.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdAlergiasExit(Sender: TObject);
begin
  GrdAlergias.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdAlergiasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdAlergiasDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdAntecedenteFamiliarDblClick(Sender: TObject);
begin
  edtAntececedenteFamiliar.Text := FControllerHE.FRegistrosAntecedente.FieldByName('descricao').AsString;
  FControllerHE.FAntecedente.Descricao := FControllerHE.FRegistrosAntecedente.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FAntecedente_paciente.Id_Antecedente := FControllerHE.FRegistrosAntecedente.FieldByName('id').AsInteger;
  GrdAntecedenteFamiliar.Visible := false;
  BtnIncluirAntecedenteFamiliar.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdAntecedenteFamiliarExit(Sender: TObject);
begin
  GrdAntecedenteFamiliar.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdAntecedenteFamiliarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdAntecedenteFamiliarDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdAntecedentePessoalDblClick(Sender: TObject);
begin
  edtAntecedentePessoal.Text := FControllerHE.FRegistrosAntecedente.FieldByName('descricao').AsString;
  FControllerHE.FAntecedente.Descricao := FControllerHE.FRegistrosAntecedente.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FAntecedente_paciente.Id_Antecedente := FControllerHE.FRegistrosAntecedente.FieldByName('id').AsInteger;
  GrdAntecedentePessoal.Visible := false;
  GrdAntecedentesPessoaisHE.Visible := true;
  BtnAdicionarAntecedentePessoal.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdAntecedentePessoalExit(Sender: TObject);
begin
  GrdAntecedentePessoal.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdAntecedentePessoalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdAntecedentePessoalDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdAtividadeReligiosaDblClick(Sender: TObject);
begin
  edtAtividadeReligiosa.Text := FControllerHE.RegistrosAtividadesReligiosas.FieldByName('descricao').AsString;
  FControllerHE.FAtividadeReligiosa.Descricao := FControllerHE.RegistrosAtividadesReligiosas.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FAtividadeReligiosa_HE.Id_atividade_religiosa := FControllerHE.RegistrosAtividadesReligiosas.FieldByName('id').AsInteger;
  GrdAtividadeReligiosa.Visible := false;
  GrdAtividadesReligiosasHE.Visible := true;
  BtnAdicionarAtividadeAtividadeReligiosa.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdAtividadeReligiosaExit(Sender: TObject);
begin
  GrdAtividadeReligiosa.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdAtividadeReligiosaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdAtividadeReligiosaDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdCirurgiasDblClick(Sender: TObject);
begin
  edtCirurgia.Text := FControllerHE.RegistrosCirurgias.FieldByName('descricao').AsString;
  FControllerHE.FCirurgia.Descricao := FControllerHE.RegistrosCirurgias.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FCirurgia_he.Id_Cirurgia := FControllerHE.RegistrosCirurgias.FieldByName('id').AsInteger;
  GrdCirurgias.Visible := false;
  GrdCirurgiasHE.Visible := true;
  BtnAdicionarCirurgia.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdCirurgiasExit(Sender: TObject);
begin
  GrdCirurgias.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdCirurgiasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdCirurgiasDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdDiagnosticoEnfermagemDblClick(Sender: TObject);
begin
  edtDiagnosticoEnfermagem.Text := FControllerHE.RegistrosDiagnosticos.FieldByName('descricao').AsString;
  FControllerHE.FDiagnostico_Enfermagem.Descricao := FControllerHE.RegistrosDiagnosticos.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FDiagnostico_Enfermagem_HE.id_diagnostico := FControllerHE.RegistrosDiagnosticos.FieldByName('id').AsInteger;
  GrdDiagnosticoEnfermagem.Visible := false;
  GrdDiagnosticosEnfermagem_HE.Visible := true;
  BtnAdicionarDiagnosticoEnfermagem.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdDiagnosticoEnfermagemExit(Sender: TObject);
begin
  GrdDiagnosticoEnfermagem.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdDiagnosticoEnfermagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdDiagnosticoEnfermagemDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdEnfermeiroDblClick(Sender: TObject);
begin
  edtEnfermeiro.Text := FControllerHE.FRegistrosPessoas.FieldByName('nome').AsString;
  FControllerHE.FPessoa.Nome := FControllerHE.FRegistrosPessoas.FieldByName('nome').AsString;
  FControllerHE.FModel.ID_Enfermeiro := FControllerHE.FRegistrosPessoas.FieldByName('id').AsInteger;
  GrdEnfermeiro.Visible := false;
  mskAlta.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdEnfermeiroExit(Sender: TObject);
begin
  GrdEnfermeiro.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdEnfermeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdEnfermeiroDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdPacienteDblClick(Sender: TObject);
begin
  edtPaciente.Text := FControllerHE.FRegistrosPessoas.FieldByName('nome').AsString;
  FControllerHE.FPessoa.Nome := FControllerHE.FRegistrosPessoas.FieldByName('nome').AsString;
  FControllerHE.FModel.ID_Paciente := FControllerHE.FRegistrosPessoas.FieldByName('id').AsInteger;
  GrdPaciente.Visible := false;
  edtEnfermeiro.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdPacienteExit(Sender: TObject);
begin
  GrdPaciente.Visible := false;
end;

procedure TfrmPreenchimentoHE.GrdPacienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdPacienteDblClick(self);
end;

procedure TfrmPreenchimentoHE.GrdPrescricoesEnfermagemDblClick(Sender: TObject);
begin
  edtPrescricaoEnfermagem.Text := FControllerHE.RegistrosPrescricoes.FieldByName('descricao').AsString;
  FControllerHE.FPrescricaoEnfermagem.Descricao := FControllerHE.RegistrosPrescricoes.FieldByName('descricao').AsString; // verificar se isso � util nessa parte
  FControllerHE.FPrescricao_Enfermagem_HE.id_prescricao_enfermagem := FControllerHE.RegistrosPrescricoes.FieldByName('id').AsInteger;
  {GrdPrescricoesEnfermagem.Visible := false;
  GrdPrescricoesHE.Visible := true;}
  edtDescricaoAdicionalPrescricao.SetFocus;
end;

procedure TfrmPreenchimentoHE.GrdPrescricoesEnfermagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key = VK_ESCAPE) or (Key = VK_RETURN)) then
    GrdPrescricoesEnfermagemDblClick(self);
end;

procedure TfrmPreenchimentoHE.Limpar;
var
  n: Integer;
  nTotComponentes: Integer;
begin
  nTotComponentes := Self.ComponentCount;
  for n := 0 to nTotComponentes - 1 do
  begin
    if (Self.Components[n] is TEdit) then
    begin
      (Self.Components[n] as TEdit).Clear;
    end
    else if (Self.Components[n] is TMemo) then
    begin
      (Self.Components[n] as TMemo).Clear;
    end
    else if (Self.Components[n] is TMaskEdit) then
    begin
      (Self.Components[n] as TMaskEdit).Clear
    end
    else if (Self.Components[n] is TComboBox) then
    begin
      (Self.Components[n] as TComboBox).ItemIndex := 0;
      (Self.Components[n] as TComboBox).Text := '';
    end
    else if (Self.Components[n] is TRichEdit) then
    begin
      (Self.Components[n] as TRichEdit).Lines.Text := '';
    end;
  end;
end;

procedure TfrmPreenchimentoHE.TbShAntecedentesPessoaisShow(Sender: TObject);
begin
  case VerificaSexo of
    iFEMININO:
      begin
        GrpBxHomem.Visible := false;
        GrpBxMulher.Top := 175;
      end;

    iMASCULINO:
      begin
        GrpBxMulher.Visible := false;
      end;
  end;
end;

procedure TfrmPreenchimentoHE.TbShGenitaliasExtremidadesShow(Sender: TObject);
begin
  { DEFINE QUAL PANEL EXIBIR }
  if VerificaSexo = iFEMININO then
    PnGenitaisFemininos.Visible := true
  else
    PnGenitaisMasculinos.Visible := true;
end;

procedure TfrmPreenchimentoHE.VerificaRiscoQueda;
var
  Quantidade: integer;
begin
  Quantidade := 0;

  if (CbxMaior65.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxUrgenciaUrinariaFecal.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxDeficitAuditivo.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxUsoSedativos.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxDificuldadaMarcha.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxDisturbiosComportamento.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxMobilidadeFisica.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxHipotensaoPostural.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  if (CbxHistoricoQuedaUltimoAno.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Alto Risco de Queda';
      Quantidade := Quantidade + 1;
    end;

  if (CbxHipoxia.ItemIndex > 1) then
    begin
      lblRiscoQueda.Caption := 'Sim';
      Quantidade := Quantidade + 1;
    end;

  { ALTO RISCO }
  if StrToInt(edtIdade.Text) > 75 then
    lblRiscoQueda.Caption := 'Alto Risco de Queda';

  if Quantidade >= 4 then
    lblRiscoQueda.Caption := 'Alto Risco de Queda';
end;

function TfrmPreenchimentoHE.VerificaSexo: integer;
begin
  FControllerHE.FPessoa.Id := FControllerHE.FModel.ID_Paciente;

  Result := FControllerHE.VerificaSexo;
end;

end.
