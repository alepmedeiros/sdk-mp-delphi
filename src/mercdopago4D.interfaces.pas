unit mercdopago4D.interfaces;

interface

uses
  mercdopago4D.resources.interfaces, mercdopago4D.serializable.interfaces;

type
  iConfiguration = interface
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

  iMercadoPago = interface
    function Cross: iMercadoPago;
    function PagamentosOnline: iMercadoPago;
    function CodigoQR: iMercadoPago;
    function Assinaturas: iMercadoPago;
    function WalletConnect: iMercadoPago;
    function PointPro: iMercadoPago;
  end;

  iMP4D = interface
    function Configuration: iConfiguration;
    function Resources: iResources;
    function Serializable: iSerialize;
  end;

implementation

end.
