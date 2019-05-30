object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 279
  Width = 351
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from testtable1 order by name')
    Left = 103
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 23
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=TESTDB;Data Source=.;Initia' +
      'l File Name="";Server SPN="";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 31
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from passworddb order by username')
    Left = 280
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 280
    Top = 88
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from breakfast order by name')
    Left = 120
    Top = 152
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 224
    Top = 160
  end
end
