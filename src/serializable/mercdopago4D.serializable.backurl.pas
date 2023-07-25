unit mercdopago4D.serializable.backurl;

interface

uses
  GBJSON.Attributes;

type
  TBackUrl = class
  private
    FSuccess: String;
    FPending: String;
    FFailure: String;
  public
    [JSONProp('success')]
    property Success: String read FSuccess write FSuccess;
    [JSONProp('pending')]
    property Pending: String read FPending write FPending;
    [JSONProp('failure')]
    property Failure: String read FFailure write FFailure;

    class function New: TBackUrl;
  end;

implementation

class function TBackUrl.New: TBackUrl;
begin
  Result := Self.Create;
end;

end.
