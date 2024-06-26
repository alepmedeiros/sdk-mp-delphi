unit mercdopago4D.serializable.preferences;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.backurl,
  mercdopago4D.serializable.differentialpricing,
  mercdopago4D.serializable.items,
  mercdopago4D.serializable.metadata,
  mercdopago4D.serializable.payers,
  mercdopago4D.serializable.paymentmethods,
  mercdopago4D.serializable.shipments,
  mercdopago4D.serializable.tracks;

type
  TPreferences = class
  private
    FAdditionalInfo: String;
    FAutoReturn: String;
    FBackUrls: TBackUrl;
    FDateOfExpiration: String;
    FDifferentialPricing: TDifferentialPricing;
    FExpirationDateFrom: String;
    FExpirationDateTo: String;
    FExpires: Boolean;
    FExternalReference: String;
    FItems: TObjectList<TItems>;
    FMarketplace: String;
    FMarketplaceFee: String;
    FMetadata: TMetadata;
    FNotificationUrl: String;
    FPayer: TPayers;
    FPaymentMethods: TPaymentMethods;
    FShipments: TShipments;
    FStatementDescriptor: String;
    FTracks: TObjectList<TTracks>;
    FCollectorId: Integer;
    FOperationType: String;
    FClientId: String;
    FInitPoint: String;
    FSandboxInitPoint: String;
  public
    [JSONProp('additional_info')]
    property AdditionalInfo: String read FAdditionalInfo write FAdditionalInfo;
    [JSONProp('auto_return')]
    property AutoReturn: String read FAutoReturn write FAutoReturn;
    [JSONProp('back_urls')]
    property BackUrls: TBackUrl read FBackUrls write FBackUrls;
    [JSONProp('date_of_expiration')]
    property DateOfExpiration: String read FDateOfExpiration
      write FDateOfExpiration;
    [JSONProp('differential_pricing')]
    property differentialpricing: TDifferentialPricing read FDifferentialPricing
      write FDifferentialPricing;
    [JSONProp('expiration_date_from')]
    property ExpirationDateFrom: String read FExpirationDateFrom
      write FExpirationDateFrom;
    [JSONProp('expiration_date_to')]
    property ExpirationDateTo: String read FExpirationDateTo
      write FExpirationDateTo;
    [JSONProp('expires')]
    property Expires: Boolean read FExpires write FExpires;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference
      write FExternalReference;
    [JSONProp('items')]
    property items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('marketplace')]
    property Marketplace: String read FMarketplace write FMarketplace;
    [JSONProp('marketplace_fee')]
    property MarketplaceFee: String read FMarketplaceFee write FMarketplaceFee;
    [JSONProp('metadata')]
    property metadata: TMetadata read FMetadata write FMetadata;
    [JSONProp('notification_url')]
    property NotificationUrl: String read FNotificationUrl
      write FNotificationUrl;
    [JSONProp('payer')]
    property Payer: TPayers read FPayer write FPayer;
    [JSONProp('payment_methods')]
    property paymentmethods: TPaymentMethods read FPaymentMethods
      write FPaymentMethods;
    [JSONProp('shipments')]
    property shipments: TShipments read FShipments write FShipments;
    [JSONProp('statement_descriptor')]
    property StatementDescriptor: String read FStatementDescriptor
      write FStatementDescriptor;
    [JSONProp('tracks')]
    property tracks: TObjectList<TTracks> read FTracks write FTracks;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('client_id')]
    property ClientId: String read FClientId write FClientId;
    [JSONProp('init_point')]
    property InitPoint: String read FInitPoint write FInitPoint;
    [JSONProp('sandbox_init_point')]
    property SandboxInitPoint: String read FSandboxInitPoint write FSandboxInitPoint;

    class function New: TPreferences;
  end;

implementation

class function TPreferences.New: TPreferences;
begin
  Result := Self.Create;
end;

end.
