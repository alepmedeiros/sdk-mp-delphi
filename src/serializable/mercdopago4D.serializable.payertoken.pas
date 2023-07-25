unit mercdopago4D.serializable.payertoken;

interface

uses
  GBJSON.Attributes;

type
  TPayerToken = class
  private
    FCode: String;
    FPayerToken: String;
  public
    [JSONProp('code')]
    property Code: String read FCode write FCode;
    [JSONProp('payer_token')]
    property PayerToken: String read FPayerToken write FPayerToken;

    class function New: TPayerToken;
  end;

implementation

class function TPayerToken.New: TPayerToken;
begin
  Result := Self.Create;
end;

end.
