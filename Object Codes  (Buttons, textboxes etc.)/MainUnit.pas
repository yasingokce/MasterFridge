unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
    number_of_people: byte;
  public
    { Public declarations }
  end;

var
  myFile: TextFile;
  text: string;
  Form1: TForm1;

implementation

{$R *.dfm}

uses AddRecord;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label4.Visible := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  number_of_people := StrToInt(Edit1.text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  with TfrmAddRecord.Create(nil) do
  begin
    try
      if ShowModal = mrOk then
        ShowMessage('Operation have been done...');
    finally
      Release;
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  F: TextFile;
var
  a: string;
begin

  AssignFile(F, 'E:\ywsin_tutorials\hello_world\Win32\Debug\Data.txt');
 // OpenFile(F);
//  Rewrite(F);
    Reset(f);
  while not Eof(F) do
  begin
    ReadLn(F, a);
    ShowMessage(a);
  end;
  CloseFile(F);
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Label1.Caption := 'hello word';
end;

end.
