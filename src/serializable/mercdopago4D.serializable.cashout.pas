unit mercdopago4D.serializable.cashout;

interface

uses
  GBJSON.Attributes;

type
  TCashout = class
  private
    FAmount: Integer;
  public
    [JSONProp('amount')]
    property Amount: Integer read FAmount write FAmount;

    class function New: TCashout;
  end;

implementation

class function TCashout.New: TCashout;
begin
  Result := Self.Create;
end;

end.
