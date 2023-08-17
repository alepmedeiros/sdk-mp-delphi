unit mercdopago4D.serializable.transactiondetails;

interface

uses
  GBJSON.Attributes;

type
  TTransactionDetails = class
  private
    FPaymentMethodReferenceId: String;
    FVerificationCode: String;
    FNetReceivedAmount: Currency;
    FTotalPaidAmount: Currency;
    FOverpaidAmount: String;
    FExternalResourceUrl: String;
    FInstallmentAmount: Currency;
    FFinancialInstitution: String;
    FPayableDeferralPeriod: String;
    FAcquirerReference: String;
  public
    [JSONProp('payment_method_reference_id')]
    property PaymentMethodReferenceId: String read FPaymentMethodReferenceId write FPaymentMethodReferenceId;
    [JSONProp('verification_code')]
    property VerificationCode: String read FVerificationCode write FVerificationCode;
    [JSONProp('net_received_amount')]
    property NetReceivedAmount: Currency read FNetReceivedAmount write FNetReceivedAmount;
    [JSONProp('total_paid_amount')]
    property TotalPaidAmount: Currency read FTotalPaidAmount write FTotalPaidAmount;
    [JSONProp('overpaid_amount')]
    property OverpaidAmount: String read FOverpaidAmount write FOverpaidAmount;
    [JSONProp('external_resource_url')]
    property ExternalResourceUrl: String read FExternalResourceUrl write FExternalResourceUrl;
    [JSONProp('installment_amount')]
    property InstallmentAmount: Currency read FInstallmentAmount write FInstallmentAmount;
    [JSONProp('financial_institution')]
    property FinancialInstitution: String read FFinancialInstitution write FFinancialInstitution;
    [JSONProp('payable_deferral_period')]
    property PayableDeferralPeriod: String read FPayableDeferralPeriod write FPayableDeferralPeriod;
    [JSONProp('acquirer_reference')]
    property AcquirerReference: String read FAcquirerReference write FAcquirerReference;

    class function New: TTransactionDetails;
  end;

implementation

class function TTransactionDetails.New: TTransactionDetails;
begin
  Result := Self.Create;
end;

end.
