unit TOPMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DModule, Data.DB, Vcl.DBCGrids,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TTMail = class(TForm)
    DBGrid1: TDBGrid;
    memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TMail: TTMail;

implementation

{$R *.dfm}

procedure TTMail.Button2Click(Sender: TObject);
begin
memo1.Clear;
end;

end.
