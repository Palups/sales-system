unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.StdActns,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

type
  TfMain = class(TForm)
    mMain: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    R1: TMenuItem;
    teis1: TMenuItem;
    Protudos1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
    Usurios1: TMenuItem;
    Usurios2: TMenuItem;
    Nova1: TMenuItem;
    Editarvenda1: TMenuItem;
    N3: TMenuItem;
    RelatriodeProdutosVendidos2: TMenuItem;
    Entrada1: TMenuItem;
    Entrada2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Verso2: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Fornecedores3: TMenuItem;
    Fornecedores4: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure Protudos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses uProducts;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Are you sure you want to exit?', 'System warning!', 292) = 6 then
  begin
    try
      //do something
    except
      Application.Terminate;
    end;
   end
   else
    Action := caNone;
end;

procedure TfMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //exiting with Esc
  if Key = 27 then
  begin
    Key := 0;
    Close;
  end;
end;

procedure TfMain.Protudos1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfProducts, fProducts);
    Screen.Cursor := crDefault;
    fProducts.ShowModal;
  finally
    fProducts.Free;
  end;
end;

end.
