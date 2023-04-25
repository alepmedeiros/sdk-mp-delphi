unit sdkmpdelphi.serialize.entity.payments;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  sdkmpdelphi.serialize.entity.payers;

type
  TPayments = class
  private
    Fid: Integer;
    FDateCreated: TDateTime;
    FDateApproved: TDateTIme;
    FDateLasUpdated: TDateTime;
    FDateOfExpiration: TDateTime;
    FMoneyReleaseDate: TDateTime;
    FOperationType: String;
    FIssuerId: Integer;
    FPaymentMethodId: String;
    FPaymentTypeId: String;
    FStatus: String;
    FStatusDetail: String;
    FCurrencyId: String;
    FDescription: String;
    FLiveMode: String;
    FSponsorId: String;
    FAuthorizationCode: String;
    FMoneyReleaseSchema: String;
    FTaxesAmount: Currency;
    FCounterCurrency: String;
    FbrandId: String;
    FShippingAmount: Currency;
    FPosId: String;
    FStoreId: String;
    FIntegratorId: String;
    FPlataformId: String;
    FCorporationId: String;
    FCollectorId: Integer;
    FPayers: TObjectList<TPayers>;
  public
    [JSONProp('id')]
    property Id: Integer read Fid write Fid;
    [JSONProp('date_created')]
    property DateCreated: TDateTime read FDateCreated write FDateCreated;
    [JSONProp('date_approved')]
    property DateApproved: TDateTIme read FDateApproved write FDateApproved;
    [JSONProp('date_last_updated')]
    property DateLasUpdated: TDateTime read FDateLasUpdated write FDateLasUpdated;
    [JSONProp('date_of_expiration')]
    property DateOfExpiration: TDateTime read FDateOfExpiration write FDateOfExpiration;
    [JSONProp('money_release_date')]
    property MoneyReleaseDate: TDateTime read FMoneyReleaseDate write FMoneyReleaseDate;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('issuer_id')]
    property IssuerId: Integer read FIssuerId write FIssuerId;
    [JSONProp('payment_method_id')]
    property PaymentMethodId: String read FPaymentMethodId write FPaymentMethodId;
    [JSONProp('payment_type_id')]
    property PaymentTypeId: String read FPaymentTypeId write FPaymentTypeId;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('status_detail')]
    property StatusDetail: String read FStatusDetail write FStatusDetail;
    [JSONProp('currency_id')]
    property CurrencyId: String read FCurrencyId write FCurrencyId;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;
    [JSONProp('live_mode')]
    property LiveMode: String read FLiveMode write FLiveMode;
    [JSONProp('sponsor_id')]
    property SponsorId: String read FSponsorId write FSponsorId;
    [JSONProp('authorization_code')]
    property AuthorizationCode: String read FAuthorizationCode write FAuthorizationCode;
    [JSONProp('money_release_schema')]
    property MoneyReleaseSchema: String read FMoneyReleaseSchema write FMoneyReleaseSchema;
    [JSONProp('taxes_amount')]
    property TaxesAmount: Currency read FTaxesAmount write FTaxesAmount;
    [JSONProp('counter_currency')]
    property CounterCurrency: String read FCounterCurrency write FCounterCurrency;
    [JSONProp('brand_id')]
    property brandId: String read FbrandId write FbrandId;
    [JSONProp('shipping_amount')]
    property ShippingAmount: Currency read FShippingAmount write FShippingAmount;
    [JSONProp('pos_id')]
    property PosId: String read FPosId write FPosId;
    [JSONProp('store_id')]
    property StoreId: String read FStoreId write FStoreId;
    [JSONProp('integrator_id')]
    property IntegratorId: String read FIntegratorId write FIntegratorId;
    [JSONProp('platform_id')]
    property PlataformId: String read FPlataformId write FPlataformId;
    [JSONProp('corporation_id')]
    property CorporationId: String read FCorporationId write FCorporationId;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('payers')]
    property Payers: TObjectList<TPayers> read FPayers write FPayers;
    [JSONProp('marketplace_owner')]
    [JSONProp('metadata')]
    [JSONProp('payers')]
    [JSONProp('payers')]

    constructor Create;
    destructor Destroy; override;
    class function New: TPayments;
  end;

implementation

{ TPayments }

constructor TPayments.Create;
begin
  FPayers:= TObjectList<TPayers>.Create
end;

destructor TPayments.Destroy;
begin
  FPayers.Free;
  inherited;
end;

class function TPayments.New: TPayments;
begin
  Result := Self.Create;
end;

end.
