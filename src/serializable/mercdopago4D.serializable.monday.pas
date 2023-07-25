unit mercdopago4D.serializable.monday;

interface

uses
  GBJSON.Attributes;

type
  TMonday = class
  private
    FOpen: String;
    FClose: String;
  public
    [JSONProp('open')]
    property Open: String read FOpen write FOpen;
    [JSONProp('close')]
    property Close: String read FClose write FClose;

    class function New: TMonday;
  end;

implementation

class function TMonday.New: TMonday;
begin
  Result := Self.Create;
end;

end.
