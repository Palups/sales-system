unit uSystemRelatedFunctions;

interface

uses System.MaskUtils;

function currencyMagic(_value: String; _qty: Integer): String;

implementation

function currencyMagic(_value: String; _qty: Integer): String;
begin
  case Length(_value) of
    0: result := '';
    1: result := ' 0,0' + _value;
    2: result := ' 0,' + _value;
    3: result := FormatMaskText(' 0,00;0', _value);
    4: result := FormatMaskText(' 00,00;0', _value);
    5: result := FormatMaskText(' 000,00;0', _value);
    6: result := FormatMaskText(' 0.000,00;0', _value);
    7: result := FormatMaskText(' 00.000,00;0', _value);
    8: result := FormatMaskText(' 000.000,00;0', _value);
  end;
end;


end.
