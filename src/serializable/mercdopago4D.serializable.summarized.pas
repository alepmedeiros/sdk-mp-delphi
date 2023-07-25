unit mercdopago4D.serializable.summarized;

interface

uses
  GBJSON.Attributes;

type
  TSummarized = class
  private
    FQuotas: Integer;
    FChargedQuantity: Integer;
    FChargedAmount: Integer;
    FPendingChargeQuantity: Integer;
    FPendingChargeAmount: Integer;
    FLastChargedDate: Integer;
    FLastChargedAmount: Integer;
    FSemaphore: Integer;
  public
    [JSONProp('quotas')]
    property Quotas: Integer read FQuotas write FQuotas;
    [JSONProp('charged_quantity')]
    property ChargedQuantity: Integer read FChargedQuantity write FChargedQuantity;
    [JSONProp('charged_amount')]
    property ChargedAmount: Integer read FChargedAmount write FChargedAmount;
    [JSONProp('pending_charge_quantity')]
    property PendingChargeQuantity: Integer read FPendingChargeQuantity write FPendingChargeQuantity;
    [JSONProp('pending_charge_amount')]
    property PendingChargeAmount: Integer read FPendingChargeAmount write FPendingChargeAmount;
    [JSONProp('last_charged_date')]
    property LastChargedDate: Integer read FLastChargedDate write FLastChargedDate;
    [JSONProp('last_charged_amount')]
    property LastChargedAmount: Integer read FLastChargedAmount write FLastChargedAmount;
    [JSONProp('semaphore')]
    property Semaphore: Integer read FSemaphore write FSemaphore;

    class function New: TSummarized;
  end;

implementation

class function TSummarized.New: TSummarized;
begin
  Result := Self.Create;
end;

end.
