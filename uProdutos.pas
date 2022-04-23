unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids, DBClient, FireDAC.Comp.Client, FireDAC.DApt,
  Vcl.ComCtrls;

type
  TfProdutos = class(TForm)
    mProdutos: TMainMenu;
    Menu1: TMenuItem;
    Adicionar1: TMenuItem;
    Editar1: TMenuItem;
    Inativar1: TMenuItem;
    gridProducts: TDBGrid;
    sbProducts: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure gridProductsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    procedure createDataset;
    procedure loadProducts;
  public
    { Public declarations }
  end;

var
  fProdutos: TfProdutos;
  cds_product: TClientDataSet;
  ds_product : TDataSource;

implementation

{$R *.dfm}

uses uDatabaseRelatedFunctions, uVariables, uDM;

procedure TfProdutos.FormCreate(Sender: TObject);
begin
  createDataset;
  loadProducts;
end;

procedure TfProdutos.gridProductsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if State = [] then
  begin
    gridProducts.Font.Name  := 'Cambria';
    gridProducts.Font.Size  := 11;
    gridProducts.Font.Style := [TFontStyle.fsBold];
    gridProducts.Font.Color := clWindowText;

    if cds_product.RecNo mod 2 = 1 then
      gridProducts.Canvas.Brush.Color := $00FDE1E9
    else
      gridProducts.Canvas.Brush.Color := clWhite;
  end;

  if (gdselected in State) then
  begin
    gridProducts.Canvas.Font.Color  := clBlack;
    gridProducts.Canvas.brush.color := clYellow;
  end;

  gridProducts.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  ShowScrollBar(gridProducts.Handle,SB_Vert,True);
end;

procedure TfProdutos.createDataset;
begin
  cds_product := TClientDataSet.Create(nil);
  cds_product.Close;
  cds_product.FieldDefs.Clear;

  cds_product.FieldDefs.add('id',ftString,6);
  cds_product.FieldDefs.add('name',ftString,50);
  cds_product.FieldDefs.add('price',ftString,11);
  cds_product.FieldDefs.add('stock',ftString,11);

  cds_product.CreateDataSet;
  ds_product := TDataSource.Create(nil);
  ds_product.DataSet := cds_product;

  gridProducts.DataSource := ds_product;
  cds_product.Active := True;
  cds_product.Open;

  gridProducts.Columns.Add;
  gridProducts.Columns[0].Title.Caption := 'ID';
  gridProducts.Columns[0].Title.Alignment := taCenter;
  gridProducts.Columns[0].Alignment := taCenter;
  gridProducts.Columns[0].FieldName := 'id';

  gridProducts.Columns.Add;
  gridProducts.Columns[1].Title.Caption := 'Name';
  gridProducts.Columns[1].Title.Alignment := taCenter;
  gridProducts.Columns[1].Alignment := taCenter;
  gridProducts.Columns[1].FieldName := 'name';

  gridProducts.Columns.Add;
  gridProducts.Columns[2].Title.Caption := 'Price';
  gridProducts.Columns[2].Title.Alignment := taCenter;
  gridProducts.Columns[2].Alignment := taLeftJustify;
  gridProducts.Columns[2].FieldName := 'price';

  gridProducts.Columns.Add;
  gridProducts.Columns[3].Title.Caption := 'Stock';
  gridProducts.Columns[3].Title.Alignment := taCenter;
  gridProducts.Columns[3].Alignment := taCenter;
  gridProducts.Columns[3].FieldName := 'stock';
end;

procedure TfProdutos.loadProducts;
begin
  if isConnected then
  begin
    //getting info from database
    db_table := TFDQuery.Create(Self);
    db_table.Connection := DM.FDConnection1;

    db_table.SQL.Add('SELECT id, name, price, stock FROM products');

    db_table.Open;
    db_table.First;

    //preparing cds to receive data
    cds_product.EmptyDataSet;
    cds_product.DisableControls;

    //putting data on cds
    if not db_table.Eof then
    repeat
      cds_product.Append;

      cds_product.FieldByName('id').AsString    := IntToStr(db_table.FieldByName('id').AsInteger);
      cds_product.FieldByName('name').AsString  := db_table.FieldByName('name').AsString;
      cds_product.FieldByName('price').AsString := FormatFloat('###,##0.00', db_table.FieldByName('price').Value);
      cds_product.FieldByName('stock').AsString := FormatFloat('###,##0.00', db_table.FieldByName('stock').Value);

      cds_product.Post;
      db_table.Next;
    until db_table.Eof;

    db_table.Close;
    FreeAndNil(db_table);
  end;

  DM.FDConnection1.Connected := False;
  cds_product.EnableControls;
  cds_product.First;

  sbProducts.Panels[0].Text := 'Listed: ' + IntToStr(cds_product.RecordCount);
end;

end.
