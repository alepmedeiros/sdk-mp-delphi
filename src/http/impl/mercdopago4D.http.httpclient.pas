unit mercdopago4D.http.httpclient;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  RESTRequest4D,
  mercdopago4D.http.interfaces;

type
  THttpClient = class(TInterfacedObject, iHttpClient)
  private
    FReq: iRequest;
    FResp: iResponse;

    FDataSet: TFDMemTable;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iHttpClient;
    function BaseURL(Value: String): iHttpClient;
    function Get: iHttpClient; overload;
    function Post: iHttpClient;
    function Put: iHttpClient;
    function Patch: iHttpClient;
    function Delete: iHttpClient;
    function Body(const Value: String): iHttpClient;
    function Params(aParams: String; Value: String): iHttpClient;
    function URLSeguiments(Field, Value: String): iHttpClient;
    function Resource(const Value: String): iHttpClient;
    function Bearer(Value: String): iHttpClient;
    function Header(aKey: String; Value: String): iHttpClient;
    function Accept(Value: String): iHttpClient;
    function Content: String; overload;
    function DataSet: TDataSet;
  end;

implementation

function THttpClient.Accept(Value: String): iHttpClient;
begin
  Result := Self;
  FReq.Accept(Value);
end;

function THttpClient.BaseURL(Value: String): iHttpClient;
begin
  REsult := Self;
  FReq.BaseURL(Value);
end;

function THttpClient.Bearer(Value: String): iHttpClient;
begin
  Result := Self;
  FReq.TokenBearer(Value);
end;

function THttpClient.Body(const Value: String): iHttpClient;
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
  FReq := TRequest.New;
  FDataSet := TFDMemTable.Create(nil);
end;

function THttpClient.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

function THttpClient.Delete: iHttpClient;
begin
  Result := Self;
  FResp := FReq.Delete;
end;

destructor THttpClient.Destroy;
begin
  FDataSet.DisposeOf;
  inherited;
end;

function THttpClient.Get: iHttpClient;
begin
  Result := Self;
  FResp := FReq.Accept('application/json').Get;
end;

function THttpClient.Header(aKey, Value: String): iHttpClient;
begin
  Result := Self;
  FReq.AddHeader(aKey, Value);
end;

class function THttpClient.New: iHttpClient;
begin
  Result := Self.Create;
end;

function THttpClient.Params(aParams, Value: String): iHttpClient;
begin
  Result := Self;
  FReq.AddParam(aParams, Value);
end;

function THttpClient.Patch: iHttpClient;
begin
  Result := Self;
  FResp := FReq.ContentType('application/json').Patch;
end;

function THttpClient.Post: iHttpClient;
begin
  Result := Self;
  FResp := FReq.ContentType('application/json').Post;
end;

function THttpClient.Put: iHttpClient;
begin
  Result := Self;
  FResp := FReq.Put;
end;

function THttpClient.Resource(const Value: String): iHttpClient;
begin
  Result := Self;
  FReq.Resource(Value);
end;

function THttpClient.URLSeguiments(Field, Value: String): iHttpClient;
begin
  REsult := Self;
  FReq.AddUrlSegment(Field,Value);
end;

end.