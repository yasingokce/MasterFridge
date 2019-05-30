unit MainSample;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids, Data.DB,
  Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Phys.MSAccDef, FireDAC.Phys,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc, FireDAC.Stan.def, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, Vcl.ExtDlgs, Vcl.Imaging.jpeg, EDTpanel, Vcl.DBCtrls,
  DELpanel, DModule, DemoLibrary, TOPMail;

type
  TForm3 = class(TForm)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    search: TButton;
    Panel2: TPanel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Add: TButton;
    Label1: TLabel;
    Delete: TButton;
    Button4: TButton;
    Button2: TButton;
    Button1: TButton;
    SearchEdit: TEdit;
    Refresh: TButton;
    Panel1: TPanel;
    Label2: TLabel;
    Button3: TButton;
    procedure searchClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure RefreshClick(Sender: TObject);
    procedure SRCEdit(AEdit: TEdit);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
    procedure editform;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses ADDpanel;

procedure TForm3.SRCEdit(AEdit: TEdit);
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

procedure TForm3.Button1Click(Sender: TObject);
begin
  with TForm7.Create(nil) do
  begin
    try
      if ShowModal = mrOk then
      finally
        Release;
      end;
    end;

  end;

  procedure TForm3.Button2Click(Sender: TObject);

  var
    c: Word;
  begin
    c := messagedlg('Are you sure you want to leave', mtwarning,
      [mbyes, mbno], 0);
    case c of
      IDyes:
        close;
    end;

  end;

  procedure TForm3.Button3Click(Sender: TObject);
  begin
    with TTMail.Create(nil) do
    begin
      try
        if ShowModal = mrOk then
        finally
          Release;
        end;
      end;
    end;

    procedure TForm3.Button4Click(Sender: TObject);
    begin
      editform;
    end;

    procedure TForm3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    begin
      case Key of
        VK_RETURN:
          begin
            editform;
          end;
      end;
    end;

    procedure TForm3.DeleteClick(Sender: TObject);
    begin
      if MessageBox(self.Handle, 'Are you sure', 'confirmation',
        MB_YESNOCANCEL + MB_ICONQUESTION) = mryes then
      begin
        DataModule1.ADOQuery1.Delete;
      end;
      { with TForm6.Create(nil) do
        begin
        try
        if ShowModal = mrOk then
        finally
        Release;
        end;
        end; }
    end;

    procedure TForm3.editform;
    begin
      with TForm6.Create(nil) do
      begin
        try
          if ShowModal = mrOk then
          finally
            Release;
          end;
        end;
      end;

      procedure TForm3.RefreshClick(Sender: TObject);
      begin
        with DataModule1.ADOQuery1 do
        begin
          ExecSQL;
          close;
          DataModule1.ADOQuery1.SQL.Text := 'select * from testtable1';
          open;
        end;
      end;

      procedure TForm3.AddClick(Sender: TObject);
      begin
        with TForm5.Create(nil) do
        begin
          try
            if ShowModal = mrOk then
            finally
              Release;
            end;
          end;
        end;

        procedure TForm3.searchClick(Sender: TObject);
        begin

          if (Trim(SearchEdit.Text) = EmptyStr) then
          begin
            ShowMessage('please enter the red area.');
            SRCEdit(SearchEdit);
            with DataModule1.ADOQuery1 do
            begin
              ExecSQL;
              close;
              DataModule1.ADOQuery1.SQL.Text := 'select * from testtable1';
              open;
            end;

          end
          else
            ShowMessage('succeded.');
          SRClick(SearchEdit.Text);

        end;

        procedure TForm3.SearchEditKeyDown(Sender: TObject; var Key: Word;
          Shift: TShiftState);
        begin
          case Key of
            VK_RETURN:
              begin
                SRClick(SearchEdit.Text);
              end;
          end;
        end;

        procedure TForm3.SearchEditKeyPress(Sender: TObject; var Key: Char);
        begin
          CHRBan1(Key);
        end;

end.
