program sales_system;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fMain},
  uProdutos in 'uProdutos.pas' {fProdutos},
  uDM in 'uDM.pas' {DM: TDataModule},
  uDatabaseRelatedFunctions in 'uDatabaseRelatedFunctions.pas',
  uVariables in 'uVariables.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
