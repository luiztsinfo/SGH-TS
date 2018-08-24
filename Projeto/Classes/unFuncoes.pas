unit unFuncoes;

interface

uses
  Vcl.Dialogs, System.SysUtils;

type
  TFuncoes = class
    private

    public
      function TrataReal(Valor: string): string;
  end;

implementation

{ TFuncoes }

function TFuncoes.TrataReal(Valor: string): string;
begin
  try
    if Valor <> '' then
      begin
        Valor := FormatFloat('#0.00',StrToFloat(Valor));

        Result := Valor;
      end
    else
      begin
        Valor := '0,00';
        Valor := StringReplace(Valor,',','.',[rfReplaceAll]);
        Result := Valor;
      end;
  except
    MessageDlg('Erro ao formatar o valor!',mtError,[mbOk],0);
  end;
end;

end.
