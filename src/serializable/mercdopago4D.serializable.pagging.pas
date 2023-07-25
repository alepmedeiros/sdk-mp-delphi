unit mercdopago4D.serializable.pagging;

interface

uses
  GBJSON.Attributes;

type
  TPaging = class
  private
    FLimit: Integer;
    FOffset: Integer;
    FTotal: Integer;
  public
    [JSONProp('limit')]
    property Limit: Integer read FLimit write FLimit;
    [JSONProp('offset')]
    property Offset: Integer read FOffset write FOffset;
    [JSONProp('total')]
    property Total: Integer read FTotal write FTotal;

    class function New: TPaging;
  end;

implementation

class function TPaging.New: TPaging;
begin
  Result := Self.Create;
end;

end.
