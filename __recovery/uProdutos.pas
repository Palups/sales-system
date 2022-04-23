unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids, DBClient;

type
  TfProdutos = class(TForm)
    mProdutos: TMainMenu;
    Menu1: TMenuItem;
    Adicionar1: TMenuItem;
    Editar1: TMenuItem;
    Inativar1: TMenuItem;
    gridProducts: TDBGrid;
    procedure FormCreate(Sender: TObject);
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

uses uDatabaseRelatedFunctions;

procedure TfProdutos.FormCreate(Sender: TObject);
begin
  createDataset;
  loadProducts;
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
    //ShowMessage('vamo porra');
  end;
end;

end.
