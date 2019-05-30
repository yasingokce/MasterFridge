unit mainmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, MainSample, DModule, NEWReg,choicemeal;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  username, password: string;
  result: integer;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  result := 0;
  username := Edit1.Text;
  password := Edit2.Text;
  DataModule1.ADOQuery1.Close;
  DataModule1.ADOQuery1.SQL.Add('select * from passworddb where username=' +
    QuotedStr(username));
  DataModule1.ADOQuery1.SQL.Add(' and password=' + QuotedStr(password));
  DataModule1.ADOQuery1.Open;
  result := DataModule1.ADOQuery1.RecordCount;
  Label4.Caption := IntToStr(result);
  if (result = 2) then
  begin
    Form4.Hide;
    Form3.Show;
  end;
  Form4.Hide;
    Form3.Show;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Hide;
    Form1.Show;
end;

procedure TForm4.Label5Click(Sender: TObject);
begin
  NewUserForm.Show;
end;

end.
