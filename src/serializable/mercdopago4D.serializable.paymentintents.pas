unit mercdopago4D.serializable.paymentintents;

interface

uses
  GBJSON.Attributes;

type
  TAdditionalInfo = class
  private
    FExternalReference: String;
    FPrintOnTerminal: Boolean;
    FTicketNumber: String;
  public
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('print_on_terminal')]
    property PrintOnTerminal: Boolean read FPrintOnTerminal write FPrintOnTerminal;
    [JSONProp('ticket_number')]
    property TicketNumber: String read FTicketNumber write FTicketNumber;
  end;

  TPayment = class
  private
    FInstallments: Integer;
    FType: String;
    FInstallmentsCost: String;
    FVoucherType: String;
    FId: String;
  public
    [JSONProp('installments')]
    property Installments: Integer read FInstallments write FInstallments;
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('installments_cost')]
    property InstallmentsCost: String read FInstallmentsCost write FInstallmentsCost;
    [JSONProp('voucher_type')]
    property VoucherType: String read FVoucherType write FVoucherType;
    [JSONProp('id')]
    property Id: String read FId write FId;
  end;

  TPaymentIntents = class
  private
    FAdditionalInfo: TAdditionalInfo;
    FAmount: Integer;
    FDescription: String;
    FPayment: TPayment;
    FDeviceId: String;
    FId: String;
    FState: String;
    FPaymentMode: String;
  public
    [JSONProp('additional_info')]
    property additionalinfo: TAdditionalInfo read FAdditionalInfo
      write FAdditionalInfo;
    [JSONProp('amount')]
    property Amount: Integer read FAmount write FAmount;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;
    [JSONProp('payment')]
    property Payment: TPayment read FPayment write FPayment;
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('device_id')]
    property DeviceId: String read FDeviceId write FDeviceId;
    [JSONProp('state')]
    property State: String read FState write FState;
    [JSONProp('payment_mode')]
    property PaymentMode: String read FPaymentMode write FPaymentMode;


    constructor Create;
    destructor Destroy; override;
    class function New: TPaymentIntents;
  end;

implementation

constructor TPaymentIntents.Create;
begin
  FAdditionalInfo:= TAdditionalInfo.Create;
  FPayment:= TPayment.Create;
end;

destructor TPaymentIntents.Destroy;
begin
  FAdditionalInfo.DisposeOf;
  FPayment.DisposeOf;
  inherited;
end;

class function TPaymentIntents.New: TPaymentIntents;
begin
  Result := Self.Create;
end;

end.
