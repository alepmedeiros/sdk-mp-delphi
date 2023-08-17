unit mercdopago4D.serializable.sponsor;

interface

uses
  GBJSON.Attributes;

type
  TSponsor = class
  private
    FId: Integer;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;

    class function New: TSponsor;
  end;

implementation

class function TSponsor.New: TSponsor;
begin
  Result := Self.Create;
end;

end.
