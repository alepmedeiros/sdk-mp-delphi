unit mercdopago4D.serializable.processingmodes;

interface

uses
  GBJSON.Attributes;

type
  TProcessingModes = class
  private
  public

    class function New: TProcessingModes;
  end;

implementation

class function TProcessingModes.New: TProcessingModes;
begin
  Result := Self.Create;
end;

end.
