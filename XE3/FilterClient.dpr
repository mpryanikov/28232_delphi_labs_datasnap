program FilterClient;

uses
  Forms,
  FormClientUnit in 'FormClientUnit.pas' {Form3},
  proxy in 'proxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
