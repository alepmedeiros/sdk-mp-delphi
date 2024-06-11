unit mercdopago4D.serializable.freetrial;

interface

uses
  GBJSON.Attributes;

type
  TFreeTrial = class
  private
    FFrequency: Integer;
    FFrequencyType: String;
  public
    [JSONProp('frequency')]
    property Frequency: Integer read FFrequency write FFrequency;
    [JSONProp('frequency_type')]
    property FrequencyType: String read FFrequencyType write FFrequencyType;

    class function New: TFreeTrial;
  end;

implementation

class function TFreeTrial.New: TFreeTrial;
begin
  Result := Self.Create;
end;

end.
