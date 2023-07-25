unit mercdopago4D.serializable.posorders;

interface

uses
  system.Generics.Collections,
  GBJSON.Attributes, mercdopago4D.serializable.cashout,
  mercdopago4D.serializable.items, mercdopago4D.serializable.sponsor,
  mercdopago4D.serializable.taxes;

type
  TPosOrders = class
  private
    FUserId: String;
    FExternalStoreId: String;
    FExternalPosId: String;
    FCashout: TCashout;
    FDescription: String;
    FExpirationDate: String;
    FExternalReference: String;
    FItems: TObjectList<TItems>;
    FNotificationUrl: String;
    FSponsor: TSponsor;
    FTaxes: TObjectList<TTaxes>;
    FTitle: String;
    FTotalAmount: Integer;
  public
    [JSONProp('user_id')]
    property UserId: String read FUserId write FUserId;
    [JSONProp('external_store_id')]
    property ExternalStoreId: String read FExternalStoreId write FExternalStoreId;
    [JSONProp('external_pos_id')]
    property ExternalPosId: String read FExternalPosId write FExternalPosId;
    [JSONProp('cash_out')]
    property Cashout: TCashout read FCashout write FCashout;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;
    [JSONProp('expiration_date')]
    property ExpirationDate: String read FExpirationDate write FExpirationDate;
    [JSONProp('external_reference')]
    property ExternalReference: String read FExternalReference write FExternalReference;
    [JSONProp('items')]
    property Items: TObjectList<TItems> read FItems write FItems;
    [JSONProp('notification_url')]
    property NotificationUrl: String read FNotificationUrl write FNotificationUrl;
    [JSONProp('sponsor')]
    property Sponsor: TSponsor read FSponsor write FSponsor;
    [JSONProp('taxes')]
    property Taxes: TObjectList<TTaxes> read FTaxes write FTaxes;
    [JSONProp('title')]
    property Title: String read FTitle write FTitle;
    [JSONProp('total_amount')]
    property TotalAmount: Integer read FTotalAmount write FTotalAmount;

    class function New: TPosOrders;
  end;

implementation

class function TPosOrders.New: TPosOrders;
begin
  Result := Self.Create;
end;

end.
