unit mercdopago4D.serializable.impl.additionalinfo;

interface

uses
  mercdopago4D.serializable.interfaces;

type
  TSerializableAdditionalInfo = class(TInterfacedObject, iSerializableAdditionalInfo)
  private
    FExternalReference: String;
    FPrintOnTerminal: Boolean;
    FTicketNumber: String;
    FParent: iSerializablePaymentIntents;

    constructor Create(Parent: iSerializablePaymentIntents);
    destructor Destroy; override;
  public
    class function New(Parent: iSerializablePaymentIntents): iSerializableAdditionalInfo;
    function ExternalReference(Value: String): iSerializableAdditionalInfo; overload;
    function ExternalReference: String; overload;
    function PrintOnTerminal(Value: Boolean): iSerializableAdditionalInfo; overload;
    function PrintOnTerminal: Boolean; overload;
    function TicketNumber(Value: String): iSerializableAdditionalInfo; overload;
    function TicketNumber: String; overload;
    function &End: iSerializablePaymentIntents;
  end;

implementation


function TSerializableAdditionalInfo.&End: iSerializablePaymentIntents;
begin
  Result := FParent;
end;

constructor TSerializableAdditionalInfo.Create(Parent: iSerializablePaymentIntents);
begin
  FParent := Parent;
end;

destructor TSerializableAdditionalInfo.Destroy;
begin

  inherited;
end;

function TSerializableAdditionalInfo.ExternalReference(
  Value: String): iSerializableAdditionalInfo;
begin
  Result := Self;
  FExternalReference := Value;
end;

function TSerializableAdditionalInfo.ExternalReference: String;
begin
  Result := FExternalReference;
end;

class function TSerializableAdditionalInfo.New(Parent: iSerializablePaymentIntents): iSerializableAdditionalInfo;
begin
  Result := Self.Create(Parent);
end;

function TSerializableAdditionalInfo.PrintOnTerminal(
  Value: Boolean): iSerializableAdditionalInfo;
begin
  Result := Self;
  FPrintOnTerminal := Value;
end;

function TSerializableAdditionalInfo.PrintOnTerminal: Boolean;
begin
  Result := FPrintOnTerminal;
end;

function TSerializableAdditionalInfo.TicketNumber(
  Value: String): iSerializableAdditionalInfo;
begin
  Result := Self;
  FTicketNumber := Value;
end;

function TSerializableAdditionalInfo.TicketNumber: String;
begin
  Result := FTicketNumber;
end;

end.
