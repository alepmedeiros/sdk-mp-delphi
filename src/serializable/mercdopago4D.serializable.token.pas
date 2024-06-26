unit mercdopago4D.serializable.token;

interface

uses
  GBJSON.Attributes;

type
  TTokenSerialize = class
  private
    FClientId: String;
    FClientSecret: String;
    FCode: String;
    FGrantType: String;
    FRedirectUri: String;
    FRefreshToken: String;
    FTestToken: String;
    FAccessToken: String;
    FTokenType: String;
    FExpiresIn: Integer;
    FScope: String;
    FUserId: Integer;
    FPublicKey: String;
    FLiveMode: Boolean;
  public
    [JSONProp('client_id')]
    property ClientId: String read FClientId write FClientId;
    [JSONProp('client_secret')]
    property ClientSecret: String read FClientSecret write FClientSecret;
    [JSONProp('code')]
    property Code: String read FCode write FCode;
    [JSONProp('grant_type')]
    property GrantType: String read FGrantType write FGrantType;
    [JSONProp('redirect_uri')]
    property RedirectUri: String read FRedirectUri write FRedirectUri;
    [JSONProp('refresh_token')]
    property RefreshToken: String read FRefreshToken write FRefreshToken;
    [JSONProp('test_token')]
    property TestToken: String read FTestToken write FTestToken;
    [JSONProp('access_token')]
    property AccessToken: String read FAccessToken write FAccessToken;
    [JSONProp('token_type')]
    property TokenType: String read FTokenType write FTokenType;
    [JSONProp('expires_in')]
    property ExpiresIn: Integer read FExpiresIn write FExpiresIn;
    [JSONProp('scope')]
    property Scope: String read FScope write FScope;
    [JSONProp('user_id')]
    property UserId: Integer read FUserId write FUserId;
    [JSONProp('public_key')]
    property PublicKey: String read FPublicKey write FPublicKey;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;

    class function New: TTokenSerialize;
  end;

implementation

class function TTokenSerialize.New: TTokenSerialize;
begin
  Result := Self.Create;
end;

end.
