unit CFDSpanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, mainmenu,
  inifiles, Vcl.Imaging.jpeg;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  aconnectionfile: TIniFile;
  constr: string;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  aconnectionfile := tinifile.Create(ExtractFilePath(Application.EXEName) +
    'passworddb.ini');
  constr := 'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=' +
    aconnectionfile.ReadString('CONFIG', 'UserId', '') + ';';
  constr := constr + 'Initial Catalog=' + aconnectionfile.ReadString('CONFIG',
    'DatabaseName', '') + ';';
  constr := constr + 'Data Source=' + aconnectionfile.ReadString('CONFIG',
    'DatabaseServer', '');
  // ac  formumdaki adoconnection...
  // ac.ConnectionString := constr;
  // ac.connected := true;

  Form8.Hide;
  Form4.Show;

end;

end.
