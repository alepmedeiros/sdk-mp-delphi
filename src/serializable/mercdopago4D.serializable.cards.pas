unit mercdopago4D.serializable.cards;

interface

uses
  GBJSON.Attributes,
  mercdopago4D.serializable.cardholder,
  mercdopago4D.serializable.paymentmethods,
  mercdopago4D.serializable.securitycode,
  mercdopago4D.serializable.issuer;

type
  TCards = class
  private
    FId: String;
    FFirstSixDigits: String;
    FLastFourDigits: String;
    FExpirationMonth: Integer;
    FExpitarionYear: Integer;
    FDateCreated: String;
    FDateLastUpdated: String;
    FCardHolder: TCardHolder;
    FPaymentMethod: TPaymentMethods;
    FSecurityCode: TSecurityCode;
    FIssuer: TIssuer;
    FUserId: String;
    FLiveMode: Boolean;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('first_six_digits')]
    property FirstSixDigits: String read FFirstSixDigits write FFirstSixDigits;
    [JSONProp('last_four_digits')]
    property LastFourDigits: String read FLastFourDigits write FLastFourDigits;
    [JSONProp('expiration_month')]
    property ExpirationMonth: Integer read FExpirationMonth
      write FExpirationMonth;
    [JSONProp('expiration_year')]
    property ExpitarionYear: Integer read FExpitarionYear write FExpitarionYear;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('date_last_updated')]
    property DateLastUpdated: String read FDateLastUpdated
      write FDateLastUpdated;
    [JSONProp('cardholder')]
    property cardholder: TCardHolder read FCardHolder write FCardHolder;
    [JSONProp('payment_method')]
    property PaymentMethod: TPaymentMethods read FPaymentMethod write FPaymentMethod;
    [JSONProp('security_code')]
    property SecurityCode: TSecurityCode read FSecurityCode write FSecurityCode;
    [JSONProp('issuer')]
    property Issuer: TIssuer read FIssuer write FIssuer;
    [JSONProp('user_id')]
    property UserId: String read FUserId write FUserId;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;

    class function New: TCards;
  end;

implementation

class function TCards.New: TCards;
begin
  Result := Self.Create;
end;

end.
