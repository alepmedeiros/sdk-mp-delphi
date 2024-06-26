unit mercdopago4D.http.interfaces;

interface

uses
  Data.DB;

type
  iHttpClient = interface
    function BaseURL(Value: String): iHttpClient;
    function Get: iHttpClient;
    function Post: iHttpClient;
    function Put: iHttpClient;
    function Patch: iHttpClient;
    function Delete: iHttpClient;
    function Params(aParams: String; Value: String): iHttpClient;
    function URLSeguiments(Field, Value: String): iHttpClient;
    function Body(const Value: String): iHttpClient;
    function Resource(const Value: String): iHttpClient;
    function Bearer(Value: String): iHttpClient;
    function Header(aKey: String; Value: String): iHttpClient;
    function Accept(Value: String): iHttpClient;
    function Content: String; overload;
    function DataSet: TDataSet;
  end;

implementation

end.
