program sales_system;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fMain},
  uDM in 'uDM.pas' {DM: TDataModule},
  uDatabaseRelatedFunctions in 'uDatabaseRelatedFunctions.pas',
  uVariables in 'uVariables.pas',
  uProductInfo in 'uProductInfo.pas' {fProductInfo},
  uSystemRelatedFunctions in 'uSystemRelatedFunctions.pas',
  uProducts in 'uProducts.pas' {fProducts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
