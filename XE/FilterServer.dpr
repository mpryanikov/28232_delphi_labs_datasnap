program FilterServer;

uses
  Forms,
  FormServerUnit in 'FormServerUnit.pas' {Form2},
  ServerMethodsUnit2 in 'ServerMethodsUnit2.pas',
  ServerContainerUnit2 in 'ServerContainerUnit2.pas' {ServerContainer2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TServerContainer2, ServerContainer2);
  Application.Run;
end.

