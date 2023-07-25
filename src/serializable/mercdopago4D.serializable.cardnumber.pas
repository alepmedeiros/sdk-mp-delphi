unit mercdopago4D.serializable.cardnumber;

interface

uses
  GBJSON.Attributes;

type
  TCardNumber = class
  private
    FLength: String;
    FValidation: String;
  public
    [JSONProp('length')]
    property Length: String read FLength write FLength;
    [JSONProp('validation')]
    property Validation: String read FValidation write FValidation;

    class function New: TCardNumber;
  end;

implementation

class function TCardNumber.New: TCardNumber;
begin
  Result := Self.Create;
end;

end.
