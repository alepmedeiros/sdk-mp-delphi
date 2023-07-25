unit mercdopago4D.serializable.collector;

interface

uses
  GBJSON.Attributes;

type
  TCollector = class
  private
    FId: Integer;
    FNickName: String;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('nickname')]
    property NickName: String read FNickName write FNickName;

    class function New: TCollector;
  end;

implementation

class function TCollector.New: TCollector;
begin
  Result := Self.Create;
end;

end.
