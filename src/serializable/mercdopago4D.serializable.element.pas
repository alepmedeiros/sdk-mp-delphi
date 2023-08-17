unit mercdopago4D.serializable.element;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.items;

type
  TElement = class
  private
    FId: String;
    FClientId: String;
    FCollectorId: Integer;
    FConceptId: String;
    FCorporationId: String;
    FDateCreated: String;
    FExpirationDateFrom: String;
    FExpirationDateTo: String;
    FExpires: Boolean;
    FIntegratorId: String;
    FExternalReference: String;
    FItems: TObjectList<TItems>;
    FLastUpdated: String;
    FLiveMode: Boolean;
    FMarketplace: String;
    FOperationType: String;
    FPayerEmail: String;
    FPlatformId: String;
    FProcessingModes: String;
    FProductId: String;
    FPurpose: String;
    FSiteId: String;
    FSponsorId: Integer;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('client_id')]
    property ClientId: String read FClientId write FClientId;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('concept_id')]
    property ConceptId: String read FConceptId write FConceptId;
    [JSONProp('corporation_id')]
    property CorporationId: String read FCorporationId write FCorporationId;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('expiration_date_from')]
    property ExpirationDateFrom: String read FExpirationDateFrom write FExpirationDateFrom;
    [JSONProp('expiration_date_to')]
    property ExpirationDateTo: String read FExpirationDateTo write FExpirationDateTo;
    [JSONProp('expires')]
    property Expires: Boolean read FExpires write FExpires;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('integrator_id')]
    property IntegratorId: String read FIntegratorId write FIntegratorId;
    [JSONProp('items')]
    property Items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('last_updated')]
    property LastUpdated: String read FLastUpdated write FLastUpdated;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;
    [JSONProp('marketplace')]
    property Marketplace: String read FMarketplace write FMarketplace;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('payer_email')]
    property PayerEmail: String read FPayerEmail write FPayerEmail;
    [JSONProp('platform_id')]
    property PlatformId: String read FPlatformId write FPlatformId;
    [JSONProp('processing_modes')]
    property ProcessingModes: String read FProcessingModes write FProcessingModes;
    [JSONProp('product_id')]
    property ProductId: String read FProductId write FProductId;
    [JSONProp('purpose')]
    property Purpose: String read FPurpose write FPurpose;
    [JSONProp('site_id')]
    property SiteId: String read FSiteId write FSiteId;
    [JSONProp('sponsor_id')]
    property SponsorId: Integer read FSponsorId write FSponsorId;

    class function New: TElement;
  end;

implementation

class function TElement.New: TElement;
begin
  Result := Self.Create;
end;
end.
