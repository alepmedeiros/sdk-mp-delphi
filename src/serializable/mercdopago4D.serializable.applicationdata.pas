unit mercdopago4D.serializable.applicationdata;

interface

uses
  GBJSON.Attributes;

type
  TApplicationData = class
  private
    FName: String;
    FVersion: String;
  public
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('version')]
    property Version: String read FVersion write FVersion;

    class function New: TApplicationData;
  end;

implementation

class function TApplicationData.New: TApplicationData;
begin
  Result := Self.Create;
end;

end.
