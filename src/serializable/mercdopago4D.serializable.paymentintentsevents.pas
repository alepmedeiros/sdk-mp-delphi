unit mercdopago4D.serializable.paymentintentsevents;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.events;

type
  TPaymentIntentsEvents = class
  private
    FEvents: TObjectList<TSerializeEvents>;
  public
    [JSONProp('events')]
    property Events: TObjectList<TSerializeEvents> read FEvents write FEvents;

    class function New: TPaymentIntentsEvents;
  end;

implementation

class function TPaymentIntentsEvents.New: TPaymentIntentsEvents;
begin
  Result := Self.Create;
end;

end.
