unit uDatabaseRelatedFunctions;

interface

function isConnected: Boolean;

implementation

uses uDM, uVariables;

Function isConnected: Boolean;
Begin
  DM.FDConnection1.Params.UserName := 'postgres'; //postgres
  DM.FDConnection1.Params.Password := 'admin'; //admin
  DM.FDConnection1.Params.Database := 'db_system'; //db_system

  try
    DM.FDConnection1.Connected := True;
    Result := True;
  except
    //ShowMessage('Erro ao conectar com o banco de dados ' + #13 + connBanco + ' em ' + connHost);
    Result := False;
  end;
end;

end.
