object fProducts: TfProducts
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 455
  ClientWidth = 678
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
    Width = 678
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
    Width = 678
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 49
    Align = alTop
    Ctl3D = True
    Padding.Left = 5
    Padding.Top = 5
    ParentCtl3D = False
    TabOrder = 1
    ExplicitWidth = 818
    object btn_new: TSpeedButton
      Left = 6
      Top = 6
      Width = 36
      Height = 36
      Flat = True
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8ECB8DA9E95C7718AC062
        83BE5883BD5788C06090C56CABD38DE4F0DBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6FAF296C7725EAA2662B22867BA2A6ABF2B6BC22C6B
        C22C6AC02B68BB2A63B4295EAC2785B657EBF8E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE1F0D667AE3465B7296DC52D72CE2E74D12F74D12F74D12F74D12F74D1
        2F74D22F73CF2F6FC82D69BB2B5BAD24C1DFADFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDDEB85D
        AB266CC32B75D33074D12F72CD2E71CC2E71CC2E71CD2E71CD2E71CC2E71CC2E
        71CD2E73D02F74D42F70C52E62AD28A9CC88FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7ECBA6FA22D70CA2D75D3
        2F71CC2E71CC2E71CC2E71CC2E71CC2E72CE2D72CE2D71CD2E71CC2E71CC2E71
        CC2E71CC2E74D22F73CF2E6AAF2BA7D38DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFDDF0D45CB22473CC2F74D12F71CB2E71CC2E
        71CC2E71CC2E74CE316EC92B50AD0E4AA70867C32476D13371CC2E71CC2E71CC
        2E71CB2E73CF2F75D03064B828BADFA6FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF88B75372CB2D73D22F71CB2E71CC2E71CC2E71CC2E71
        CC2E6BCB2377CC39C2D6AED1D9C689CE5565CB1B71CC2E71CC2E71CC2E71CC2E
        71CB2E72CF2E74D22F6DAE2EEDF4E4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFC3DEAF6BC32B76D33071CB2E71CC2E71CC2E71CC2E71CC2E71CC2E65C9
        1C7DCE41FFFAFFFFFFFF9CD86E5BC50E71CC2E71CC2E71CC2E71CC2E71CC2E71
        CC2E74D12F70CA2E9DCC7CFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF8B
        C85F74D12F71CD2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E67CA1E7CCE3F
        F1EFEDFFF6FF97D5685EC71171CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC
        2E75D3306FC036F7FBF5FFFFFFFFFFFF0000FFFFFFFFFFFFF2F7EC6CC42D74D2
        2F71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E67CA1E7CCE3FF1EFEDFF
        F6FF97D5685EC71171CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E73D02F
        6FC92ECFE6BDFFFFFFFFFFFF0000FFFFFFFFFFFFCDECBF75C73072CE2E71CC2E
        71CB2E72CD2E73D12F73D02F73D02F73D02F69CE1F7DD140F1EFECFFF6FF98D8
        6860CC1273D02F73D02F73D02F73D12F72CE2F71CB2E71CC2E71CC2E73D02FB7
        DD9BFFFFFFFFFFFF0000FFFFFFFFFFFFB5E59F78CC3171CC2E71CC2E77D13466
        C22247A8024CAC074CAC074CAC073EA6005BB21CF1F0EDFFFDFF7EC04D33A200
        4CAC074CAC074CAC0745A6005DBB1978D23571CC2E71CC2E74D12FADDC8DFFFF
        FFFFFFFF0000FFFFFFFFFFFFB6DB9672D32F71CC2E71CC2E6BCD227DCA449DC3
        8098C47698C47698C47691C06CA0C881F1F0ECFFF8FFB3D29A8ABD6498C47698
        C47698C4769FC38386C8556ACD2171CC2E71CC2E72CF2EABDD87FFFFFFFFFFFF
        0000FFFFFFFFFFFFB5E29372CE2E71CC2E71CC2E5AC40D9DDA6EFFFFFFFFFBFF
        FFFBFFFFFBFFFFFCFFFFFAFFF2F0EDEFEEE9FCF8FBFFFDFFFFFBFFFFFBFFFFFB
        FFFFFFFFBEE6A057C30771CC2E71CC2E71CD2EACE085FFFFFFFFFFFF0000FFFF
        FFFFFFFFBCE89D71CB2E71CC2E71CC2E5BC60D9CD86EFFF8FFFDF3FEFCF3FDFC
        F3FDFDF3FEFBF3FBF1F0ECEFEFE9F9F2F8FEF3FFFCF3FDFCF3FDFCF3FDFFFAFF
        BDE19F57C50871CC2E71CC2E71CC2EB0E38BFFFFFFFFFFFF0800FFFFFFFFFFFF
        C7ECAD72CB2E71CC2E71CC2E6CCB277ACE3C92D5608ED45A8ED45A8ED45A86D2
        4E96D567F1EFECFFF5FFACDB867FD0448ED45A8ED45A8ED45A93D56281D0466C
        CB2671CC2E71CC2E71CC2EB4E493FFFFFFFFFFFF2300FFFFFFFFFFFFE4F6D771
        CC2E71CC2E71CC2E74CD326CCA265EC61160C71560C71560C71554C4036CC928
        F1EFEDFFF7FF8BD2564AC10060C71560C71560C7155DC61068C92074CD3371CC
        2E71CC2E70CB2EC6EBA9FFFFFFFFFFFF3000FFFFFFFFFFFFFFFFFF85D24870CD
        2F71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E67CA1E7CCE3FF1EFEDFF
        F6FF97D5685EC71171CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E
        72CC2EE7F7DDFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB3E48670CD2F71CC2E
        71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E67CA1E7CCE3FF1EFEDFFF6FF97D5
        685EC71171CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CD2D8DD25FFF
        FFFFFFFFFFFFFFFF2000FFFFFFFFFFFFFFFFFFE2F8E074C63373CD2D71CC2E71
        CC2E71CC2E71CC2E71CC2E71CC2E67CA1E7CCE3FF2EFEDFFF6FF97D5685EC711
        71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E7AC435C1F6A9FFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFBBE08C7BC9316ECD2D71CC2E71CC
        2E71CC2E71CC2E71CC2E65C91C7ECF42FFF6FFFFFEFF9CD86F5BC60E71CC2E71
        CC2E71CC2E71CC2E71CC2E71CD2D70C7328FD261FFFFFFFFFFFFFFFFFFFFFFFF
        3000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BDC6577C93171CC2E71CC2E71CC2E
        71CC2E71CC2E6DCB2876CE35A3DA78ACDD8680D14569CA2371CC2E71CC2E71CC
        2E71CC2E71CC2E70CA307CCE43F3FDE9FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1CE6376CA2F6FCC2E71CC2E71CC2E71
        CC2E73CD316FCB2B5BC60E57C5086ACA2474CD3371CC2E71CC2E71CC2E70CC2E
        75CA2F79C43EECFAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92DE6975C93172CB2F71CC2E71CC2E71CC
        2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E71CC2E76CB307BD544EE
        F9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0E99873C93070CC2F71CC2E71CC2E71CC2E
        71CC2E71CC2E71CC2E71CC2E71CC2E70CD2E77C931A3E17CFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFECFBE5AADF847BCF3B71CC2E71CC2E71CC2E71
        CC2E71CC2E71CC2E73CD30A1DA6FDCF5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5D5C8ECADBBE69AB9E697C4EA
        A8DAF2C9F9FDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        615A}
      Layout = blGlyphTop
      OnClick = btn_newClick
    end
    object btn_edit: TSpeedButton
      Left = 42
      Top = 6
      Width = 36
      Height = 36
      Flat = True
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFEFEFED9D9D1A2A191A9A898ABAA9AABAA9AABAA9AABAA9AABAA9AABAA
        9AABAA9AABAA9AABAA9AABAA9AABAA9AABAA9AABAA9AABAA9AABAA9AABAA9AA9
        A999A3A291C8C8BFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD5
        D5CDA9A899BFBBB3C5C0BAC3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8
        C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C3BFB8C4C0BAC2BE
        B7ACAB9CE4E4DFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFCECCC5C5C1
        BAD0CBC7CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CA
        C6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CAC6C1CEC9C5CBC7C2
        D8D8D1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDCD9D5C9C5C0C7C3BD
        C7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3
        BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC6C3BCC9C5C0E4E3DFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDEDAD7C7C3BDC7C3BDC7C3BDC7
        C3BEC8C4BFC8C4BFC8C4BFC7C3BECAC6C1CDCAC4CCC9C3C7C2BCC7C3BDC7C3BD
        C7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDE6E4E2FFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDC7C3BDC8C4BEC9C5
        BFC9C5BFC9C5BFC9C5BEC9C6C0CDCAC5BFBBB3C4C0BACAC5BEC9C4BCC6C3BDC7
        C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDE5E3E1FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDCDC9C4B8B5AAA09F8DA6A595
        A6A595B1B3A48E857436200B796D62DCD6CDE8D8BFE4D4BACEC6BCC4C1BDC7C3
        BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDE5E3E1FFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDCBC7C2BDBAB1AEAC9FB2B0A4B2B0A4C4
        C6BC76685463503ED0C7BCEAD8BE5485CC5384CCE9D6BAD2C9BBC5C2BDC7C3BD
        C7C3BDC7C3BDC7C3BDC7C3BDE5E3E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFDCDAD6C7C3BDC7C3BDC5C1BBCCC7C3D3CECBD1CCC9D1CCC9D1CCC9CAC4
        BEFFFEFDFFFFF25784C6002ED40036D95485CCF2DBB9D3CABFC9C6C2C9C5C0C7
        C3BCC7C3BDC7C3BDE5E3E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDC
        DAD6C7C3BDC7C3BDC8C4BEC5C1BAC1BEB6C2BFB7C2BFB7B7B3AAE1DFDBFFFFFF
        92C0ED0062E8004ED1004CD0003BD95F8BCBEDD6AFC8C1B4C2C0B9C8C4BEC7C3
        BDC7C3BDE5E3E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3
        BDC7C3BDCEC9C5B6B4A99B9C89A2A291A2A291A0A08FBAAC8A98B5CE0062F41E
        80EA217CE40050D10049D1003FDD5882B7CDB781B8B19CCAC7C4C7C3BDC7C3BD
        E5E3E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BD
        C9C5BFC2BEB7BAB7AEBCB9B0BCB9B0BDBAB1C0B8A9B3B1AB609ADB0271EF2484
        EA207CE50356D30048D10042DA497CBEE2D0B0D6CBBDC4C2BDC7C3BDE5E3E1FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDC5C1BBCC
        C8C3D4CFCCD2CDCAD2CDCAD2CDCACFCCCCDCD0C4F5D9B96CA2DF0071F42685E9
        237FE60254D20049D1003DE05285D2F1DBB8D1C8BBC5C2BDE5E3E1FFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDCAC5C0C0BDB5B6B4
        A9B9B6ACB9B6ACB9B6ACB9B6ACB7B5ADC3BAA9DAC4A25490D0006FF32684EA21
        7DE50152D2004BD0003BD95A87CCF4DDB8D1C8BBE4E3E1FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDCEC9C5B6B4A99C9C8AA3A292
        A3A292A3A292A3A292A3A292A1A193AEA58CC3B08B518FD30070F32484EA207B
        E40052D1004AD0003CD9618CCBF4DDB9ECE7DFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDC7C3BDC6C2BCC5C1BBC5C1BBC5C1BBC5
        C1BBC5C1BBC5C1BBC5C1BBC3C0BDD0C4B4E3CDB16EA0D8006FEF2383EA237FE6
        0457D40048D0003DD84C81CCECE8E1FFFFFFFFFFFFFFFFFF0800FFFFFFFFFFFF
        FFFFFFDCDAD6C7C3BDC7C3BDC6C2BBCBC6C2D1CBC9CFCAC7CFCAC7CFCAC7CFCA
        C7CFCAC7CFCAC7CFCAC7CDC9C8D8CDC2F4D9BA71A3DE0071F52584E92380E602
        55D3004CD0002DD881A6E7FFFFFFFFFFFFFFFFFF2300FFFFFFFFFFFFFFFFFFDC
        DAD6C7C3BDC7C3BDCBC7C2BCB9B0AAA99BAFADA0AFADA0AFADA0AFADA0AFADA0
        AFADA0AFADA0AFADA0ADACA1B7B09DCFBA94538CC7006DF32484EA2281E60040
        D2003DCFA0B8D5EAE3D8FFFFFFFFFFFF3000FFFFFFFFFFFFFFFFFFDCDAD6C7C3
        BDC7C3BDCDC8C4B9B6ACA3A391A9A898A9A898A9A898A9A898A9A898A9A898A9
        A898A9A898A9A898A7A799B2AA92C9B6945E97D60674F10271EA1575E8B9C2D5
        E4CEAC888980C6C6BEFFFFFF0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BD
        C6C2BCC9C4BFCCC7C2CBC6C1CBC6C1CBC6C1CBC6C1CBC6C1CBC6C1CBC6C1CBC6
        C1CBC6C1CBC6C1C9C5C2D3C9BCECD2B36499D42484F0FAFFFFF9ECD183827580
        80728F8E81CAC9C52000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDC7C3BDC7
        C3BDC8C4BEC8C4BEC8C4BEC8C4BEC8C4BEC8C4BEC8C4BEC8C4BEC8C4BEC8C4BE
        C8C4BEC8C4BEC6C3BFCEC6BBCCC0B3DEE2E1F2EAD59C9C8B9F9F8E8E8D818988
        7CC5C5BD0000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC7C3BDC7C3BDC7C3BDC7C3
        BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7C3BDC7
        C3BDC7C3BDC5C2BECDC5BBD9CEC0AAA89D959581A8A896A8A798959487DADAD5
        3000FFFFFFFFFFFFFFFFFFDCDAD6C7C3BDC6C2BBCBC6C1D4CFCBCBC7C2C6C2BB
        C6C2BCCAC6C0D4CFCBCBC8C2C6C2BBC6C2BCC9C5C0D3CFCACCC8C3C6C2BBC6C2
        BCC9C5BFD4CFCBCDC8C3C6C1BCB9B6ACB1AFA3BDBCB0E5E5E0FFFFFF0000FFFF
        FFFFFFFFFFFFFFDCDAD6C7C3BDCAC6C0C2BEB8A7A49BC0BCB6CBC7C1CAC6C0C3
        BFB9A7A59BBFBBB4CBC7C1C9C5BFC5C1BBA8A59CBDBAB3CBC7C2C9C5BFC6C2BC
        A9A69DBBB8B0CDC9C4D0CCC8E6E3E2FFFFFFFFFFFFFFFFFF1000FFFFFFFFFFFF
        FFFFFFDBD9D4C7C3BDD0CCC7A3A2977576659F9D92CFCBC6D1CDC8A6A4997576
        659C9A8ECECAC5D1CDC8A9A79C76766699988BCEC9C4D2CDC8ACAAA077776797
        9589CCC8C2C8C4BEE7E4E3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFE3
        E0DDC7C4BDCBC7C2ACAA9D9D9D8BAAA89ACAC5C0CDC8C4ADAB9E9D9D8BA8A798
        C8C4BFCDC9C5AFACA09E9D8BA7A696C8C4BECECAC6B0AEA29D9D8BA6A495C6C2
        BCC8C4BFEBEAE7FFFFFFFFFFFFFFFFFF1000FFFFFFFFFFFFFFFFFFFEFDFDE1DE
        DBCBC6C2B2B0A39D9D8AB0AEA1CCC8C3CDC9C4B3B1A49E9D8BAEAC9ECBC7C2CE
        C9C5B5B3A79E9E8BACAB9CCAC6C0CECAC6B7B4A99E9E8BABAA9BCAC5C0D3CFCA
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7
        B4B6A8A1A08EB3B2A5EFEFEDF5F4F3BFBEB39F9F8DB0AFA2EFEEECF4F4F3C1BF
        B4A09F8DAEADA0EFEEECF5F4F3C3C2B7A1A08EA6A697EFEEECFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF692DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEB3A7
        A696B7B6AAFFFFFFFFFFFFC0C0B4A7A695B2B1A4FFFFFFFFFFFFC4C4BAA7A695
        AEAD9EFFFFFFFFFFFFCACAC1A7A696ADAD9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDAD5A6A594D8D7
        CEFFFFFFFFFFFFDEDDD8A4A495D3D3C9FFFFFFFFFFFFE4E4DDA4A396CECEC4FF
        FFFFFFFFFFE5E5E2A7A693CCCBC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0E20}
    end
    object btn_exit: TSpeedButton
      Left = 78
      Top = 6
      Width = 36
      Height = 36
      Flat = True
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E2FFBAB4FFA39BFF8F83FEA69FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9032FFFFFFFFFFFFFFFFFFFFFFFFF1F0
        FFCAC6FFA39BFE7D71FE5A4AFD3724FD3724FD3724FD3926FD4431FDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFBDB9FF8478FE5E50FD3F2DFD3824FD
        3824FD3724FD3724FD3724FD3724FD3724FD2712FD6455FEF9F8FFFFFFFFF3F2
        FFF4F4FFF4F4FFF6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF5644FD3724FD3724FD3724FD3724FD3724FD37
        24FD3724FD3724FD3724FD3724FD1D07FD6759FEFBFCFFE6E5FFE4E2FFE4E2FF
        E4E2FFE4E2FFFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724
        FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4
        E2FFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD
        3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD37
        24FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9032FFFFFF6D5FFE
        3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200B
        FD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF6D5FFE3724FD37
        24FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FE
        F0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724
        FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9
        E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD
        3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2
        FFE4E2FFE4E2FFE4E2FFFDFCFFFFFFFFFFFFFFFAFAFF8376FE6B5CFEFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD37
        24FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FF
        E4E2FFE2E0FFFFFFFFFFFFFFFFFFFFEBE9FF3824FD3824FD5747FDE1DEFFFFFF
        FFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724
        FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE3E1FFE4E2FFF3F2FFFC
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFC0BAFF3729FD3724FD3F2DFDDFDCFFFFFFFF
        9032FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD
        3724FD3724FD200BFD6455FEF0EFFFE9E8FFE3E1FFEEEDFFD8D5FFD8D4FFDFDC
        FFDDDAFFE0DDFFE2DEFFF7F7FF8882FE3823FD3724FD3D2BFDDCD8FF0000FFFF
        FF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD37
        24FD200BFD6455FEF0EFFFE9E8FFFAFAFFBDB7FE2A15FD2814FD220DFD311DFD
        3A27FD3624FD3823FD4433FD3724FD3724FD3724FD4634FD0800FFFFFF6D5FFE
        3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200B
        FD6455FEF0EFFFE9E8FFFFFFFFA49CFE0000FD0B00FD200BFD3A27FD3825FD37
        24FD3724FD3724FD3724FD3724FD3724FD3724FD2300FFFFFF6D5FFE3724FD37
        24FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FE
        F0EFFFE9E8FFE9E8FFE4E2FF9E95FE958BFEA198FE9288FF9F94FF9F93FFB7B0
        FF786CFE3724FD3724FD3724FDA79EFF3000FFFFFF6D5FFE3724FD3724FD3724
        FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9
        E8FFE1DEFFE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0DEFF5444FD
        3724FD3724FDC9C4FFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD
        3724FD3724FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2
        FFE4E2FFE4E2FFE1DFFFFFFFFFFFFFFFFFFFFFE8E7FF3824FD3623FD3724FDD0
        CBFFFFFFFFFFFFFF2000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD37
        24FD3724FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FF
        E4E2FFE4E2FFFEFDFFFFFFFFFFFFFFEEEDFF4332FD3724FDD2CEFFFFFFFFFFFF
        FFFFFFFF0000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724
        FD3724FD3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4
        E2FFFBFAFFFFFFFFFFFFFFFFFFFFF6F5FFE4E1FFFFFFFFFFFFFFFFFFFFFFFFFF
        3000FFFFFF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD
        3724FD3724FD200BFD6455FEF0EFFFE9E8FFE4E2FFE4E2FFE4E2FFE4E2FFFAFA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FF6D5FFE3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD3724FD38
        25FD1E09FD5847FEEEEDFFEAE9FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1000FFFFFF6D5FFE
        3724FD3724FD3724FD3724FD3724FD3724FD3825FD3522FD2511FD1500FD0B06
        FD776BFEF7F7FFE7E6FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF6D5FFE3724FD37
        24FD3724FD3825FD3320FD230EFD1300FD2712FD5342FD8275FEB2ABFEE6E4FF
        EBEAFFE3E1FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1000FFFFFF6D5FFE3825FD311EFD200A
        FD1702FD301CFD5849FD877CFEBDB8FEEDECFFFFFFFFFFFFFFECEBFFE1DFFFE4
        E2FFE4E2FFE4E2FFE4E2FFE4E2FFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF4A38FD1300FD2C18FD5645FD9288FE
        C9C3FFF0EFFFFFFFFFFFFFFFEBE9FFE3E1FFE4E1FFE4E2FFE4E2FFE4E2FFE4E2
        FFE4E2FFE4E2FFE4E2FFF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5F1EFFFFFFA59CFEB6B0FEDCDAFFF8F8FFFFFFFFFBFCFFEF
        EEFFEAE9FFEBEAFFEBEAFFEBEAFFEBEAFFEBEAFFEBEAFFEBEAFFEBEAFFEBEAFF
        EAE8FFEDECFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7C32}
    end
  end
end
