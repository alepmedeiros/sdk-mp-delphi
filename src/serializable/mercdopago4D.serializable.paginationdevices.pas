unit mercdopago4D.serializable.paginationdevices;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.devices,
  mercdopago4D.serializable.pagging;

type
  TPaginationDevices = class
  private
    FDevices: TObjectList<TDevicesSerialize>;
    FPaging: TPaging;
  public
    [JSONProp('devices')]
    property Devices: TObjectList<TDevicesSerialize> read FDevices write FDevices;
    [JSONProp('paging')]
    property Paging: TPaging read FPaging write FPaging;

    constructor Create;
    destructor Destroy; override;
    class function New: TPaginationDevices;
  end;

implementation

constructor TPaginationDevices.Create;
begin
  FDevices:= TObjectList<TDevicesSerialize>.Create;
  FPaging:= TPaging.New;
end;

destructor TPaginationDevices.Destroy;
begin
  FDevices.DisposeOf;
  FPaging.DisposeOf;
  inherited;
end;

class function TPaginationDevices.New: TPaginationDevices;
begin
  Result := Self.Create;
end;

end.
