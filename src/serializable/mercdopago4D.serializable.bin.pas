unit mercdopago4D.serializable.bin;

interface

uses
  GBJSON.Attributes;

type
  TBin = class
  private
    FPattern: String;
    FExclusionPattern: String;
    FInstallmentsPattern: String;
  public
    [JSONProp('pattern')]
    property Pattern: String read FPattern write FPattern;
    [JSONProp('exclusion_pattern')]
    property ExclusionPattern: String read FExclusionPattern write FExclusionPattern;
    [JSONProp('installments_pattern')]
    property InstallmentsPattern: String read FInstallmentsPattern write FInstallmentsPattern;

    class function New: TBin;
  end;

implementation

class function TBin.New: TBin;
begin
  Result := Self.Create;
end;

end.
