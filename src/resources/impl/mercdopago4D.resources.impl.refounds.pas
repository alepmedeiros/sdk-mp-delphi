unit mercdopago4D.resources.impl.refounds;

interface

uses
  mercdopago4D.resources.interfaces,
  mercdopago4D.interfaces,
  mercdopago4D.serializable.chargebacks,
  mercdopago4D.serializable.refunds,
  mercdopago4D.http.interfaces;

type
  TRefounds = class(TInterfacedObject, iRefounds)
  private
    FConf: iConfiguration;
    FHttpCliente: iHttpClient;

    FChargeback: iReturns<TChargebacks>;
    FRefounds: iReturns<TSerializableRefunds>;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iRefounds;

    function GetChargeback(IdRefound: String): iRefounds;
    function CreateRefounds(IdPayment: String; Amount: Integer): iRefounds;
    function GetListRefounds(IdPayment: String): iRefounds;
    function GetRefoundsSpecific(IdPayment,IdRefound: String): iRefounds;
    function ReturnChargeback: iReturns<TChargebacks>;
    function ReturnRefounds: iReturns<TSerializableRefunds>;
  end;

implementation

uses
  System.SysUtils,
  mercdopago4D.resources.enums,
  mercdopago4D.resources.impl.returns,
  mercdopago4D.http.httpclient,
  mercdopago4D.serializable;

constructor TRefounds.Create(Conf: iConfiguration);
begin
  FConf := Conf;
  FHttpCliente := THttpClient.New;
end;

function TRefounds.CreateRefounds(IdPayment: String; Amount: Integer): iRefounds;
begin
  Result := Self;
  var lRefound := TSerializableRefunds.New;
  lRefound.Amount := amount;
  var lJson := TSerializable<TSerializableRefunds>.New(lRefound).ToJSON;
  FHttpCliente.BaseURL(Format(TResource.REEBOLSO_PAY.ToString,[IdPayment,'']))
    .Header('Content-Type', 'application/json').Bearer(FConf.AccessToken)
    .Body(lJson.ToString).Post;
end;

destructor TRefounds.Destroy;
begin

  inherited;
end;

function TRefounds.GetListRefounds(IdPayment: String): iRefounds;
begin
  Result := Self;
  FHttpCliente.BaseURL(Format(TResource.REEBOLSO_PAY.ToString,[IdPayment,'']))
    .Header('Content-Type', 'application/json').Bearer(FConf.AccessToken).Get
end;

function TRefounds.GetChargeback(IdRefound: String): iRefounds;
begin
  Result := Self;
  FHttpCliente.BaseURL(Format(TResource.REEMBOLSO.ToString,[IdRefound]))
    .Header('Content-Type', 'application/json').Bearer(FConf.AccessToken).Get;
end;

function TRefounds.GetRefoundsSpecific(IdPayment,IdRefound: String): iRefounds;
begin
  Result := Self;
  FHttpCliente.BaseURL(Format(TResource.REEBOLSO_PAY.ToString,[IdPayment,IdRefound]))
    .Header('Content-Type', 'application/json').Bearer(FConf.AccessToken).Get;
end;

class function TRefounds.New(Conf: iConfiguration): iRefounds;
begin
  Result := Self.Create(Conf);
end;

function TRefounds.ReturnChargeback: iReturns<TChargebacks>;
begin
//  if not Assigned(FChargeback) then
//  begin
    var lChargeback := TChargebacks.New;
    FChargeback := TReturns<TChargebacks>.New(lChargeback, FHttpCliente.Content);
//  end;
  Result := FChargeback;
end;

function TRefounds.ReturnRefounds: iReturns<TSerializableRefunds>;
begin
//  if not Assigned(FRefounds) then
//  begin
    var lRefounds := TSerializableRefunds.New;
    FRefounds := TReturns<TSerializableRefunds>.New(lRefounds, FHttpCliente.Content);
//  end;
  Result := FRefounds;
end;

end.
