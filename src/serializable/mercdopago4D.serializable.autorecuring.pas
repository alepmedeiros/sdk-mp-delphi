unit mercdopago4D.serializable.autorecuring;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.freetrial;

type
  TAutoRecurring = class
  private
    FFrequency: Integer;
    FFrequecyType: String;
    FStartDate: String;
    FEndDate: String;
    FTransactionAmount: Integer;
    FCurrencyId: String;
    FFreeTrial: TFreeTrial;
    FRepetitions: Integer;
    FBillingDay: Boolean;
    FBillingDayProportional: Boolean;
  public
    [JSONProp('frequency')]
    property Frequency: Integer read FFrequency write FFrequency;
    [JSONProp('frequency_type')]
    property FrequecyType: String read FFrequecyType write FFrequecyType;
    [JSONProp('start_date')]
    property StartDate: String read FStartDate write FStartDate;
    [JSONProp('end_date')]
    property EndDate: String read FEndDate write FEndDate;
    [JSONProp('transaction_amount')]
    property TransactionAmount: Integer read FTransactionAmount write FTransactionAmount;
    [JSONProp('currency_id')]
    property CurrencyId: String read FCurrencyId write FCurrencyId;
    [JSONProp('free_trial')]
    property FreeTrial: TFreeTrial read FFreeTrial write FFreeTrial;
    [JSONProp('repetitions')]
    property Repetitions: Integer read FRepetitions write FRepetitions;
    [JSONProp('billing_day')]
    property BillingDay: Boolean read FBillingDay write FBillingDay;
    [JSONProp('billing_day_proportional')]
    property BillingDayProportional: Boolean read FBillingDayProportional write FBillingDayProportional;

    class function New: TAutoRecurring;
  end;

implementation

class function TAutoRecurring.New: TAutoRecurring;
begin
  Result := Self.Create;
end;

end.
