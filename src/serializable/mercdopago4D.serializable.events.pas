unit mercdopago4D.serializable.events;

interface

uses
  GBJSON.Attributes;

type
  TSerializeEvents = class
  private
    FPaymentIntentId: String;
    FStatus: String;
    FCreatedOn: String;
  public
    [JSONProp('payment_intent_id')]
    property PaymentIntentId: String read FPaymentIntentId write FPaymentIntentId;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('created_on')]
    property CreatedOn: String read FCreatedOn write FCreatedOn;

    class function New: TSerializeEvents;
  end;

implementation

class function TSerializeEvents.New: TSerializeEvents;
begin
  Result := Self.Create;
end;

end.
