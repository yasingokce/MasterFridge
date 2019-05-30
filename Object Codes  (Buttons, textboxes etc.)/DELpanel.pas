unit DELpanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, DModule;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    id: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  with Datamodule1.AdoQuery1 do
  begin
    close;

    sql.Text := 'delete from testtable1 where id = (:a)';
    Parameters.ParamByName('a').Value := id.Text;
    ExecSQL;
    close;
    sql.Text := 'select * from testtable1';
    open;
  end;
end;

end.
