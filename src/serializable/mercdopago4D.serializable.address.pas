unit mercdopago4D.serializable.address;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.city;

type
  TAddress = class
  private
    FId: String;
    FZipCode: String;
    FStreetName: String;
    FStreetNumber: Integer;
    FCity: TObjectList<TCity>;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('zip_code')]
    property ZipCode: String read FZipCode write FZipCode;
    [JSONProp('street_name')]
    property StreetName: String read FStreetName write FStreetName;
    [JSONProp('street_number')]
    property StreetNumber: Integer read FStreetNumber write FStreetNumber;
    [JSONProp('city')]
    property City: TObjectList<TCity> read FCity write FCity;

    class function New: TAddress;
  end;

implementation

constructor TAddress.Create;
begin
  FCity:= TObjectList<TCity>.Create;
end;

destructor TAddress.Destroy;
begin
  FCity.DisposeOf;
  inherited;
end;

class function TAddress.New: TAddress;
begin
  Result := Self.Create;
end;

end.
