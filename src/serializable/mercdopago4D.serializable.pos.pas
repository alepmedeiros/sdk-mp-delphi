unit mercdopago4D.serializable.pos;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.qr;

type
  TPos = class
  private
    FCategoty: Integer;
    FExternalId: String;
    FExternalStoreId: String;
    FFixedAmount: Boolean;
    FName: String;
    FStoreId: String;
    FUrl: String;
    FId: Integer;
    FQr: TQr;
    FStatus: String;
    FDateCreated: String;
  public
    [JSONProp('category')]
    property Categoty: Integer read FCategoty write FCategoty;
    [JSONProp('external_id')]
    property ExternalId: String read FExternalId write FExternalId;
    [JSONProp('external_store_id')]
    property ExternalStoreId: String read FExternalStoreId write FExternalStoreId;
    [JSONProp('fixed_amount')]
    property FixedAmount: Boolean read FFixedAmount write FFixedAmount;
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('store_id')]
    property StoreId: String read FStoreId write FStoreId;
    [JSONProp('url')]
    property Url: String read FUrl write FUrl;
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('qr')]
    property Qr: TQr read FQr write FQr;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;

    class function New: TPos;
  end;

implementation

class function TPos.New: TPos;
begin
  Result := Self.Create;
end;

end.
