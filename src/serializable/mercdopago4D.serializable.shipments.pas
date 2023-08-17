unit mercdopago4D.serializable.shipments;

interface

uses
  GBJSON.Attributes,
  mercdopago4D.serializable.receiveraddress;

type
  TShipments = class
  private
    FReceiverAddress: TReceiverAddress;
    FWidth: Integer;
    FHeight: Integer;
  public
    [JSONProp('receiver_address')]
    property receiveraddress: TReceiverAddress read FReceiverAddress
      write FReceiverAddress;
    [JSONProp('width')]
    property Width: Integer read FWidth write FWidth;
    [JSONProp('height')]
    property Height: Integer read FHeight write FHeight;

    class function New: TShipments;
  end;

implementation

class function TShipments.New: TShipments;
begin
  Result := Self.Create;
end;

end.
