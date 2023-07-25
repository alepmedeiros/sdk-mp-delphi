unit mercdopago4D.serializable.differentialpricing;

interface

uses
  GBJSON.Attributes;

type
  TDifferentialPricing = class
  private
    FId: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;

    class function New: TDifferentialPricing;
  end;

implementation

class function TDifferentialPricing.New: TDifferentialPricing;
begin
  Result := Self.Create;
end;

end.
