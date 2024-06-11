unit mercdopago4D.resources.impl.resources;

interface

uses
  mercdopago4D.resources.interfaces,
  mercdopago4D.interfaces;

type
  TResources = class(TInterfacedObject, iResources)
  private
    FConf: iConfiguration;

    FOAuth: iOAuth;
    FDevices: iDevices;
    FPaymentsPoint: iPaymentsPoint;
    FRefounds: iRefounds;
    FPayment: iPayments;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iResources;

    function oauth: iOAuth;
    function devices: iDevices;
    function Payments: iPaymentsPoint;
    function Refounds: iRefounds;
    function Payment: iPayments;
  end;

implementation

uses
  mercdopago4D.resources.impl.oauth,
  mercdopago4D.resources.impl.devices,
  mercdopago4D.resources.impl.paymentspoint,
  mercdopago4D.resources.impl.refounds,
  mercdopago4D.resources.impl.payments;

constructor TResources.Create(Conf: iConfiguration);
begin
  FConf:= Conf;
end;

destructor TResources.Destroy;
begin

  inherited;
end;

function TResources.devices: iDevices;
begin
  if not Assigned(FDevices) then
    FDevices := TDevices.New(FConf);
  Result := FDevices
end;

class function TResources.New(Conf: iConfiguration): iResources;
begin
  Result := Self.Create(Conf);
end;

function TResources.oauth: iOAuth;
begin
  if not Assigned(FOAuth) then
    FOAuth := TOAuth.New(FConf);
  Result := FOAuth;
end;

function TResources.Payment: iPayments;
begin
  if not Assigned(FPayment) then
    FPayment := TPayments.New(FConf);
  Result := FPayment;
end;

function TResources.Payments: iPaymentsPoint;
begin
  if not Assigned(FPaymentsPoint) then
    FPaymentsPoint := TPaymentsPoint.New(FConf);
  Result := FPaymentsPoint;
end;

function TResources.Refounds: iRefounds;
begin
  if not Assigned(FRefounds) then
    FRefounds := TRefounds.New(FConf);
  Result := FRefounds;
end;

end.
