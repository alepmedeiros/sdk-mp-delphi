unit mercdopago4D.serializable.source;

interface

uses
  GBJSON.Attributes;

type
  TSource = class
  private
    FName: String;
    FId: String;
    FType: String;
  public
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('type')]
    property &Type: String read FType write FType;

    class function New: TSource;
  end;

implementation

class function TSource.New: TSource;
begin
  Result := Self.Create;
end;

end.
