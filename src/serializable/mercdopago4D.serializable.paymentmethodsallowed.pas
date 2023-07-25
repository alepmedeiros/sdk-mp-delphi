unit mercdopago4D.serializable.paymentmethodsallowed;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.paymentmethods,
  mercdopago4D.serializable.paymentstype;

type
  TPaymentMethodsAllowed = class
  private
    FPaymentTypes: TObjectList<TPaymentTypes>;
    FPaymentMethods: TObjectList<TPaymentMethods>;
  public
    [JSONProp('payment_types')]
    property PaymentTypes: TObjectList<TPaymentTypes> read FPaymentTypes write FPaymentTypes;
    [JSONProp('payment_methods')]
    property PaymentMethods: TObjectList<TPaymentMethods> read FPaymentMethods write FPaymentMethods;

    class function New: TPaymentMethodsAllowed;
  end;

implementation

class function TPaymentMethodsAllowed.New: TPaymentMethodsAllowed;
begin
  Result := Self.Create;
end;

end.
