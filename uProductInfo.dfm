object fProductInfo: TfProductInfo
  Left = 0
  Top = 0
  Margins.Right = 50
  BorderStyle = bsSingle
  Caption = 'Produtos > Novo'
  ClientHeight = 138
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 44
    Height = 18
    Caption = 'Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 40
    Width = 35
    Height = 18
    Caption = 'Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 64
    Width = 40
    Height = 18
    Caption = 'Stock:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 485
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 240
    ExplicitTop = 208
    ExplicitWidth = 185
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 89
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object edit_name: TEdit
    Left = 66
    Top = 16
    Width = 407
    Height = 21
    AutoSize = False
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 50
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object edit_price: TEdit
    Left = 66
    Top = 40
    Width = 111
    Height = 21
    AutoSize = False
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 11
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 66
    Top = 64
    Width = 111
    Height = 21
    TabStop = False
    AutoSize = False
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 11
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
end