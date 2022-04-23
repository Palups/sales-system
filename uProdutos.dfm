object fProdutos: TfProdutos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 435
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mProdutos
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gridProducts: TDBGrid
    Left = 0
    Top = 0
    Width = 818
    Height = 416
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridProductsDrawColumnCell
  end
  object sbProducts: TStatusBar
    Left = 0
    Top = 416
    Width = 818
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = 296
    ExplicitTop = 376
    ExplicitWidth = 0
  end
  object mProdutos: TMainMenu
    Left = 768
    Top = 16
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Adicionar1: TMenuItem
        Caption = 'Adicionar'
      end
      object Editar1: TMenuItem
        Caption = 'Editar'
      end
      object Inativar1: TMenuItem
        Caption = 'Inativar'
      end
    end
  end
end
