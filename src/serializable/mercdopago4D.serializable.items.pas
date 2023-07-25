unit mercdopago4D.serializable.items;

interface

uses
  GBJSON.Attributes;

type
  TItems = class
  private
    FId: String;
    FTitle: String;
    FDescription: String;
    FPictureUrl: String;
    FCategoryId: String;
    FQuantity: String;
    FUnitPrice: String;
    FCurrencyId: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('title')]
    property Title: String read FTitle write FTitle;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;
    [JSONProp('picture_url')]
    property PictureUrl: String read FPictureUrl write FPictureUrl;
    [JSONProp('category_id')]
    property CategoryId: String read FCategoryId write FCategoryId;
    [JSONProp('currency_id')]
    property CurrencyId: String read FCurrencyId write FCurrencyId;
    [JSONProp('quantity')]
    property Quantity: String read FQuantity write FQuantity;
    [JSONProp('unit_price')]
    property UnitPrice: String read FUnitPrice write FUnitPrice;

    class function New: TItems;
  end;

implementation

{ TItems }

class function TItems.New: TItems;
begin
  Result := Self.Create;
end;

end.
