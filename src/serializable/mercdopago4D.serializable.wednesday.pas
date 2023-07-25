unit mercdopago4D.serializable.wednesday;

interface

uses
  GBJSON.Attributes;

type
  TWednesday = class
  private
    FOpen: String;
    FClose: String;
  public
    [JSONProp('open')]
    property Open: String read FOpen write FOpen;
    [JSONProp('close')]
    property Close: String read FClose write FClose;

    class function New: TWednesday;
  end;

implementation

class function TWednesday.New: TWednesday;
begin
  Result := Self.Create;
end;

end.

