unit mercdopago4D.serializable.posqrs;

interface

uses
  GBJSON.Attributes;

type
  TPosQrs = class
  private
    FQrData: String;
  public
    [JSONProp('qr_data')]
    property QrData: String read FQrData write FQrData;

    class function New: TPosQrs;
  end;

implementation

class function TPosQrs.New: TPosQrs;
begin
  Result := Self.Create;
end;

end.
