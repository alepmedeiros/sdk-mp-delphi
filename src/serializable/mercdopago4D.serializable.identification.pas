unit mercdopago4D.serializable.identification;

interface

uses
  GBJSON.Attributes;

type
  TIdentification = class
  private
    FNumber: String;
    FType: String;
  public
    [JSONProp('number')]
    property Number: String read FNumber write FNumber;
    [JSONProp('type')]
    property &Type: String read FType write FType;

    class function New: TIdentification;
  end;

implementation

{ TIdentification }

class function TIdentification.New: TIdentification;
begin
  Result := Self.Create;
end;

end.
