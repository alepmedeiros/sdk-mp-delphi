unit mercdopago4D.serializable.payments;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.additionalinfo,
  mercdopago4D.serializable.metadata,
  mercdopago4D.serializable.payers,
  mercdopago4D.serializable.transactiondetails,
  mercdopago4D.serializable.cards,
  mercdopago4D.serializable.pointofinteraction,
  mercdopago4D.serializable.feedetails, mercdopago4D.serializable.qr;

type
  TPayments = class
  private
    FAdditionalInfo: TAdditionalInfo;
    FApplicationFee: Currency;
    FBinaryMode: Boolean;
    FCallbackUrl: String;
    FCampaignId: Integer;
    FCapture: Boolean;
    FCouponAmout: Currency;
    FCouponCode: String;
    FDateOfExpiration: String;
    FDesciption: String;
    FDifferentialPricingId: Currency;
    FExternalReference: String;
    FInstallments: Integer;
    FIssuerId: String;
    FMetadata: TMetadata;
    FNotificationURL: String;
    FPayer: TPayers;
    FPaymentMethodId: String;
    FStatementDescriptor: String;
    FToken: String;
    FTransactionAmount: Currency;
    FId: Integer;
    FDateCreated: string;
    FDateApproved: String;
    FDateLastUpdated: String;
    FMoneyReleaseDate: String;
    FOperationType: String;
    FPaymentTypeID: String;
    FStatus: String;
    FStatusDetail: String;
    FCurrencyId: String;
    FLiveMode: Boolean;
    FSponsorId: String;
    FAuthorizationCode: String;
    FMoneyReleaseSchema: String;
    FTaxesAmount: Currency;
    FCounterCurrency: String;
    FShippingAmount: Currency;
    FPosId: String;
    FStoreId: String;
    FCollectorId: Integer;
    FTransactionAmountRefunded: Currency;
    FDeductionSchema: String;
    FTransactionDetails: TTransactionDetails;
    FFeeDetails: TObjectList<TFeeDetails>;
    FCaptured: Boolean;
    FCallForAuthorizeId: String;
    FCard: TCards;
    FProcessingMode: String;
    FMerchantAccountId: String;
    FAcquirer: String;
    FMerchantNumber: String;
    FPointOfInteraction: TPontOfInteraction;
    FExternalStoreId: String;
    FName: String;
    FExternalId: String;
    FFixedAmount: Boolean;
    FQr: TQr;
    FUrl: String;
    FCategoty: Integer;
    FType: String;
    FInstallmentsCost: String;
    FVoucherType: String;
  public
    [JSONProp('additional_info')]
    property additionalinfo: TAdditionalInfo read FAdditionalInfo
      write FAdditionalInfo;
    [JSONProp('application_fee')]
    property ApplicationFee: Currency read FApplicationFee
      write FApplicationFee;
    [JSONProp('binary_mode')]
    property BinaryMode: Boolean read FBinaryMode write FBinaryMode;
    [JSONProp('callback_url')]
    property CallbackUrl: String read FCallbackUrl write FCallbackUrl;
    [JSONProp('campaign_id')]
    property CampaignId: Integer read FCampaignId write FCampaignId;
    [JSONProp('capture')]
    property Capture: Boolean read FCapture write FCapture;
    [JSONProp('coupon_amount')]
    property CouponAmout: Currency read FCouponAmout write FCouponAmout;
    [JSONProp('coupon_code')]
    property CouponCode: String read FCouponCode write FCouponCode;
    [JSONProp('date_of_expiration')]
    property DateOfExpiration: String read FDateOfExpiration
      write FDateOfExpiration;
    [JSONProp('description')]
    property Desciption: String read FDesciption write FDesciption;
    [JSONProp('differential_pricing_id')]
    property DifferentialPricingId: Currency read FDifferentialPricingId
      write FDifferentialPricingId;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference
      write FExternalReference;
    [JSONProp('installments')]
    property Installments: Integer read FInstallments write FInstallments;
    [JSONProp('issuer_id')]
    property IssuerId: String read FIssuerId write FIssuerId;
    [JSONProp('metadata')]
    property metadata: TMetadata read FMetadata write FMetadata;
    [JSONProp('notification_url')]
    property NotificationURL: String read FNotificationURL
      write FNotificationURL;
    [JSONProp('payer')]
    property Payer: TPayers read FPayer write FPayer;
    [JSONProp('payment_method_id')]
    property PaymentMethodId: String read FPaymentMethodId
      write FPaymentMethodId;
    [JSONProp('statement_descriptor')]
    property StatementDescriptor: String read FStatementDescriptor
      write FStatementDescriptor;
    [JSONProp('token')]
    property Token: String read FToken write FToken;
    [JSONProp('transaction_amount')]
    property TransactionAmount: Currency read FTransactionAmount
      write FTransactionAmount;
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('date_created')]
    property DateCreated: string read FDateCreated write FDateCreated;
    [JSONProp('date_approved')]
    property DateApproved: String read FDateApproved write FDateApproved;
    [JSONProp('date_last_updated')]
    property DateLastUpdated: String read FDateLastUpdated
      write FDateLastUpdated;
    [JSONProp('money_release_date')]
    property MoneyReleaseDate: String read FMoneyReleaseDate
      write FMoneyReleaseDate;
    [JSONProp('operation_type')]
    property OperationType: String read FOperationType write FOperationType;
    [JSONProp('payment_type_id')]
    property PaymentTypeID: String read FPaymentTypeID write FPaymentTypeID;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('status_detail')]
    property StatusDetail: String read FStatusDetail write FStatusDetail;
    [JSONProp('currency_id')]
    property CurrencyId: String read FCurrencyId write FCurrencyId;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;
    [JSONProp('sponsor_id')]
    property SponsorId: String read FSponsorId write FSponsorId;
    [JSONProp('authorization_code')]
    property AuthorizationCode: String read FAuthorizationCode
      write FAuthorizationCode;
    [JSONProp('money_release_schema')]
    property MoneyReleaseSchema: String read FMoneyReleaseSchema
      write FMoneyReleaseSchema;
    [JSONProp('taxes_amount')]
    property TaxesAmount: Currency read FTaxesAmount write FTaxesAmount;
    [JSONProp('counter_currency')]
    property CounterCurrency: String read FCounterCurrency
      write FCounterCurrency;
    [JSONProp('shipping_amount')]
    property ShippingAmount: Currency read FShippingAmount
      write FShippingAmount;
    [JSONProp('pos_id')]
    property PosId: String read FPosId write FPosId;
    [JSONProp('store_id')]
    property StoreId: String read FStoreId write FStoreId;
    [JSONProp('collector_id')]
    property CollectorId: Integer read FCollectorId write FCollectorId;
    [JSONProp('transaction_amount_refunded')]
    property TransactionAmountRefunded: Currency read FTransactionAmountRefunded
      write FTransactionAmountRefunded;
    [JSONProp('deduction_schema')]
    property DeductionSchema: String read FDeductionSchema
      write FDeductionSchema;
    [JSONProp('transaction_details')]
    property transactiondetails: TTransactionDetails read FTransactionDetails
      write FTransactionDetails;
    [JSONProp('fee_details')]
    property feedetails: TObjectList<TFeeDetails> read FFeeDetails
      write FFeeDetails;
    [JSONProp('captured')]
    property Captured: Boolean read FCaptured write FCaptured;
    [JSONProp('call_for_authorize_id')]
    property CallForAuthorizeId: String read FCallForAuthorizeId
      write FCallForAuthorizeId;
    [JSONProp('card')]
    property Card: TCards read FCard write FCard;
    [JSONProp('processing_mode')]
    property ProcessingMode: String read FProcessingMode write FProcessingMode;
    [JSONProp('merchant_account_id')]
    property MerchantAccountId: String read FMerchantAccountId
      write FMerchantAccountId;
    [JSONProp('acquirer')]
    property Acquirer: String read FAcquirer write FAcquirer;
    [JSONProp('merchant_number')]
    property MerchantNumber: String read FMerchantNumber write FMerchantNumber;
    [JSONProp('point_of_interaction')]
    property pointofinteraction: TPontOfInteraction read FPointOfInteraction
      write FPointOfInteraction;
    [JSONProp('category')]
    property Categoty: Integer read FCategoty write FCategoty;
    [JSONProp('external_id')]
    property ExternalId: String read FExternalId write FExternalId;
    [JSONProp('external_store_id')]
    property ExternalStoreId: String read FExternalStoreId write FExternalStoreId;
    [JSONProp('fixed_amount')]
    property FixedAmount: Boolean read FFixedAmount write FFixedAmount;
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('url')]
    property Url: String read FUrl write FUrl;
    [JSONProp('qr')]
    property Qr: TQr read FQr write FQr;
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('installments_cost')]
    property InstallmentsCost: String read FInstallmentsCost write FInstallmentsCost;
    [JSONProp('voucher_type')]
    property VoucherType: String read FVoucherType write FVoucherType;

    constructor Create;
    destructor Destroy; override;
    class function New: TPayments;
  end;

implementation

constructor TPayments.Create;
begin
  FAdditionalInfo := TAdditionalInfo.New;
  FTransactionDetails:= TTransactionDetails.New;
  FFeeDetails:= TObjectList<TFeeDetails>.Create;
  FPointOfInteraction:= TPontOfInteraction.New;
end;

destructor TPayments.Destroy;
begin

  inherited;
end;

class function TPayments.New: TPayments;
begin
  Result := Self.Create;
end;

end.
