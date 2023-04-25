unit sdkmpdelphi.serialize.entity.payers;

interface

uses
  System.Generics.Collections,
  sdkmpdelphi.serialize.entity.identification,
  sdkmpdelphi.serialize.entity.phone,
  GBJSON.Attributes;

type
  TPayers = class
  private
    FFirstName: String;
    FLastName: String;
    FEmail: String;
    FType: String;
    FIdentification: TObjectList<TIdentification>;
    FPhone: TObjectList<TPhone>;
    FEntityType: String;
    FId: String;
    FOperatorId: String;
  public
    [JSONProp('first_name')]
    property FirstName: String read FFirstName write FFirstName;
    [JSONProp('last_name')]
    property LastName: String read FLastName write FLastName;
    [JSONProp('email')]
    property Email: String read FEmail write FEmail;
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('identification')]
    property Identification: TObjectList<TIdentification> read FIdentification write FIdentification;
    [JSONProp('phone')]
    property Phone: TObjectList<TPhone> read FPhone write FPhone;
    [JSONProp('entity_type')]
    property EntityType: String read FEntityType write FEntityType;
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('operator_id')]
    property OperatorId: String read FOperatorId write FOperatorId;

    constructor Create;
    destructor Destroy; override;
    class function New: TPayers;
  end;

implementation

{ TPayers }

constructor TPayers.Create;
begin
  FIdentification:= TObjectList<TIdentification>.Create;
  FPhone:= TObjectList<TPhone>.Create;
end;

destructor TPayers.Destroy;
begin
  FIdentification.Free;
  FPhone.free;
  inherited;
end;

class function TPayers.New: TPayers;
begin
  Result := Self.Create;
end;

end.
