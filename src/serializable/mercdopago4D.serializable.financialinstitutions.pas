unit mercdopago4D.serializable.financialinstitutions;

interface

uses
  GBJSON.Attributes;

type
  TFinancialInstitutions = class
  private
    FId: Integer;
    FDescription: String;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('description')]
    property Description: String read FDescription write FDescription;

    class function New: TFinancialInstitutions;
  end;

implementation

class function TFinancialInstitutions.New: TFinancialInstitutions;
begin
  Result := Self.Create;
end;

end.
