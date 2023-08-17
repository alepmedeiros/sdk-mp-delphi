unit mercdopago4D.resources.impl.oauth;

interface

uses
  Data.DB,
  System.Generics.Collections,
  mercdopago4D.resources.interfaces,
  mercdopago4D.http.interfaces, mercdopago4D.http.httpclient,
  mercdopago4D.resources.enums, mercdopago4D.interfaces,
  mercdopago4D.serializable.token, mercdopago4D.serializable.interfaces;

type
  TOAuth = class(TInterfacedObject, iOAuth)
  private
    FConf: iConfiguration;

    FHttpCliente: iHttpClient;
    FToke: TTokenSerialize;
    FReturn: iReturns<TTokenSerialize>;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iOAuth;
    function GenerateToken: iOAuth;
    function RefreshToken: iOAuth;

    function Returns: iReturns<TTokenSerialize>;
  end;

implementation

uses
  System.JSON,
  System.SysUtils,
  mercdopago4D.serializable, mercdopago4D.resources.impl.returns;

constructor TOAuth.Create(Conf: iConfiguration);
begin
  FConf := Conf;
  FHttpCliente := THttpClient.New;
  FToke:= TTokenSerialize.New;
end;

destructor TOAuth.Destroy;
begin

  inherited;
end;

function TOAuth.GenerateToken: iOAuth;
begin
  Result := Self;

  FHttpCliente
    .BaseURL(TResource.OAUTH.ToString)
    .Header('Content-Type','application/x-www-form-urlencoded')
    .Params('grant_type','authorization_code')
    .Params('client_secret', FConf.ClientSecret)
    .Params('client_id', FConf.ClientId)
    .Params('code', FConf.Code)
    .Params('redirect_uri', FConf.RedirectURI)
    .Post;
end;

class function TOAuth.New(Conf: iConfiguration): iOAuth;
begin
  Result := Self.Create(Conf);
end;

function TOAuth.RefreshToken: iOAuth;
begin
  Result := Self;

  FHttpCliente
    .Resource(TResource.OAUTH.ToString)
    .Header('Content-Type','application/x-www-form-urlencoded')
    .Params('grant_type','refresh_token')
    .Params('client_secret', FConf.ClientSecret)
    .Params('client_id', FConf.ClientId)
    .Params('refresh_token', FConf.RefreshToken)
    .Post;
end;

function TOAuth.Returns: iReturns<TTokenSerialize>;
begin
  if not Assigned(FReturn) then
    FReturn := TReturns<TTokenSerialize>.New(FToke, FHttpCliente.Content);
  Result := FReturn
end;

end.
