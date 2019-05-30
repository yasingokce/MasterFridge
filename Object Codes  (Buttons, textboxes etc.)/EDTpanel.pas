unit EDTpanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.DBCtrls, Vcl.Mask, DModule,
  DemoLibrary;

type
  TForm6 = class(TForm)
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Save: TButton;
    Cancel: TButton;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    procedure CancelClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure SaveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.CancelClick(Sender: TObject);
var
  c: word;

begin
  DataModule1.Adoquery1.Cancel;
  c := messagedlg('Are you sure you want to leave', mtWarning,
    [mbYes, mbNo], 0);
  case c of
    IDyes:
      close;
  end;
end;

procedure TForm6.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  Key := CHRBan(Key);
end;

procedure TForm6.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  CHRBan1(Key);
end;

procedure TForm6.SaveClick(Sender: TObject);
var
  c: word;
begin
  c := messagedlg('your record has been changed', mtWarning, [mbOK], 0);
  case c of
    IDok:
      close;
  end;
end;

end.
