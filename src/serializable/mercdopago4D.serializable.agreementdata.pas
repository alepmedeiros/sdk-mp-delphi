unit mercdopago4D.serializable.agreementdata;

interface

uses
  GBJSON.Attributes;

type
  TAgreementData = class
  private
    FValidationAmount: Currency;
    FDescription: String;
  public
    [JSONProp('validation_amount')]
    property ValidationAmount: Currency read FValidationAmount write FValidationAmount;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;

    class function New: TAgreementData;
  end;

implementation

class function TAgreementData.New: TAgreementData;
begin
  Result := Self.Create;
end;

end.
