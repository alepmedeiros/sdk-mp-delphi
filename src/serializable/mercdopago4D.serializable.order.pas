unit mercdopago4D.serializable.order;

interface

uses
  GBJSON.Attributes;

type
  TOrder = class
  private
    FType: String;
    FId: String;
  public
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('id')]
    property Id: String read FId write FId;

    class function New: TOrder;
  end;

implementation

class function TOrder.New: TOrder;
begin
  Result := Self.Create;
end;

end.
