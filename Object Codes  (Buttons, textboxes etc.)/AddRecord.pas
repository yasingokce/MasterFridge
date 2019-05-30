unit AddRecord;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAddRecord = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddRecord: TfrmAddRecord;
  myFile : TextFile;
  text   : string;

implementation

{$R *.dfm}

procedure TfrmAddRecord.Button1Click(Sender: TObject);
var
  F: TextFile;
begin
  AssignFile(F, 'E:\ywsin_tutorials\hello_world\Win32\Debug\Data.txt');
  Rewrite(F);
  WriteLn(F, LabeledEdit1.Text);
  WriteLn(F, LabeledEdit2.Text);
  WriteLn(F, LabeledEdit3.Text);
  CloseFile(F);
end;

procedure TfrmAddRecord.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Action := caFree;
end;

end.
