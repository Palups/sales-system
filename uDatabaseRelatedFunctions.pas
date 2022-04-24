unit uDatabaseRelatedFunctions;

interface

uses FireDAC.Comp.Client, System.SysUtils;

function isConnected: Boolean;
function getNextFreedId(_table: String): Integer;

implementation

uses uDM, uVariables;

function isConnected: Boolean;
begin
  DM.FDConnection1.Params.UserName := 'postgres'; //postgres
  DM.FDConnection1.Params.Password := 'admin'; //admin
  DM.FDConnection1.Params.Database := 'db_system'; //db_system

  try
    DM.FDConnection1.Connected := True;
    Result := True;
  except
    Result := False;
  end;
end;

function getNextFreedId(_table: String): Integer;
begin
  if isConnected then
  begin
    db_table := TFDQuery.Create(nil);
    db_table.Connection := DM.FDConnection1;

    db_table.SQL.Add('SELECT MAX(id) AS id FROM ' + _table);
    db_table.Open;

    if db_table.FieldByName('id').IsNull then
      Result := 1
    else
      Result := db_table.FieldByName('id').Value + 1;

    db_table.Close;
    FreeAndNil(db_table);
  end
  else
    Result := 0;

  DM.FDConnection1.Connected := False;
end;

end.
