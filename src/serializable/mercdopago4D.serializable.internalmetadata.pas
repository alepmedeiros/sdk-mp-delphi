unit mercdopago4D.serializable.internalmetadata;

interface

uses
  GBJSON.Attributes;

type
  TInternalMetadata = class
  private
  public

    class function New: TInternalMetadata;
  end;

implementation

class function TInternalMetadata.New: TInternalMetadata;
begin
  Result := Self.Create;
end;

end.
