unit unFrmBuscaBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmBuscaBase = class(TForm)
    PnTopo: TPanel;
    PnDados: TPanel;
    PnRodape: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaBase: TfrmBuscaBase;

implementation

{$R *.dfm}

end.
