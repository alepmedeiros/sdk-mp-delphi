unit mercdopago4D.serializable.issuer;

interface

uses
  GBJSON.Attributes;

type
  TIssuer = class
  private
    FID: Integer;
    FName: String;
  public
    [JSONProp('id')]
    property ID: Integer read FID write FID;
    [JSONProp('name')]
    property Name: String read FName write FName;

    class function New: TIssuer;
  end;

implementation

class function TIssuer.New: TIssuer;
begin
  Result := Self.Create;
end;

end.
