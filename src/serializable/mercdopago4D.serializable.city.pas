unit mercdopago4D.serializable.city;

interface

uses
  GBJSON.Attributes;

type
  TCity = class
  private
    FName: String;
  public
    [JSONProp('name')]
    property Name: String read FName write FName;

    class function New: TCity;
  end;

implementation

class function TCity.New: TCity;
begin
  Result := Self.Create;
end;

end.
