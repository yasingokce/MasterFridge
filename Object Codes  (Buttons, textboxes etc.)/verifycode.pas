unit verifycode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TVRFcode = class(TForm)
    edtVerify: TEdit;
    Enter: TButton;
    vrfcode: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EnterClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    FCounter: integer;
  end;

var
  vrfcode: TVRFcode;

const
  TIMER_INTERVAL = 300;

implementation

{$R *.dfm}

procedure TVRFcode.EnterClick(Sender: TObject);
begin
  if Timer1.Enabled = False then
    Timer1.Enabled := True
  else
    Timer1.Enabled := False;
end;

procedure TVRFcode.FormCreate(Sender: TObject);
begin
  FCounter := TIMER_INTERVAL;
end;

procedure TVRFcode.Timer1Timer(Sender: TObject);
begin
  FCounter := FCounter - 1;
  Label2.Caption := FCounter.ToString;
  Application.ProcessMessages;
  if FCounter = 0 then
  begin
    Timer1.Enabled := False;
    close;
  end;
end;

end.
