unit mercdopago4D.serializable.customers;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.address,
  mercdopago4D.serializable.identification,
  mercdopago4D.serializable.phone,
  mercdopago4D.serializable.metadata,
  mercdopago4D.serializable.cards,
  mercdopago4D.serializable.addresses;

type
  TCustomers = class
  private
    FStatus: String;
    FAddress: TAddress;
    FDateRegistered: TDateTime;
    FDefaultAddress: String;
    FDefaultCard: String;
    FDescription: String;
    FEmail: String;
    FFirstName: String;
    FIdentification: TIdentification;
    FLastName: String;
    FPhone: TPhone;
    FId: String;
    FDateCrated: String;
    FDateLastUpdated: String;
    FMetadata: TMetadata;
    FCards: TObjectList<TCards>;
    FAddresses: TObjectList<TList<String>>;
    FLiveMode: Boolean;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('address')]
    property address: TAddress read FAddress write FAddress;
    [JSONProp('date_registered')]
    property DateRegistered: TDateTime read FDateRegistered
      write FDateRegistered;
    [JSONProp('date_created')]
    property DateCrated: String read FDateCrated write FDateCrated;
    [JSONProp('date_last_updated')]
    property DateLastUpdated: String read FDateLastUpdated write FDateLastUpdated;
    [JSONProp('default_address')]
    property DefaultAddress: String read FDefaultAddress write FDefaultAddress;
    [JSONProp('default_card')]
    property DefaultCard: String read FDefaultCard write FDefaultCard;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;
    [JSONProp('email')]
    property Email: String read FEmail write FEmail;
    [JSONProp('first_name')]
    property FirstName: String read FFirstName write FFirstName;
    [JSONProp('identification')]
    property identification: TIdentification read FIdentification
      write FIdentification;
    [JSONProp('last_name')]
    property LastName: String read FLastName write FLastName;
    [JSONProp('phone')]
    property Phone: TPhone read FPhone write FPhone;
    [JSONProp('metadata')]
    property Metadata: TMetadata read FMetadata write FMetadata;
    [JSONProp('cards')]
    property Cards: TObjectList<TCards> read FCards write FCards;
    [JSONProp('addresses')]
    property Addresses: TObjectList<TList<String>> read FAddresses write FAddresses;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;

    class function New: TCustomers;
  end;

implementation

constructor TCustomers.Create;
begin
  FCards:= TObjectList<TCards>.Create;
  FAddresses:= TObjectList<TList<String>>.Create;
end;

destructor TCustomers.Destroy;
begin
  FCards.DisposeOf;
  FAddresses.DisposeOf;
  inherited;
end;

class function TCustomers.New: TCustomers;
begin
  Result := Self.Create;
end;

end.
