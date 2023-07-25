unit mercdopago4D.serializable.settings;

interface

uses
  GBJSON.Attributes,
  mercdopago4D.serializable.bin,
  mercdopago4D.serializable.cardnumber,
  mercdopago4D.serializable.securitycode;

type
  TSettings = class
  private
    FBin: TBin;
    FCardNumber: TCardNumber;
    FSecurityCode: TSecurityCode;
  public
    [JSONProp('bin')]
    property bin: TBin read FBin write FBin;
    [JSONProp('card_number')]
    property cardnumber: TCardNumber read FCardNumber write FCardNumber;
    [JSONProp('security_code')]
    property securitycode: TSecurityCode read FSecurityCode write FSecurityCode;

    class function New: TSettings;
  end;

implementation

class function TSettings.New: TSettings;
begin
  Result := Self.Create;
end;

end.
