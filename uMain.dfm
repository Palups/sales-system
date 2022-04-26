object fMain: TfMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sistema'
  ClientHeight = 476
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mMain
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object mMain: TMainMenu
    Left = 8
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Registries'
      object Protudos1: TMenuItem
        Caption = 'Products'
        OnClick = Protudos1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Suppliers'
        Enabled = False
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Customers'
      end
      object Fornecedores2: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = 'Users'
      end
      object Usurios2: TMenuItem
        Caption = 'Company'
      end
    end
    object RelatriodeProdutosVendidos2: TMenuItem
      Caption = 'Stock'
      object Entrada1: TMenuItem
        Caption = 'Entry'
      end
      object Entrada2: TMenuItem
        Caption = 'Exit'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = 'History'
      end
    end
    object Cadastros2: TMenuItem
      Caption = 'Sales'
      object Nova1: TMenuItem
        Caption = 'New'
      end
      object Editarvenda1: TMenuItem
        Caption = 'Edit'
      end
      object N3: TMenuItem
        Caption = '-'
      end
    end
    object R1: TMenuItem
      Caption = 'Reports'
      object Produtos1: TMenuItem
        Caption = 'Products'
      end
      object Produtos2: TMenuItem
        Caption = 'Customers'
      end
      object Fornecedores3: TMenuItem
        Caption = 'Suppliers'
        Enabled = False
      end
      object Fornecedores4: TMenuItem
        Caption = 'Users'
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = 'Sales'
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Caption = 'Stock'
      end
    end
    object teis1: TMenuItem
      Caption = 'Help'
      Enabled = False
      object Verso2: TMenuItem
        Caption = 'Backup'
      end
    end
  end
end
