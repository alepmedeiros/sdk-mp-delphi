unit mercdopago4D.serializable.phone;

interface

uses
  GBJSON.Attributes;

type
  TPhone = class
  private
    FAreaCode: String;
    FNumber: String;
    FExtension: String;
  public
    [JSONProp('area_code')]
    property AreaCode: String read FAreaCode write FAreaCode;
    [JSONProp('number')]
    property Number: String read FNumber write FNumber;
    [JSONProp('extension')]
    property Extension: String read FExtension write FExtension;

    class function New: TPhone;
  end;

implementation

{ TPhone }

class function TPhone.New: TPhone;
begin
  Result := Self.Create;
end;

end.
