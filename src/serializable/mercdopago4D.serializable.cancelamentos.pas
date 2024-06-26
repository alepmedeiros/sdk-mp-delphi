unit mercdopago4D.serializable.cancelamentos;

interface

uses
  System.Generics.Collections,
  mercdopago4D.serializable.payers,
  mercdopago4D.serializable.additionalinfo,
  mercdopago4D.serializable.order,
  mercdopago4D.serializable.barcode,
  mercdopago4D.serializable.transactiondetails,
  mercdopago4D.serializable.pointofinteraction,
  GBJSON.Attributes;

type
  TCancelamento = class
  private
    FId: Integer;
    FDateCreated: String;
    FDateApproved: String;
    FDateLastUpdated: String;
    FDateOfExpiration: String;
    FMoneyReleaseDate: String;
    FOperationType: String;
    FIssuerId: Integer;
    FPaymentMethodId: String;
    FPaymentTypeID: String;
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
    FBrandId: String;
    FShippingAmount: Currency;
    FPosId: String;
    FStoreId: String;
    FIntegratorId: String;
    FPlatformId: String;
    FCorporationId: String;
    FCollextorId: Integer;
    FPayers: TObjectList<TPayers>;
    FMarketplaceAowner: String;
    FMetadata: TList<String>;
    FOrder: TObjectList<TOrder>;
    FAdditionalInfo: TObjectList<TAdditionalInfo>;
    FExternalReference: String;
    FTransactionAmount: Currency;
    FTransactionAmountRefunded: Currency;
    FCoupnAmount: Currency;
    FDifferenctialPricingId: String;
    FDeductionSchema: String;
    FBarCode: TObjectList<TBarCode>;
    FInstallments: Integer;
    FTransactionDetails: TObjectList<TTransactionDetails>;
    FFeeDetails: TList<String>;
    FChargesDetails: TList<String>;
    FCaptured: Boolean;
    FBinaryMode: Boolean;
    FCallForAuthorizeId: String;
    FStatementDescriptor: String;
    FCard: TList<String>;
    FNotificationUrl: String;
    FRefounds: TList<String>;
    FProcessingMode: String;
    FMerchantAccountId: String;
    FMerchantNumber: String;
    FAcquirerReconciliation: TList<String>;
    FPointOfInteraction: TObjectList<TPontOfInteraction>;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('date_approved')]
    property DateApproved: String read FDateApproved write FDateApproved;
    [JSONProp('date_last_updated')]
    property DateLastUpdated: String read FDateLastUpdated write FDateLastUpdated;
    [JSONProp('date_of_expiration')]
    property DateOfExpiration: String read FDateOfExpiration write FDateOfExpiration;
    [JSONProp('money_release_date')]
    property MoneyReleaseDate: String read FMoneyReleaseDate write FMoneyReleaseDate;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('issuer_id')]
    property IssuerId: Integer read FIssuerId write FIssuerId;
    [JSONProp('payment_method_id')]
    property PaymentMethodId: String read FPaymentMethodId write FPaymentMethodId;
    [JSONProp('payment_type_id')]
    property PaymentTypeID: String read FPaymentTypeID write FPaymentTypeID;
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
    property BrandId: String read FBrandId write FBrandId;
    [JSONProp('shipping_amount')]
    property ShippingAmount: Currency read FShippingAmount write FShippingAmount;
    [JSONProp('pos_id')]
    property PosId: String read FPosId write FPosId;
    [JSONProp('store_id')]
    property StoreId: String read FStoreId write FStoreId;
    [JSONProp('integrator_id')]
    property IntegratorId: String read FIntegratorId write FIntegratorId;
    [JSONProp('platform_id')]
    property PlatformId: String read FPlatformId write FPlatformId;
    [JSONProp('corporation_id')]
    property CorporationId: String read FCorporationId write FCorporationId;
    [JSONProp('collector_id')]
    property CollextorId: Integer read FCollextorId write FCollextorId;
    [JSONProp('payers')]
    property Payers: TObjectList<TPayers> read FPayers write FPayers;
    [JSONProp('marketplace_owner')]
    property MarketplaceAowner: String read FMarketplaceAowner write FMarketplaceAowner;
    [JSONProp('metadata')]
    property Metadata: TList<String> read FMetadata write FMetadata;
    [JSONProp('additional_info')]
    property AdditionalInfo: TObjectList<TAdditionalInfo> read FAdditionalInfo write FAdditionalInfo;
    [JSONProp('order')]
    property Order: TObjectList<TOrder> read FOrder write FOrder;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('transaction_amount')]
    property TransactionAmount: Currency read FTransactionAmount write FTransactionAmount;
    [JSONProp('transaction_amount_refunded')]
    property TransactionAmountRefunded: Currency read FTransactionAmountRefunded write FTransactionAmountRefunded;
    [JSONProp('coupon_amount')]
    property CoupnAmount: Currency read FCoupnAmount write FCoupnAmount;
    [JSONProp('differential_pricing_id')]
    property DifferenctialPricingId: String read FDifferenctialPricingId write FDifferenctialPricingId;
    [JSONProp('deduction_schema')]
    property DeductionSchema: String read FDeductionSchema write FDeductionSchema;
    [JSONProp('barcode')]
    property BarCode: TObjectList<TBarCode> read FBarCode write FBarCode;
    [JSONProp('installments')]
    property Installments: Integer read FInstallments write FInstallments;
    [JSONProp('transaction_details')]
    property TransactionDetails: TObjectList<TTransactionDetails> read FTransactionDetails write FTransactionDetails;
    [JSONProp('fee_details')]
    property FeeDetails: TList<String> read FFeeDetails write FFeeDetails;
    [JSONProp('charges_details')]
    property ChargesDetails: TList<String> read FChargesDetails write FChargesDetails;
    [JSONProp('captured')]
    property Captured: Boolean read FCaptured write FCaptured;
    [JSONProp('binary_mode')]
    property BinaryMode: Boolean read FBinaryMode write FBinaryMode;
    [JSONProp('call_for_authorize_id')]
    property CallForAuthorizeId: String read FCallForAuthorizeId write FCallForAuthorizeId;
    [JSONProp('statement_descriptor')]
    property StatementDescriptor: String read FStatementDescriptor write FStatementDescriptor;
    [JSONProp('card')]
    property Card: TList<String> read FCard write FCard;
    [JSONProp('notification_url')]
    property NotificationUrl: String read FNotificationUrl write FNotificationUrl;
    [JSONProp('refunds')]
    property Refounds: TList<String> read FRefounds write FRefounds;
    [JSONProp('processing_mode')]
    property ProcessingMode: String read FProcessingMode write FProcessingMode;
    [JSONProp('merchant_account_id')]
    property MerchantAccountId: String read FMerchantAccountId write FMerchantAccountId;
    [JSONProp('merchant_number')]
    property MerchantNumber: String read FMerchantNumber write FMerchantNumber;
    [JSONProp('acquirer_reconciliation')]
    property AcquirerReconciliation: TList<String> read FAcquirerReconciliation write FAcquirerReconciliation;
    [JSONProp('point_of_interaction')]
    property PointOfInteraction: TObjectList<TPontOfInteraction> read FPointOfInteraction write FPointOfInteraction;

    class function New: TCancelamento;
  end;

