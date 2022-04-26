unit uProductInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Comp.Client, FireDAC.Stan.Param,
  Vcl.Mask, Vcl.Buttons;

type
  TfProductInfo = class(TForm)
    Panel1: TPanel;
    btn_save: TButton;
    btn_close: TButton;
    Label1: TLabel;
    edit_name: TEdit;
    edit_price: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edit_stock: TEdit;
    Label4: TLabel;
    edit_id: TEdit;
    btn_openStockControl: TSpeedButton;
    procedure btn_closeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure edit_nameExit(Sender: TObject);
    procedure edit_priceChange(Sender: TObject);
    procedure edit_priceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_priceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    ComponentePro: TComponent;
    procedure changeEditColor(Sender: TObject); //change edit color when it is focused
    function fieldValidation: Boolean;
  public
    { Public declarations }
  end;

var
  fProductInfo: TfProductInfo;
  fAux1, fAux2: String;

implementation

{$R *.dfm}

uses uVariables, uDatabaseRelatedFunctions, uDM, uSystemRelatedFunctions;

procedure TfProductInfo.btn_saveClick(Sender: TObject);
var
  vm_sql: String;
begin
  //if fieldValidation then
  //begin
    if isConnected then
    begin
      try
        if prod_isNew then
          vm_sql := 'INSERT INTO products (name, price, stock) VALUES (:p_name, :p_price, :p_stock);'
        else
          vm_sql := 'UPDATE products SET (name = :p_name, price = :p_price, stock = :p_stock WHERE id = :p_id);';

        db_table := TFDQuery.Create(Self);
        db_table.Connection := DM.FDConnection1;

        db_table.SQL.Add(vm_sql);

        //db_table.ParamByName('p_id').AsInteger   := StrToInt(edit_id.Text);
        db_table.ParamByName('p_name').AsString := edit_name.Text;
        db_table.ParamByName('p_price').Value   := StrToFloat(edit_price.Text);
        db_table.ParamByName('p_stock').Value   := StrToFloat(edit_stock.Text);

        try
          DM.FDConnection1.StartTransaction;
          db_table.ExecSQL;
          DM.FDConnection1.Commit;
        except
          DM.FDConnection1.Rollback;
        end;
      finally
        FreeAndNil(db_table);
      end;
    end;
    DM.FDConnection1.Connected := False;
  //end;
end;

procedure TfProductInfo.btn_closeClick(Sender: TObject);
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
    TEdit(ActiveControl).Color := $FFFFE0; //color when focusing
    ComponentePro              := ActiveControl;
  end;
end;

procedure TfProductInfo.edit_nameExit(Sender: TObject);
begin
  edit_name.Color := clWindow;
end;

procedure TfProductInfo.edit_priceChange(Sender: TObject);
begin
  fAux2 := fAux1;
  edit_price.text := currencyMagic(fAux2, Length(fAux2));
end;

procedure TfProductInfo.edit_priceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_delete then
  begin
    edit_price.clear;
    fAux1 := '';
  end;
end;

procedure TfProductInfo.edit_priceKeyPress(Sender: TObject; var Key: Char);
begin
  fAux1 := fAux1 + key;
end;

function TfProductInfo.fieldValidation: Boolean;
var
  i: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I].ClassType = TEdit then
      if TEdit(Components[I]).Text = '' then
      begin
        Result := true;
        //TEdit(Components[I]).TextHint := 'Campo Obrigatório';
        TEdit(Components[I]).SetFocus;
        Exit;
      end;
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

    edit_id.Text := Format('%.*d', [4, getNextFreedId('products')]);
  end
  else
  begin
    Caption := 'Products > Editing Product';
  end;

  edit_name.Color := $FFFFE0;
end;

procedure TfProductInfo.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

end.
