unit mercdopago4D.serializable.BusinessInfo;

interface

uses
  GBJSON.Attributes;

type
  TBusinessInfo = class
  private
    FUnit: String;
    FSubUnit: String;
  public
    [JSONProp('unit')]
    property &Unit: String read FUnit write FUnit;
    [JSONProp('sub_unit')]
    property SubUnit: String read FSubUnit write FSubUnit;

    class function New: TBusinessInfo;
  end;

implementation

class function TBusinessInfo.New: TBusinessInfo;
begin
  Result := Self.Create;
end;

end.