implementation

{ TCancelamento }

constructor TCancelamento.Create;
begin
  Payers:= TObjectList<TPayers>.Create;
  FPointOfInteraction:= TObjectList<TPontOfInteraction>.Create;
  FAcquirerReconciliation:= TList<String>.create;
  FChargesDetails:= TList<String>.Create;
  FTransactionDetails:= TObjectList<TTransactionDetails>.Create;
  FFeeDetails:= TList<String>.Create;
  FBarCode:= TObjectList<TBarCode>.Create;
  FAdditionalInfo:= TObjectList<TAdditionalInfo>.Create;
  FOrder:= TObjectList<TOrder>.Create;
  FAdditionalInfo:= TObjectList<TAdditionalInfo>.Create;
  FPayers:= TObjectList<TPayers>.Create;
  FMetadata:= TList<String>.Create;
end;

destructor TCancelamento.Destroy;
begin
  FPayers.DisposeOf;
  FPointOfInteraction.DisposeOf;
  FAcquirerReconciliation.DisposeOf;
  FChargesDetails.DisposeOf;
  FTransactionDetails.DisposeOf;
  FFeeDetails.DisposeOf;
  FBarCode.DisposeOf;
  FAdditionalInfo.DisposeOf;
  FOrder.DisposeOf;
  FAdditionalInfo.DisposeOf;
  FPayers.DisposeOf;
  FMetadata.DisposeOf;
  inherited;
end;

class function TCancelamento.New: TCancelamento;
begin
  Result := Self.Create;
end;

end.
