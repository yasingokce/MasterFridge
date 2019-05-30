unit DemoLibrary;

interface

uses Dialogs, DModule;

function SRClick(searchtext: string): string;
procedure CHRBan1(var key: char);
function CHRBan(key: char): char;
function HelloWorldDemo(value: String): String;

implementation

procedure CHRBan1(var key: char);
const
  CharSet = ['!', '^', '+', '%', '&', '/', '(', ')', '=', '?', '_', '*', '-',
    '�', '#', '$', '�', '{', '[', ']', '}', '\', '|', '.', ',', ':', ';', '>',
    '<', '|', '"', '�', '�', '~', '1', '2', '3', '4', '5', '6', '7', '8',
    '9', '0'];
Begin
  if key in CharSet then
    key := #0;
end;

function CHRBan(key: char): char;
const
  CharSet = ['!', '^', '+', '%', '&', '/', '(', ')', '=', '?', '_', '*', '-',
    '�', '#', '$', '�', '{', '[', ']', '}', '\', '|', ',', ':', ';', '>', '<',
    '|', '"', '�', '�', '~', 'a', 'b', 'c', '�', 'd', 'e', 'f', 'g', '�', 'h',
    '�', 'i', 'j', 'k', 'l', 'm', 'n', 'o', '�', 'p', 'r', 's', '�', 't', 'u',
    '�', 'v', 'y', 'z', 'A', 'B', 'C', '�', 'D', 'E', 'F', 'G', '�', 'H', 'I',
    '�', 'J', 'K', 'L', 'M', 'N', 'O', '�', 'P', 'R', 'S', '�', 'T', 'U', '�',
    'V', 'Y', 'Z'];
Begin
  if key in CharSet then
    result := #0
  else
    result := key;

end;

function SRClick(searchtext: string): string;
begin
  with DataModule1.ADOQuery1 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from testtable1 where name=' + chr(39) + searchtext
      + chr(39));

    Open;
    // Datamodule1.ADOQuery1.Close;
  end;
end;

function HelloWorldDemo(value: String): String;
begin
  Showmessage('HelloWorldLib : ' + value);
end;

end.
