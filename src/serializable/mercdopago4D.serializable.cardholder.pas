unit mercdopago4D.serializable.cardholder;

interface

uses
  GBJSON.Attributes,
  mercdopago4D.serializable.identification;

type
  TCardHolder = class
  private
    FName: String;
    FIdentification: TIdentification;
  public
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('identification')]
    property identification: TIdentification read FIdentification
      write FIdentification;

    class function New: TCardHolder;
  end;

implementation

class function TCardHolder.New: TCardHolder;
begin
  Result := Self.Create;
end;

end.
