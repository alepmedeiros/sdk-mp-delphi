unit mercdopago4D.serializable.impl.token;

interface

uses
  mercdopago4D.serializable.token,
  mercdopago4D.serializable,
  mercdopago4D.serializable.interfaces;

type
  TToken = class(TInterfacedObject, iToken)
  private
    FTokenSerialize: TTokenSerialize;
    FSerialize: iSerializable<TTokenSerialize>;

    constructor Create(JSON: String);
    destructor Destroy; override;
  public
    class function New(JSON: String): iToken;
    function ClientId: String;
    function ClientSecret: String;
    function Code: String;
    function GrantType: String;
    function RedirectUri: String;
    function RefreshToken: String;
    function TestToken: String;
    function AccessToken: String;
    function TokenType: String;
    function ExpiresIn: Integer;
    function Scope: String;
    function UserId: Integer;
    function PublicKey: String;
    function LiveMode: Boolean;
  end;

implementation

{ TMyClass }

function TToken.AccessToken: String;
begin
  Result := FTokenSerialize.AccessToken;
end;

function TToken.ClientId: String;
begin
  Result := FTokenSerialize.ClientId
end;

function TToken.ClientSecret: String;
begin
  Result := FTokenSerialize.ClientSecret
end;

function TToken.Code: String;
begin
  Result := FTokenSerialize.Code;
end;

constructor TToken.Create(JSON: String);
begin
  FTokenSerialize:= TTokenSerialize.New;
  FSerialize:= TSerializable<TTokenSerialize>.New(FTokenSerialize);
end;

destructor TToken.Destroy;
begin

  inherited;
end;

function TToken.ExpiresIn: Integer;
begin
  Result := FTokenSerialize.ExpiresIn;
end;

function TToken.GrantType: String;
begin
  Result := FTokenSerialize.GrantType;
end;

function TToken.LiveMode: Boolean;
begin
  Result := FTokenSerialize.LiveMode;
end;

class function TToken.New(JSON: String): iToken;
begin
  Result := Self.Create(JSON);
end;

function TToken.PublicKey: String;
begin
  Result := FTokenSerialize.PublicKey;
end;

function TToken.RedirectUri: String;
begin
  Result := FTokenSerialize.RedirectUri;
end;

function TToken.RefreshToken: String;
begin
  Result := FTokenSerialize.RefreshToken;
end;

function TToken.Scope: String;
begin
  Result := FTokenSerialize.Scope;
end;

function TToken.TestToken: String;
begin
  Result := FTokenSerialize.TestToken;
end;

function TToken.TokenType: String;
begin
  Result := FTokenSerialize.TokenType;
end;

function TToken.UserId: Integer;
begin
  Result := FTokenSerialize.UserId;
end;

end.
