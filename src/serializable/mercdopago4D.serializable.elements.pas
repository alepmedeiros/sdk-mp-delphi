unit mercdopago4D.serializable.elements;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.merchantorders;

type
  TElements = class
  private
    FElements: TObjectList<TMerchantOrders>;
    FNextOffset: Integer;
    FTotal: Integer;
  public
    [JSONProp('elements')]
    property Elements: TObjectList<TMerchantOrders> read FElements write FElements;
    [JSONProp('next_offset')]
    property NextOffset: Integer read FNextOffset write FNextOffset;
    [JSONProp('total')]
    property Total: Integer read FTotal write FTotal;

    class function New: TElements;
  end;

implementation

class function TElements.New: TElements;
begin
  Result := Self.Create;
end;

end.
