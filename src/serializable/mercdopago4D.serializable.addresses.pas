unit mercdopago4D.serializable.addresses;

interface

uses
  GBJSON.Attributes;

type
  TAddresses = class
  private
  public
    class function New: TAddresses;
  end;

implementation

class function TAddresses.New: TAddresses;
begin
  Result := Self.Create;
end;

end.
