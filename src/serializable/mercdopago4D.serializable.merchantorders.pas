unit mercdopago4D.serializable.merchantorders;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.items,
  mercdopago4D.serializable.payers, mercdopago4D.serializable.collector;

type
  TMerchantOrders = class
  private
    FAdditionalInfo: String;
    FApplicationId: String;
    FExternalreference: String;
    FItems: TObjectList<TItems>;
    FMarketplace: String;
    FNotificationUrl: String;
    FPayer: TPayers;
    FPreferenceId: String;
    FSiteId: String;
    FSponsorId: Integer;
    FId: Integer;
    FStatus: String;
    FCollector: TCollector;
    FDateCreated: String;
    FLastUpdated: String;
    FShippingCost: Currency;
    FTotalAmount: Currency;
    FPaidAmount: Currency;
    FRefundedAmount: Currency;
    FCancelled: Boolean;
    FOrderStatus: String;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('collector')]
    property Collector: TCollector read FCollector write FCollector;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('last_updated')]
    property LastUpdated: String read FLastUpdated write FLastUpdated;
    [JSONProp('shipping_cost')]
    property ShippingCost: Currency read FShippingCost write FShippingCost;
    [JSONProp('total_amount')]
    property TotalAmount: Currency read FTotalAmount write FTotalAmount;
    [JSONProp('additional_info')]
    property AdditionalInfo: String read FAdditionalInfo write FAdditionalInfo;
    [JSONProp('application_id')]
    property ApplicationId: String read FApplicationId write FApplicationId;
    [JSONProp('external_reference')]
    property Externalreference: String read FExternalreference
      write FExternalreference;
    [JSONProp('items')]
    property items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('marketplace')]
    property Marketplace: String read FMarketplace write FMarketplace;
    [JSONProp('notification_url')]
    property NotificationUrl: String read FNotificationUrl
      write FNotificationUrl;
    [JSONProp('payer')]
    property Payer: TPayers read FPayer write FPayer;
    [JSONProp('preference_id')]
    property PreferenceId: String read FPreferenceId write FPreferenceId;
    [JSONProp('site_id')]
    property SiteId: String read FSiteId write FSiteId;
    [JSONProp('sponsor_id')]
    property SponsorId: Integer read FSponsorId write FSponsorId;
    [JSONProp('paid_amount')]
    property PaidAmount: Currency read FPaidAmount write FPaidAmount;
    [JSONProp('refunded_amount')]
    property RefundedAmount: Currency read FRefundedAmount write FRefundedAmount;
    [JSONProp('cancelled')]
    property Cancelled: Boolean read FCancelled write FCancelled;
    [JSONProp('order_status')]
    property OrderStatus: String read FOrderStatus write FOrderStatus;

    class function New: TMerchantOrders;
  end;

implementation

class function TMerchantOrders.New: TMerchantOrders;
begin
  Result := Self.Create;
end;

end.
