unit mercdopago4D.core.configuration;

interface

uses
  mercdopago4D.interfaces;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  private
    FClientId: String;
    FClientSecret: String;
    FCode: String;
    FGrantType: String;
    FRedirectURI: String;
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
    class function New: iConfiguration;
    function ClientId(Value: String): iConfiguration; overload;
    function ClientId: String; overload;
    function ClientSecret(Value: String): iConfiguration; overload;
    function ClientSecret: String; overload;
    function Code(Value: String): iConfiguration; overload;
    function Code: String; overload;
    function GrantType(Value: String): iConfiguration; overload;
    function GrantType: String; overload;
    function RedirectURI(Value: String): iConfiguration; overload;
    function RedirectURI: String; overload;
    function RefreshToken(Value: String): iConfiguration; overload;
    function RefreshToken: String; overload;
    function TestToken(Value: String): iConfiguration; overload;
    function TestToken: String; overload;
    function AccessToken(Value: String): iConfiguration; overload;
    function AccessToken: String; overload;
    function TokenType(Value: String): iConfiguration; overload;
    function TokenType: String; overload;
    function ExpiresIn(Value: Integer): iConfiguration; overload;
    function ExpiresIn: Integer; overload;
    function Scope(Value: String): iConfiguration; overload;
    function Scope: String; overload;
    function UserId(Value: Integer): iConfiguration; overload;
    function UserId: Integer; overload;
    function PublicKey(Value: String): iConfiguration; overload;
    function PublicKey: String; overload;
    function LiveMode(Value: Boolean): iConfiguration; overload;
    function LiveMode: Boolean; overload;
  end;

implementation

uses
  System.DateUtils;

function TConfiguration.ClientId(Value: String): iConfiguration;
begin
  Result := Self;
  FClientId := Value;
end;

function TConfiguration.AccessToken: String;
begin
  Result := FAccessToken;
end;

function TConfiguration.AccessToken(Value: String): iConfiguration;
begin
  Result := Self;
  FAccessToken := Value;
end;

function TConfiguration.ClientId: String;
begin
  Result := FClientId;
end;

function TConfiguration.ClientSecret: String;
begin
  Result := FClientSecret;
end;

function TConfiguration.ClientSecret(Value: String): iConfiguration;
begin
  Result := Self;
  FClientSecret := Value;
end;

function TConfiguration.Code(Value: String): iConfiguration;
begin
  Result := Self;
  FCode := Value;
end;

function TConfiguration.Code: String;
begin
  Result := FCode;
end;

function TConfiguration.ExpiresIn: Integer;
begin
  Result := FExpiresIn;
end;

function TConfiguration.ExpiresIn(Value: Integer): iConfiguration;
begin
  Result := Self;
  FExpiresIn := Value;
end;

function TConfiguration.GrantType(Value: String): iConfiguration;
begin
  Result := Self;
  FGrantType := Value;
end;

function TConfiguration.GrantType: String;
begin
  Result := FGrantType;
end;

function TConfiguration.LiveMode(Value: Boolean): iConfiguration;
begin
  Result := Self;
  FLiveMode := Value;
end;

function TConfiguration.LiveMode: Boolean;
begin
  Result := FLiveMode;
end;

class function TConfiguration.New: iConfiguration;
begin
  Result := Self.Create;
end;

function TConfiguration.PublicKey: String;
begin
  Result := FPublicKey;
end;

function TConfiguration.PublicKey(Value: String): iConfiguration;
begin
  Result := Self;
  FPublicKey := Value;
end;

function TConfiguration.RedirectURI: String;
begin
  Result := FRedirectURI;
end;

function TConfiguration.RedirectURI(Value: String): iConfiguration;
begin
  Result := Self;
  FRedirectURI := Value;
end;

function TConfiguration.RefreshToken(Value: String): iConfiguration;
begin
  Result := Self;
  FRefreshToken := Value;
end;

function TConfiguration.RefreshToken: String;
begin
  Result := FRefreshToken;
end;

function TConfiguration.Scope: String;
begin
  Result := FScope;
end;

function TConfiguration.Scope(Value: String): iConfiguration;
begin
  Result := Self;
  FScope := Value;
end;

function TConfiguration.TestToken(Value: String): iConfiguration;
begin
  Result := Self;
  FTestToken := Value;
end;

function TConfiguration.TestToken: String;
begin
  Result := FTestToken;
end;

function TConfiguration.TokenType(Value: String): iConfiguration;
begin
  Result := Self;
  FTokenType := Value;
end;

function TConfiguration.TokenType: String;
begin
  Result := FTokenType;
end;

function TConfiguration.UserId: Integer;
begin
  Result := FUserId;
end;

function TConfiguration.UserId(Value: Integer): iConfiguration;
begin
  Result := Self;
  FUserId := Value;
end;

end.
