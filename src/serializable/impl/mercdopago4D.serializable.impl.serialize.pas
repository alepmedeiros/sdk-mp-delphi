unit mercdopago4D.serializable.impl.serialize;

interface

uses
  mercdopago4D.serializable.interfaces,
  mercdopago4D.serializable.paymentintents,
  mercdopago4D.serializable.devices;

type
  TSerialize = class(TInterfacedObject, iSerialize)
  private
    FDevice: TDevicesSerialize;
    FPaymentIntents: TPaymentIntents;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iSerialize;
    function Device: TDevicesSerialize;
    function PaymentIntents: TPaymentIntents;
  end;

implementation

uses
  mercdopago4D.serializable.impl.devices,
  mercdopago4D.serializable.impl.paymentintents;

constructor TSerialize.Create;
begin

end;

destructor TSerialize.Destroy;
begin

  inherited;
end;

function TSerialize.Device: TDevicesSerialize;
begin
  if not Assigned(FDevice) then
    FDevice:= TDevicesSerialize.New;
  Result := FDevice;
end;

class function TSerialize.New: iSerialize;
begin
  Result := Self.Create;
end;

function TSerialize.PaymentIntents: TPaymentIntents;
begin
  if not Assigned(FPaymentIntents) then
    FPaymentIntents:= TPaymentIntents.New;
  Result := FPaymentIntents;
end;

end.
