unit mercdopago4D.serializable.feedetails;

interface

uses
  GBJSON.Attributes;

type
  TFeeDetails = class
  private
    FAmount: Currency;
    FType: String;
    FFeePayer: String;
  public
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('amount')]
    property Amount: Currency read FAmount write FAmount;
    [JSONProp('fee_payer')]
    property FeePayer: String read FFeePayer write FFeePayer;

    class function New: TFeeDetails;
  end;

implementation

class function TFeeDetails.New: TFeeDetails;
begin
  Result := Self.Create;
end;

end.
