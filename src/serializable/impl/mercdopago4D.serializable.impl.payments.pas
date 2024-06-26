unit mercdopago4D.serializable.impl.payments;

interface

uses
  mercdopago4D.serializable.interfaces;

type
  TSerializablePayment = class(TInterfacedObject, iSerializablePayment)
  private
    FInstallments: Integer;
    FType: String;
    FInstallmentsCost: String;
    FVoucherType: String;
    FId: String;
    FParent: iSerializablePaymentIntents;

    constructor Create(Parent: iSerializablePaymentIntents);
    destructor Destroy; override;
  public
    class function New(Parent: iSerializablePaymentIntents): iSerializablePayment;
    function Installments(Value: Integer): iSerializablePayment; overload;
    function Installments: Integer; overload;
    function &Type(Value: String): iSerializablePayment; overload;
    function &Type: String; overload;
    function InstallmentsCost(Value: String): iSerializablePayment; overload;
    function InstallmentsCost: String; overload;
    function VoucherType(Value: String): iSerializablePayment; overload;
    function VoucherType: String; overload;
    function Id(Value: String): iSerializablePayment; overload;
    function Id: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

implementation


function TSerializablePayment.&End: iSerializablePaymentIntents;
begin
  Result := FParent;
end;

function TSerializablePayment.&Type: String;
begin
  Result := FType;
end;

function TSerializablePayment.&Type(Value: String): iSerializablePayment;
begin
  Result := Self;
  FType := VAlue;
end;

constructor TSerializablePayment.Create(Parent: iSerializablePaymentIntents);
begin
  FParent := Parent;
end;

destructor TSerializablePayment.Destroy;
begin

  inherited;
end;

function TSerializablePayment.Id(Value: String): iSerializablePayment;
begin
  Result := Self;
  FId := Value;
end;

function TSerializablePayment.Id: String;
begin
  Result := FId;
end;

function TSerializablePayment.Installments: Integer;
begin
  Result := FInstallments;
end;

function TSerializablePayment.Installments(
  Value: Integer): iSerializablePayment;
begin
  Result := Self;
  FInstallments := VAlue;
end;

function TSerializablePayment.InstallmentsCost: String;
begin
  Result := FInstallmentsCost;
end;

function TSerializablePayment.InstallmentsCost(
  Value: String): iSerializablePayment;
begin
  Result := Self;
  FInstallmentsCost := Value;
end;

class function TSerializablePayment.New(Parent: iSerializablePaymentIntents): iSerializablePayment;
begin
  Result := Self.Create(Parent);
end;

function TSerializablePayment.VoucherType: String;
begin
  Result := FVoucherType;
end;

function TSerializablePayment.VoucherType(Value: String): iSerializablePayment;
begin
  Result := Self;
  FVoucherType := Value;
end;

end.
