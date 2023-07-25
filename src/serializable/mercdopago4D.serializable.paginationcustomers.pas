unit mercdopago4D.serializable.paginationcustomers;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.customers,
  mercdopago4D.serializable.pagging;

type
  TPaginationCustomers = class
  private
    FPagging: TPaging;
    FResults: TObjectList<TCustomers>;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('pagging')]
    property pagging: TPaging read FPagging write FPagging;
    [JSONProp('results')]
    property Results: TObjectList<TCustomers> read FResults write FResults;

    class function New: TPaginationCustomers;
  end;

implementation

constructor TPaginationCustomers.Create;
begin
  FResults:= TObjectList<TCustomers>.Create;
end;

destructor TPaginationCustomers.Destroy;
begin
  FResults.DisposeOf;
  inherited;
end;

class function TPaginationCustomers.New: TPaginationCustomers;
begin
  Result := Self.Create;
end;

end.
