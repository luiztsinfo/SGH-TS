unit unFrmFundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmFundo = class(TForm)
    procedure FormResize(Sender: TObject);
  private
    function fncBarraTaregas: integer;
  public
    { Public declarations }
  end;

var
  frmFundo: TfrmFundo;

implementation

{$R *.dfm}

function TfrmFundo.fncBarraTaregas: integer;
var
  rRect: TRect;
  rBarraTarefas: HWND;
begin
  // Localiza o Handle da barra de tarefas
  rBarraTarefas := FindWindow('Shell_TrayWnd', nil);

  // Pega o "ret�ngulo" que envolve a barra e sua altura
  GetWindowRect(rBarraTarefas, rRect);

  // Retorna a altura da barra
  Result := rRect.Bottom - rRect.Top;
end;

procedure TfrmFundo.FormResize(Sender: TObject);
begin
  BorderStyle := bsNone;
  Width := Screen.Width;
  Height := Screen.Height - fncBarraTaregas;
end;

end.