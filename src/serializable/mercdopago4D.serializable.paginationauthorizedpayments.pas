unit mercdopago4D.serializable.paginationauthorizedpayments;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes, mercdopago4D.serializable.pagging,
  mercdopago4D.serializable.authorizedpayments;

type
  TPaginationAuthorizedPayments = class
  private
    FPaging: TPaging;
    FResults: TObjectList<TAuthorizedPayments>;
  public
    [JSONProp('paging')]
    property Paging: TPaging read FPaging write FPaging;
    [JSONProp('results')]
    property Results: TObjectList<TAuthorizedPayments> read FResults write FResults;

    class function New: TPaginationAuthorizedPayments;
  end;

implementation

class function TPaginationAuthorizedPayments.New: TPaginationAuthorizedPayments;
begin
  Result := Self.Create;
end;

end.
