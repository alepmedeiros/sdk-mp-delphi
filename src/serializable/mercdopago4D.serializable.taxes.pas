unit mercdopago4D.serializable.taxes;

interface

uses
  GBJSON.Attributes;

type
  TTaxes = class
  private
    FValue: Integer;
    FType: String;
  public
    [JSONProp('value')]
    property Value: Integer read FValue write FValue;
    [JSONProp('type')]
    property &Type: String read FType write FType;

    class function New: TTaxes;
  end;

implementation

class function TTaxes.New: TTaxes;
begin
  Result := Self.Create;
end;

end.
