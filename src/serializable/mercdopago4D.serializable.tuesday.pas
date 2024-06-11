unit mercdopago4D.serializable.tuesday;

interface

uses
  GBJSON.Attributes;

type
  TTuesday = class
  private
    FOpen: String;
    FClose: String;
  public
    [JSONProp('open')]
    property Open: String read FOpen write FOpen;
    [JSONProp('close')]
    property Close: String read FClose write FClose;

    class function New: TTuesday;
  end;

implementation

class function TTuesday.New: TTuesday;
begin
  Result := Self.Create;
end;

end.

