unit mercdopago4D.serializable.securitycode;

interface

uses
  GBJSON.Attributes;

type
  TSecurityCode = class
  private
    FMode: String;
    FLength: Integer;
    FCardLocation: String;
  public
    [JSONProp('mode')]
    property Mode: String read FMode write FMode;
    [JSONProp('length')]
    property &Length: Integer read FLength write FLength;
    [JSONProp('card_location')]
    property CardLocation: String read FCardLocation write FCardLocation;

    class function New: TSecurityCode;
  end;

implementation

class function TSecurityCode.New: TSecurityCode;
begin
  Result := Self.Create;
end;

end.
