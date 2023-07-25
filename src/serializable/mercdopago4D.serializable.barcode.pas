unit mercdopago4D.serializable.barcode;

interface

uses
  GBJSON.Attributes;

type
  TBarCode = class
  private
    FContent: String;
  public
    [JSONProp('content')]
    property Content: String read FContent write FContent;

    class function New: TBarCode;
  end;

implementation

class function TBarCode.New: TBarCode;
begin
  Result := Self.Create;
end;

end.
