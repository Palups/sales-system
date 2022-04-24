unit uProductInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Comp.Client, FireDAC.Stan.Param;

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
    procedure btn_closeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
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

implementation

{$R *.dfm}

uses uVariables, uDatabaseRelatedFunctions, uDM;

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
    TEdit(ActiveControl).Color := $00BAFEF5; //color when focusing
    ComponentePro              := ActiveControl;
  end;
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

    edit_id.Text := IntToStr(getNextFreedId('products'));
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
