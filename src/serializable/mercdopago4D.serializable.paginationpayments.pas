unit mercdopago4D.serializable.paginationpayments;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.pagging,
  mercdopago4D.serializable.payments;

type
  TPaginationPayments = class
  private
    FPagging: TPaging;
    FResults: TObjectList<TPayments>;
  public
    [JSONProp('pagging')]
    property pagging: TPaging read FPagging write FPagging;
    [JSONProp('results')]
    property Results: TObjectList<TPayments> read FResults write FResults;

    constructor Create;
    destructor Destroy; override;
    class function New: TPaginationPayments;
  end;

implementation

constructor TPaginationPayments.Create;
begin
  FResults:= TObjectList<TPayments>.Create;
end;

destructor TPaginationPayments.Destroy;
begin
  FResults.DisposeOf;
  inherited;
end;

class function TPaginationPayments.New: TPaginationPayments;
begin
  Result := Self.Create;
end;

end.
