unit mercdopago4D.serializable.additionalinfo;

interface

uses
  System.Generics.Collections,
  mercdopago4D.serializable.items,
  GBJSON.Attributes, mercdopago4D.serializable.payers,
  mercdopago4D.serializable.shipments;

type
  TAdditionalInfo = class
  private
    FItems: TObjectList<TItems>;
    FIpAddress: String;
    FPayer: TPayers;
    FShipments: TShipments;
    FExternalReference: String;
    FPrintOnTerminal: Boolean;
  public
    [JSONProp('items')]
    property Items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('ip_address')]
    property IpAddress: String read FIpAddress write FIpAddress;
    [JSONProp('payer')]
    property Payer: TPayers read FPayer write FPayer;
    [JSONProp('shipments')]
    property Shipments: TShipments read FShipments write FShipments;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('print_on_terminal')]
    property PrintOnTerminal: Boolean read FPrintOnTerminal write FPrintOnTerminal;

    constructor Create;
    destructor Destroy; override;
    class function New: TAdditionalInfo;
  end;

implementation

{ TAdditionalInfo }

constructor TAdditionalInfo.Create;
begin
  FItems:= TObjectList<TItems>.Create;
  FPayer:= TPayers.New;
  FShipments:= TShipments.New;
end;

destructor TAdditionalInfo.Destroy;
begin

  inherited;
end;

class function TAdditionalInfo.New: TAdditionalInfo;
begin
  Result := Self.Create;
end;

end.
