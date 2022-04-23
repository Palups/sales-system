unit uProductInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfProductInfo = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    edit_name: TEdit;
    edit_price: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ComponentePro: TComponent;
    procedure changeEditColor(Sender: TObject); //change edit color when it is focused
  public
    { Public declarations }
  end;

var
  fProductInfo: TfProductInfo;

implementation

{$R *.dfm}

uses uVariables;

procedure TfProductInfo.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfProductInfo.changeEditColor(Sender: TObject);
Var
  color: TColor;
begin
  color := clWindow;

  if Assigned(ComponentePro) then
    TEdit(ComponentePro).Color := color; //color when leaving

  if (ActiveControl is TCustomEdit) or (ActiveControl is TComboBox) or (ActiveControl is TMemo) then
  begin
    TEdit(ActiveControl).Color := $00BAFEF5; //color when focusing
    ComponentePro              := ActiveControl;
  end;
end;

procedure TfProductInfo.FormActivate(Sender: TObject);
begin
  Screen.OnActiveControlChange := changeEditColor;
end;

procedure TfProductInfo.FormCreate(Sender: TObject);
begin
  if prod_isNew then
  begin
    Caption := 'Products > New Product';
  end
  else
  begin
    Caption := 'Products > Editing Product';
  end;
end;

procedure TfProductInfo.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

end.
