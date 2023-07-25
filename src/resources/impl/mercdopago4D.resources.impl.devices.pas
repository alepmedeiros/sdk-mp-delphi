unit mercdopago4D.resources.impl.devices;

interface

uses
  System.Generics.Collections,
  Data.DB,
  mercdopago4D.resources.interfaces,
  mercdopago4D.interfaces,
  mercdopago4D.http.interfaces,
  mercdopago4D.serializable.paginationdevices,
  mercdopago4D.resources.enums,
  mercdopago4D.serializable.devices;

type
  TDevices = class(TInterfacedObject, iDevices)
  private
    FConf: iConfiguration;
    FDevies: TPaginationDevices;
    FDevice: TDevicesSerialize;

    FReturn: iReturns<TPaginationDevices>;
    FRetDevices: iReturns<TDevicesSerialize>;

    FHttpCliente: iHttpClient;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iDevices;

    function GetDevices: iDevices;
    function AlterOperation(Value: TTipoDevices; IdTerminal: String): iDevices;

    function Returns: iReturns<TPaginationDevices>;
    function RetunrDevice: iReturns<TDevicesSerialize>;
  end;

implementation

uses
  System.SysUtils,
  System.JSON,
  mercdopago4D.http.httpclient,
  mercdopago4D.serializable,
  mercdopago4D.resources.impl.Returns;

function TDevices.AlterOperation(Value: TTipoDevices; IdTerminal: String)
  : iDevices;
begin
  Result := Self;
  var
  lDevice := TDevicesSerialize.New;
  try
    lDevice.OperatingMode := Value.ToString;
    var
    lJSON := TSerializable<TDevicesSerialize>.New(lDevice);
    FHttpCliente.BaseURL(Format(TResource.POINT.ToString, [IdTerminal]))
      .Bearer(FConf.AccessToken).Body(lJSON.ToJSON.ToString).Patch;
  finally
    lDevice.DisposeOf;
  end;
end;

constructor TDevices.Create(Conf: iConfiguration);
begin
  FConf := Conf;
  FHttpCliente := THttpClient.New;
  FDevies := TPaginationDevices.New;
end;

destructor TDevices.Destroy;
begin
  FDevies.DisposeOf;
  inherited;
end;

function TDevices.GetDevices: iDevices;
begin
  Result := Self;
  FHttpCliente.BaseURL(Format(TResource.POINT.ToString, ['']))
    .Header('Content-Type', 'application/json').Bearer(FConf.AccessToken).Get;
end;

class function TDevices.New(Conf: iConfiguration): iDevices;
begin
  Result := Self.Create(Conf);
end;

function TDevices.RetunrDevice: iReturns<TDevicesSerialize>;
begin
  if not Assigned(FRetDevices) then
    FRetDevices := TReturns<TDevicesSerialize>.New(FDevice, FHttpCliente.Content);
  Result := FRetDevices;
end;

function TDevices.Returns: iReturns<TPaginationDevices>;
begin
  if not Assigned(FReturn) then
    FReturn := TReturns<TPaginationDevices>.New(FDevies, FHttpCliente.Content);
  Result := FReturn;
end;

end.
