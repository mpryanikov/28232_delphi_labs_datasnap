unit FormClientUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXDataSnap, DBXCommon, DB, SqlExpr, StdCtrls, IPPeerClient;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    SQLConnection1: TSQLConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses proxy;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var aClient: TServerMethods2Client;
begin
  with SQLConnection1 do
    if not Connected then Open;
  aClient := TServerMethods2Client.Create(
    SQLConnection1.DBXConnection);
  try
    Edit1.Text := aClient.ReverseString(Edit1.Text);
  finally
    aClient.Free;
  end;
end;

end.
