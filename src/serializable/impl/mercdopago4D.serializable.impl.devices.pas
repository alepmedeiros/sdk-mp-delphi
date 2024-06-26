unit mercdopago4D.serializable.impl.devices;

interface

uses
  mercdopago4D.serializable.interfaces;

type
  TSerializableDevices = class(TInterfacedObject, iSerializableDevices)
  private
    FId: String;
    FOperatingMode: String;
  public
    class function New: iSerializableDevices;

    function Id(Value: String): iSerializableDevices; overload;
    function Id: String; overload;
    function OperatingMode(Value: String): iSerializableDevices; overload;
    function OperatingMode: String; overload;
  end;

implementation

function TSerializableDevices.Id(Value: String): iSerializableDevices;
begin
  Result := Self;
end;

function TSerializableDevices.Id: String;
begin
  Result := FId;
end;

class function TSerializableDevices.New: iSerializableDevices;
begin
  Result := Self.Create;
end;

function TSerializableDevices.OperatingMode(Value: String): iSerializableDevices;
begin
  Result := Self;
  FOperatingMode := Value;
end;

function TSerializableDevices.OperatingMode: String;
begin
  Result := FOperatingMode;
end;

end.
