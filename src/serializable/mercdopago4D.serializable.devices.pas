unit mercdopago4D.serializable.devices;

interface

uses
  GBJSON.Attributes;

type
  TDevicesSerialize = class
  private
    FId: String;
    FOperatingMode: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('operating_mode')]
    property OperatingMode: String read FOperatingMode write FOperatingMode;

    class function New: TDevicesSerialize;
  end;

implementation

class function TDevicesSerialize.New: TDevicesSerialize;
begin
  Result := Self.Create;
end;

end.