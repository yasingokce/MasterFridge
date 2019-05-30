unit Breakfast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Shellapi,
  ActiveX,
  Vcl.OleCtrls, SHDocVw, ComObj, DemoLibrary,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, DModule,showmake;

type
  TForm9 = class(TForm)
    CheckListBox1: TCheckListBox;
    Label1: TLabel;
    quantity: TEdit;
    Add: TButton;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    typemeal: TEdit;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure SRCEdit(AEdit: TEdit);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}


procedure TForm9.SRCEdit(AEdit: TEdit);
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
procedure TForm9.AddClick(Sender: TObject);
begin

  with DataModule1.AdoQuery1 do
  begin

    if (Trim(typemeal.Text) = EmptyStr) or (Trim(quantity.Text) = EmptyStr) then
    begin
      ShowMessage('please enter the red area.');
      SRCEdit(typemeal);
      SRCEdit(quantity);

    end
    else
      ShowMessage('succeded.');
    begin

      sql.Text :=
        'insert into breakfast (name,number) values (:b,:c)';
      Parameters.ParamByName('b').Value := typemeal.Text;
      Parameters.ParamByName('c').Value := quantity.Text;
      ExecSQL;
      close;
      sql.Text := 'select * from breakfast';
      open;

    end;
  end;
  close;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  // GetPlayer(Edit1.Text, Webbrowser1);
  // YouTube( 'fMWfrdGRNNg', WebBrowser1, True );
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=fMWfrdGRNNg',
    nil, nil, SW_hide);

end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open',
    'www.youtube.com/watch?v=xSGunyNvkrIhttps://www.youtube.com/watch?v=xSGunyNvkrI',
    nil, nil, SW_hide);
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=Pq0svvrBB6U',
    nil, nil, SW_hide);
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=Pq0svvrBB6U',
    nil, nil, SW_hide);
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=rb4Mp6q2BZM',
    nil, nil, SW_hide);
end;

procedure TForm9.Button6Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=SSdQzEV1L8A',
    nil, nil, SW_hide);
end;

procedure TForm9.Button7Click(Sender: TObject);
begin
  ShellExecute(self.WindowHandle, 'open', 'www.youtube.com/watch?v=f2-0q7FvRvQ',
    nil, nil, SW_hide);
end;

procedure TForm9.Button8Click(Sender: TObject);
begin
Form9.Hide;
    showandmake.Show;
end;

end.
