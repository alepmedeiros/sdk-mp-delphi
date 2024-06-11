unit mercdopago4D.serializable.documentation;

interface

uses
  GBJSON.Attributes;

type
  TDocumentation = class
  private
    FType: String;
    FUrl: String;
    FDescription: String;
  public
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('url')]
    property Url: String read FUrl write FUrl;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;

    class function New: TDocumentation;
  end;

implementation

class function TDocumentation.New: TDocumentation;
begin
  Result := Self.Create;
end;

end.
