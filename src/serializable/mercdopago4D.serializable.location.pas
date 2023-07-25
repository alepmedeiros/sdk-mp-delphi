unit mercdopago4D.serializable.location;

interface

uses
  GBJSON.Attributes;

type
  TLocation = class
  private
    FAddressLine: String;
    FReference: String;
    FLatitude: Integer;
    FLongitude: Integer;
  public
    [JSONProp('address_line')]
    property AddressLine: String read FAddressLine write FAddressLine;
    [JSONProp('reference')]
    property Reference: String read FReference write FReference;
    [JSONProp('latitude')]
    property Latitude: Integer read FLatitude write FLatitude;
    [JSONProp('longitude')]
    property Longitude: Integer read FLongitude write FLongitude;

    class function New: TLocation;
  end;

implementation

class function TLocation.New: TLocation;
begin
  Result := Self.Create;
end;

end.
