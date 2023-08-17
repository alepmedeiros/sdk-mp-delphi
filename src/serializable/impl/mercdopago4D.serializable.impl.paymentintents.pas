unit mercdopago4D.serializable.impl.paymentintents;

interface

uses
  mercdopago4D.serializable.interfaces;

type
  TSerializablePaymentIntents = class(TInterfacedObject, iSerializablePaymentIntents)
  private
    FAdditionalInfo: iSerializableAdditionalInfo;
    FAmount: Integer;
    FDescription: String;
    FPayment: iSerializablePayment;
    FDeviceId: String;
    FId: String;
    FState: String;
    FPaymentMode: String;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iSerializablePaymentIntents;
    function AdditionalInfo: iSerializableAdditionalInfo;
    function Amount(Value: Integer): iSerializablePaymentIntents; overload;
    function Amount: Integer overload;
    function Description(Value: String): iSerializablePaymentIntents; overload;
    function Description: String; overload;
    function Payment: iSerializablePayment;
    function DeviceId(Value: String): iSerializablePaymentIntents; overload;
    function DeviceId: String; overload;
    function Id(Value: String): iSerializablePaymentIntents; overload;
    function Id: String; overload;
    function State(Value: String): iSerializablePaymentIntents; overload;
    function State: String; overload;
    function PaymentMode(Value: String): iSerializablePaymentIntents; overload;
    function PaymentMode: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

implementation

uses
  mercdopago4D.serializable.impl.additionalinfo;

function TSerializablePaymentIntents.AdditionalInfo: iSerializableAdditionalInfo;
begin
  if not Assigned(FAdditionalInfo) then
    FAdditionalInfo := TSerializableAdditionalInfo.New(Self);
  Result := FAdditionalInfo;
end;

function TSerializablePaymentIntents.Amount(
  Value: Integer): iSerializablePaymentIntents;
begin
  Result := Self;
  FAmount := Value;
end;

function TSerializablePaymentIntents.Amount: Integer;
begin
  Result := FAmount;
end;

function TSerializablePaymentIntents.&End: iSerializablePaymentIntents;
begin
  Result := Self;
end;

constructor TSerializablePaymentIntents.Create;
begin

end;

function TSerializablePaymentIntents.Description: String;
begin
  Result := FDescription;
end;

function TSerializablePaymentIntents.Description(
  Value: String): iSerializablePaymentIntents;
begin
  Result := Self;
  FDescription := Value;
end;

destructor TSerializablePaymentIntents.Destroy;
begin

  inherited;
end;

function TSerializablePaymentIntents.DeviceId(
  Value: String): iSerializablePaymentIntents;
begin
  Result := Self;
  FDeviceId := Value;
end;

function TSerializablePaymentIntents.DeviceId: String;
begin
  Result := FDeviceId;
end;

function TSerializablePaymentIntents.Id(
  Value: String): iSerializablePaymentIntents;
begin
  Result := Self;
  FId := Value;
end;

function TSerializablePaymentIntents.Id: String;
begin
  Result := FId;
end;

class function TSerializablePaymentIntents.New: iSerializablePaymentIntents;
begin
  Result := Self.Create;
end;

function TSerializablePaymentIntents.Payment: iSerializablePayment;
begin
  Result := FPayment;
end;

function TSerializablePaymentIntents.PaymentMode: String;
begin
  Result := FPaymentMode;
end;

function TSerializablePaymentIntents.PaymentMode(
  Value: String): iSerializablePaymentIntents;
begin
  Result := Self;
  FPaymentMode := Value;
end;

function TSerializablePaymentIntents.State: String;
begin
  Result := FState;
end;

function TSerializablePaymentIntents.State(
  Value: String): iSerializablePaymentIntents;
begin
  Result := Self;
  FState := Value;
end;

end.
