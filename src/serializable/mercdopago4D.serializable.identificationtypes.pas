unit mercdopago4D.serializable.identificationtypes;

interface

uses
  GBJSON.Attributes;

type
  TIdentificationTypes = class
  private
    FId: String;
    FName: String;
    FMinLength: Integer;
    FType: String;
    FMaxLength: Integer;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('min_length')]
    property MinLength: Integer read FMinLength write FMinLength;
    [JSONProp('max_length')]
    property MaxLength: Integer read FMaxLength write FMaxLength;

    class function New: TIdentificationTypes;
  end;

implementation

class function TIdentificationTypes.New: TIdentificationTypes;
begin
  Result := Self.Create;
end;

end.
