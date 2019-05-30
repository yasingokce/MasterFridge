unit ADDpanel;

interface

uses DemoLibrary,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, DModule;

type

  TForm5 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    BrithDay: TEdit;
    Button1: TButton;
    Company: TEdit;
    EDTName: TEdit;
    Job: TEdit;
    PlaceOfBirth: TEdit;
    Adress: TEdit;
    surname: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Email: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EDTNameKeyPress(Sender: TObject; var Key: Char);
    procedure surnameKeyPress(Sender: TObject; var Key: Char);
    procedure BrithDayKeyPress(Sender: TObject; var Key: Char);
    procedure CompanyKeyPress(Sender: TObject; var Key: Char);
    procedure PlaceOfBirthKeyPress(Sender: TObject; var Key: Char);
    procedure AdressKeyPress(Sender: TObject; var Key: Char);
    procedure JobKeyPress(Sender: TObject; var Key: Char);
    procedure SRCEdit(AEdit: TEdit);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.SRCEdit(AEdit: TEdit);
var
  Canvas: TControlCanvas;
begin
  Canvas := TControlCanvas.Create;
  try
    Canvas.Control := AEdit;
    Canvas.Font.Assign(AEdit.Font);

    Canvas.Brush.Style := bsClear;
    Canvas.Pen.Color := clRed;
    Canvas.Rectangle(Canvas.Control.ClientRect);
  finally
    Canvas.Free;
  end;
end;

procedure TForm5.AdressKeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm5.BrithDayKeyPress(Sender: TObject; var Key: Char);
begin
  Key := CHRBan(Key);
end;

procedure TForm5.Button1Click(Sender: TObject);

begin
  with DataModule1.AdoQuery1 do
  begin

    if (Trim(EDTName.Text) = EmptyStr) or (Trim(surname.Text) = EmptyStr) or
      (Trim(BrithDay.Text) = EmptyStr) or (Trim(PlaceOfBirth.Text) = EmptyStr)
      or (Trim(Adress.Text) = EmptyStr) or (Trim(Job.Text) = EmptyStr) or
      (Trim(Company.Text) = EmptyStr) or
      (Trim(Email.Text) = EmptyStr) then
    begin
      ShowMessage('please enter the red area.');
      SRCEdit(EDTName);
      SRCEdit(surname);
      SRCEdit(BrithDay);
      SRCEdit(PlaceOfBirth);
      SRCEdit(Adress);
      SRCEdit(Job);
      SRCEdit(Company);
      SRCEdit(Email);

    end
    else
      ShowMessage('succeded.');
    begin

      sql.Text :=
        'insert into testtable1 (Name,Surname,BrithDay,PlaceOfBirth,Adress,Job,Company,email) values (:b,:c,:d,:e,:f,:g,:h,:m)';
      Parameters.ParamByName('b').Value := EDTName.Text;
      Parameters.ParamByName('c').Value := surname.Text;
      Parameters.ParamByName('d').Value := BrithDay.Text;
      Parameters.ParamByName('e').Value := PlaceOfBirth.Text;
      Parameters.ParamByName('f').Value := Adress.Text;
      Parameters.ParamByName('g').Value := Job.Text;
      Parameters.ParamByName('h').Value := Company.Text;
      Parameters.ParamByName('m').Value := Email.Text;
      ExecSQL;
      close;
      sql.Text := 'select * from testtable1';
      open;

    end;
  end;
  close;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
  c: Word;
begin
  // HelloWorldDemo('');
  c := messagedlg('Are you sure you want to leave', mtWarning,
    [mbYes, mbNo], 0);
  case c of
    IDyes:
      close;
  end;
end;

procedure TForm5.CompanyKeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm5.EDTNameKeyPress(Sender: TObject; var Key: Char);
begin

  CHRBan1(Key);
end;

procedure TForm5.JobKeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm5.PlaceOfBirthKeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm5.surnameKeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

end.
