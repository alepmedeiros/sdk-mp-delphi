unit sdkmpdelphi.core.http.impl.httpclient;

interface

uses
  RestRequest4D,
  sdkmpdelphi.core.http.interfaces,
  sdkmpdelphi.utils.enum;

type
  THttpClient = class(TInterfacedObject, iHttpClient)
  private
    FReq: iRequest;
    FResp: iResponse;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iHttpClient;
    function Token(Value: String): iHttpClient;
    function Get(Resource: String): iHttpClient;
    function Post(Resource: String): iHttpClient;
    function Put(Resource: String): iHttpClient;
    function Delete(Resource: String): iHttpClient;
    function Params(aKey, aValue: String): iHttpClient;
    function Body(Value: String): iHttpClient;
    function Content: String;
  end;

implementation

{ TMyClass }

function THttpClient.Body(Value: String): iHttpClient;
begin
  Result := Self;
  FReq.AddBody(Value);
end;

function THttpClient.Content: String;
begin
  Result := FResp.Content;
end;

constructor THttpClient.Create;
begin
  FReq.BaseURL(MPV1.ToString)
end;

function THttpClient.Delete(Resource: String): iHttpClient;
begin
  Result := Self;
  FReq.Delete;
end;

destructor THttpClient.Destroy;
begin

  inherited;
end;

function THttpClient.Get(Resource: String): iHttpClient;
begin
  Result := Self;
  FResp := FReq.Resource(Resource).Get;
end;

class function THttpClient.New: iHttpClient;
begin
  Result := Self.Create;
end;

function THttpClient.Params(aKey, aValue: String): iHttpClient;
begin
  Result := Self;
  FReq.AddUrlSegment(aKey,aValue);
end;

function THttpClient.Post(Resource: String): iHttpClient;
begin
  Result := Self;
  FResp := FReq.Resource(Resource).AddHeader(CONTENT_TYPE.ToString, APPLICATION_JSON.ToString).Post;
end;

function THttpClient.Put(Resource: String): iHttpClient;
begin
  Result := Self;
  FResp := FReq.Resource(Resource).AddHeader(CONTENT_TYPE.ToString, APPLICATION_JSON.ToString).Put;
end;

function THttpClient.Token(Value: String): iHttpClient;
begin
  result := Self;
  FReq.TokenBearer(Value);
end;

end.
