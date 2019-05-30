unit showmake;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt,
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
  Tshowandmake = class(TForm)
    DBGrid1: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  showandmake: Tshowandmake;

implementation

{$R *.dfm}

uses Breakfast;

procedure Tshowandmake.Button1Click(Sender: TObject);
begin
  showandmake.Hide;
    Form9.Show;
end;

end.
