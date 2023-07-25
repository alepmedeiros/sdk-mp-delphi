unit mercdopago4D.serializable.instoreqr;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.items, mercdopago4D.serializable.collector,
  mercdopago4D.serializable.paymentmethods, mercdopago4D.serializable.backurl,
  mercdopago4D.serializable.payers, mercdopago4D.serializable.processingmodes,
  mercdopago4D.serializable.internalmetadata;

type
  TInstoreQr = class
  private
    FId: String;
    FItems: TObjectList<TItems>;
    FCollectorId: String;
    FCollector: TCollector;
    FTotalAmount: Integer;
    FAmount: Integer;
    FExternalReference: String;
    FOperationType: String;
    FPaymentMethods: TPaymentMethods;
    FMarketplace: String;
    FMarketplaceFee: Integer;
    FSponsorId: Integer;
    FNotificationUrl: String;
    FBackUrls: TBackUrl;
    FPayer: TPayers;
    FExpires: Boolean;
    FAdditionalInfo: String;
    FSiteId: String;
    FClienteId: Integer;
    FProcessingModes: TObjectList<TProcessingModes>;
    FInternalMetadata: TInternalMetadata;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('items')]
    property Items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('collector_id')]
    property CollectorId: String read FCollectorId write FCollectorId;
    [JSONProp('collector')]
    property Collector: TCollector read FCollector write FCollector;
    [JSONProp('total_amount')]
    property TotalAmount: Integer read FTotalAmount write FTotalAmount;
    [JSONProp('amount')]
    property Amount: Integer read FAmount write FAmount;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('payment_methods')]
    property PaymentMethods: TPaymentMethods read FPaymentMethods write FPaymentMethods;
    [JSONProp('marketplace')]
    property Marketplace: String read FMarketplace write FMarketplace;
    [JSONProp('marketplace_fee')]
    property MarketplaceFee: Integer read FMarketplaceFee write FMarketplaceFee;
    [JSONProp('sponsor_id')]
    property SponsorId: Integer read FSponsorId write FSponsorId;
    [JSONProp('notification_url')]
    property NotificationUrl: String read FNotificationUrl write FNotificationUrl;
    [JSONProp('back_urls')]
    property BackUrls: TBackUrl read FBackUrls write FBackUrls;
    [JSONProp('payer')]
    property Payer: TPayers read FPayer write FPayer;
    [JSONProp('expires')]
    property Expires: Boolean read FExpires write FExpires;
    [JSONProp('additional_info')]
    property AdditionalInfo: String read FAdditionalInfo write FAdditionalInfo;
    [JSONProp('site_id')]
    property SiteId: String read FSiteId write FSiteId;
    [JSONProp('client_id')]
    property ClienteId: Integer read FClienteId write FClienteId;
    [JSONProp('processing_modes')]
    property ProcessingModes: TObjectList<TProcessingModes> read FProcessingModes write FProcessingModes;
    [JSONProp('internal_metadata')]
    property InternalMetadata: TInternalMetadata read FInternalMetadata write FInternalMetadata;

    class function New: TInstoreQr;
  end;

implementation

class function TInstoreQr.New: TInstoreQr;
begin
  Result := Self.Create;
end;

end.
