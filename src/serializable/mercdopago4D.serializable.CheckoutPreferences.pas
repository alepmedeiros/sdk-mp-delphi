unit mercdopago4D.serializable.CheckoutPreferences;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.element;

type
  TCheckoutPreferences = class
  private
    FElements: TObjectList<TElement>;
    FNextOffset: Integer;
    FTotal: Integer;
  public
    [JSONProp('elements')]
    property Elements: TObjectList<TElement> read FElements write FElements;
    [JSONProp('next_offset')]
    property NextOffset: Integer read FNextOffset write FNextOffset;
    [JSONProp('total')]
    property Total: Integer read FTotal write FTotal;

    class function New: TCheckoutPreferences;
  end;

implementation

class function TCheckoutPreferences.New: TCheckoutPreferences;
begin
  Result := Self.Create;
end;

end.
