unit mercdopago4D.serializable.preapproval;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes, mercdopago4D.serializable.autorecuring;

type
  TPreapproval = class
  private
    FAutoRecurring: TAutoRecurring;
    FBackUrl: String;
    FCardTokenId: String;
    FExternalReference: String;
    FPayerEmail: String;
    FOreapprovalPlanId: String;
    FReason: String;
    FStatus: String;
    FId: String;
    FVersion: Integer;
    FApplicationId: Integer;
    FCollectorId: Integer;
    FInitPoint: String;
    FPayerId: Integer;
    FCardId: Integer;
    FPaymentMethodId: Integer;
    FNextPaymentDate: String;
    FDateCreated: String;
    FLastModified: String;
  public
    [JSONProp('auto_recurring')]
    property AutoRecurring: TAutoRecurring read FAutoRecurring write FAutoRecurring;
    [JSONProp('back_url')]
    property BackUrl: String read FBackUrl write FBackUrl;
    [JSONProp('card_token_id')]
    property CardTokenId: String read FCardTokenId write FCardTokenId;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('payer_email')]
    property PayerEmail: String read FPayerEmail write FPayerEmail;
    [JSONProp('preapproval_plan_id')]
    property OreapprovalPlanId: String read FOreapprovalPlanId write FOreapprovalPlanId;
    [JSONProp('reason')]
    property Reason: String read FReason write FReason;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('version')]
    property Version: Integer read FVersion write FVersion;
    [JSONProp('application_id')]
    property ApplicationId: Integer read FApplicationId write FApplicationId;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('init_point')]
    property InitPoint: String read FInitPoint write FInitPoint;
    [JSONProp('payer_id')]
    property PayerId: Integer read FPayerId write FPayerId;
    [JSONProp('card_id')]
    property CardId: Integer read FCardId write FCardId;
    [JSONProp('payment_method_id')]
    property PaymentMethodId: Integer read FPaymentMethodId write FPaymentMethodId;
    [JSONProp('next_payment_date')]
    property NextPaymentDate: String read FNextPaymentDate write FNextPaymentDate;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('last_modified')]
    property LastModified: String read FLastModified write FLastModified;

    class function New: TPreapproval;
  end;

implementation

class function TPreapproval.New: TPreapproval;
begin
  Result := Self.Create;
end;

end.
