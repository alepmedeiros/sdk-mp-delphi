unit mercdopago4D.serializable.authorizedpayments;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.payments;

type
  TAuthorizedPayments = class
  private
    FId: Integer;
    FDateCreated: String;
    FType: String;
    FLastModified: String;
    FPreapprovalId: String;
    FReason: String;
    FExternalReference: String;
    FCurrencyId: String;
    FTransactionAmount: Currency;
    FDebitDate: TDateTime;
    FRetryAttempt: Integer;
    FStatus: String;
    FSummarized: String;
    FPayment: TPayments;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('last_modified')]
    property LastModified: String read FLastModified write FLastModified;
    [JSONProp('preapproval_id')]
    property PreapprovalId: String read FPreapprovalId write FPreapprovalId;
    [JSONProp('reason')]
    property Reason: String read FReason write FReason;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('currency_id')]
    property CurrencyId: String read FCurrencyId write FCurrencyId;
    [JSONProp('transaction_amount')]
    property TransactionAmount: Currency read FTransactionAmount write FTransactionAmount;
    [JSONProp('debit_date')]
    property DebitDate: TDateTime read FDebitDate write FDebitDate;
    [JSONProp('retry_attempt')]
    property RetryAttempt: Integer read FRetryAttempt write FRetryAttempt;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('summarized')]
    property Summarized: String read FSummarized write FSummarized;
    [JSONProp('payment')]
    property Payment: TPayments read FPayment write FPayment;

    class function New: TAuthorizedPayments;
  end;

implementation

class function TAuthorizedPayments.New: TAuthorizedPayments;
begin
  Result := Self.Create;
end;

end.
