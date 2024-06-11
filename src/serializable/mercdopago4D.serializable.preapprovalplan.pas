unit mercdopago4D.serializable.preapprovalplan;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.autorecuring,
  mercdopago4D.serializable.paymentmethodsallowed;

type
  TPreapprovalPlan = class
  private
    FAutoRecurring: TAutoRecurring;
    FBackUrl: String;
    FPaymentMethodsAllowed: TPaymentMethodsAllowed;
    FReason: String;
    FId: String;
    FApplicationId: Integer;
    FCollectorId: Integer;
    FExternalReference: String;
    FInitPoint: String;
    FDateCreated: String;
    FLastModified: String;
    FStatus: String;
  public
    [JSONProp('auto_recurring')]
    property AutoRecurring: TAutoRecurring read FAutoRecurring write FAutoRecurring;
    [JSONProp('back_url')]
    property BackUrl: String read FBackUrl write FBackUrl;
    [JSONProp('payment_methods_allowed')]
    property PaymentMethodsAllowed: TPaymentMethodsAllowed read FPaymentMethodsAllowed write FPaymentMethodsAllowed;
    [JSONProp('reason')]
    property Reason: String read FReason write FReason;
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('application_id')]
    property ApplicationId: Integer read FApplicationId write FApplicationId;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('init_point')]
    property InitPoint: String read FInitPoint write FInitPoint;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('last_modified')]
    property LastModified: String read FLastModified write FLastModified;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;

    class function New: TPreapprovalPlan;
  end;

implementation

class function TPreapprovalPlan.New: TPreapprovalPlan;
begin
  Result := Self.Create;
end;

end.
