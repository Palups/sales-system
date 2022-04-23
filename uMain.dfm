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
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Customers'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Suppliers'
        Enabled = False
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
        Caption = 'Entrada'
      end
      object Entrada2: TMenuItem
        Caption = 'Sa'#237'da'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = 'Hist'#243'rico'
      end
    end
    object Cadastros2: TMenuItem
      Caption = 'Vendas'
      object Nova1: TMenuItem
        Caption = 'Nova venda'
      end
      object Editarvenda1: TMenuItem
        Caption = 'Editar venda'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Novooramento1: TMenuItem
        Caption = 'Novo or'#231'amento'
      end
      object Novooramento2: TMenuItem
        Caption = 'Editar or'#231'amento'
      end
      object N7: TMenuItem
        Caption = '-'
      end
    end
    object R1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Produtos2: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores3: TMenuItem
        Caption = 'Fornecedores'
        Enabled = False
      end
      object Fornecedores4: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = 'Vendas'
      end
      object Oramentos1: TMenuItem
        Caption = 'Or'#231'amentos'
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Caption = 'Estoque'
      end
    end
    object Permisses1: TMenuItem
      Caption = 'Permiss'#245'es'
      Enabled = False
    end
    object teis1: TMenuItem
      Caption = #218'teis'
      Enabled = False
      object Agenda1: TMenuItem
        Caption = 'Agenda'
      end
      object Agenda2: TMenuItem
        Caption = 'Calculadora'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = 'Suporte'
      end
      object Verso1: TMenuItem
        Caption = 'Vers'#227'o'
      end
      object Verso2: TMenuItem
        Caption = 'Backup'
      end
    end
  end
end
