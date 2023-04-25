unit sdkmpdelphi.core.http.interfaces;

interface

type
  iHttpClient = interface
    function Token(Value: String): iHttpClient;
    function Get(Resource: String):iHttpClient;
    function Post(Resource: String): iHttpClient;
    function Put(Resource: String): iHttpClient;
    function Delete(Resource: String): iHttpClient;
    function Params(aKey, aValue: String): iHttpClient;
    function Body(Value: String): iHttpClient;
    function Content: String;
  end;

implementation

end.
