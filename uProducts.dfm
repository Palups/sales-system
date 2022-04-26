object fProducts: TfProducts
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 455
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gridProducts: TDBGrid
    Left = 0
    Top = 49
    Width = 818
    Height = 387
    ParentCustomHint = False
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Helvetica'
    TitleFont.Style = []
    OnDrawColumnCell = gridProductsDrawColumnCell
  end
  object sbProducts: TStatusBar
    Left = 0
    Top = 436
    Width = 818
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 49
    Align = alTop
    Ctl3D = True
    Padding.Left = 5
    Padding.Top = 5
    ParentCtl3D = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 6
      Width = 36
      Height = 36
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 42
      Top = 6
      Width = 36
      Height = 36
    end
    object SpeedButton3: TSpeedButton
      Left = 78
      Top = 6
      Width = 36
      Height = 36
    end
  end
end
