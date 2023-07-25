unit mercdopago4D.serializable.additionalinfoneeded;

interface

uses
  GBJSON.Attributes;

type
  TAdditionalInfoNeeded = class
  private
    FCardHolderIdentificationNumber: Integer;
    FCardHolderIdentificationType: String;
    FCardHolderName: String;
    FIssuerId: String;
  public
    [JSONProp('cardholder_identification_number')]
    property CardHolderIdentificationNumber: Integer read FCardHolderIdentificationNumber write FCardHolderIdentificationNumber;
    [JSONProp('cardholder_identification_type')]
    property CardHolderIdentificationType: String read FCardHolderIdentificationType write FCardHolderIdentificationType;
    [JSONProp('cardholder_name')]
    property CardHolderName: String read FCardHolderName write FCardHolderName;
    [JSONProp('issuer_id')]
    property IssuerId: String read FIssuerId write FIssuerId;

    class function New: TAdditionalInfoNeeded;
  end;

implementation

class function TAdditionalInfoNeeded.New: TAdditionalInfoNeeded;
begin
  Result := Self.Create;
end;

end.
