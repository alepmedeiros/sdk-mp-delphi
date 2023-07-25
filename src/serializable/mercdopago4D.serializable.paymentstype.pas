unit mercdopago4D.serializable.paymentstype;

interface

uses
  GBJSON.Attributes;

type
  TPaymentTypes = class
  private
    FId: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;

    class function New: TPaymentTypes;
  end;

implementation

class function TPaymentTypes.New: TPaymentTypes;
begin
  Result := Self.Create;
end;

end.
