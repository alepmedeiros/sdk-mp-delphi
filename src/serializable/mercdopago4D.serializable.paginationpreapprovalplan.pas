unit mercdopago4D.serializable.paginationpreapprovalplan;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.pagging,
  mercdopago4D.serializable.preapprovalplan;

type
  TPaginationPreapprovalPlan = class
  private
    FPagind: TPaging;
    FResults: TObjectList<TPreapprovalPlan>;
  public
    [JSONProp('paging')]
    property Pagind: TPaging read FPagind write FPagind;
    [JSONProp('results')]
    property Results: TObjectList<TPreapprovalPlan> read FResults
      write FResults;

    class function New: TPaginationPreapprovalPlan;
  end;

implementation

class function TPaginationPreapprovalPlan.New: TPaginationPreapprovalPlan;
begin
  Result := Self.Create;
end;

end.
