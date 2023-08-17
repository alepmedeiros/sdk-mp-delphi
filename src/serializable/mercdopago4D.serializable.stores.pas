unit mercdopago4D.serializable.stores;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.businesshours,
  mercdopago4D.serializable.location;

type
  TStores = class
  private
    FId: String;
    FName: String;
    FDateCreation: String;
    FBusinessHours: TBusinessHours;
    FLocation: TLocation;
    FExternalId: String;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('date_creation')]
    property DateCreation: String read FDateCreation write FDateCreation;
    [JSONProp('business_hours')]
    property BusinessHours: TBusinessHours read FBusinessHours write FBusinessHours;
    [JSONProp('location')]
    property Location: TLocation read FLocation write FLocation;
    [JSONProp('external_id')]
    property ExternalId: String read FExternalId write FExternalId;

    class function New: TStores;
  end;

implementation

constructor TStores.Create;
begin
  FBusinessHours:= TBusinessHours.New;
  FLocation:= TLocation.New;
end;

destructor TStores.Destroy;
begin
  FBusinessHours.DisposeOf;
  FLocation.DisposeOf;
  inherited;
end;

class function TStores.New: TStores;
begin
  Result := Self.Create;
end;

end.
