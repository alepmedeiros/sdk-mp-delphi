unit mercdopago4D.serializable.externaluser;

interface

uses
  GBJSON.Attributes;

type
  TExternalUser = class
  private
    FId: String;
    FDescription: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;

    class function New: TExternalUser;
  end;

implementation

class function TExternalUser.New: TExternalUser;
begin
  Result := Self.Create;
end;

end.
