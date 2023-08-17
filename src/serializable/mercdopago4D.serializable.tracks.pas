unit mercdopago4D.serializable.tracks;

interface

uses
  GBJSON.Attributes;

type
  TTracks = class
  private
    FType: String;
    FValues: String;
  public
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('values')]
    property Values: String read FValues write FValues;

    class function New: TTracks;
  end;

implementation

class function TTracks.New: TTracks;
begin
  Result := Self.Create;
end;

end.
