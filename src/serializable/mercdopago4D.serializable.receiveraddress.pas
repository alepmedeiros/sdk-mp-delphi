unit mercdopago4D.serializable.receiveraddress;

interface

uses
  GBJSON.Attributes;

type
  TReceiverAddress = class
  private
    FZipCode: String;
    FStateName: String;
    FCityName: String;
    FStreetName: String;
    FStreetNumber: Integer;
    FFloor: String;
    FApartment: String;
  public
    [JSONProp('zip_code')]
    property ZipCode: String read FZipCode write FZipCode;
    [JSONProp('state_name')]
    property StateName: String read FStateName write FStateName;
    [JSONProp('city_name')]
    property CityName: String read FCityName write FCityName;
    [JSONProp('street_name')]
    property StreetName: String read FStreetName write FStreetName;
    [JSONProp('street_number')]
    property StreetNumber: Integer read FStreetNumber write FStreetNumber;
    [JSONProp('floor')]
    property Floor: String read FFloor write FFloor;
    [JSONProp('apartment')]
    property Apartment: String read FApartment write FApartment;

    class function New: TReceiverAddress;
  end;

implementation

class function TReceiverAddress.New: TReceiverAddress;
begin
  Result := Self.Create;
end;

end.
