unit mercdopago4D.resources.impl.conciliation;

interface

uses
  mercdopago4D.resources.interfaces;

type
  TConciliation = class(TInterfacedObject, iConciliation)
  private

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iConciliation;
    function GetPayments: iConciliation;
    function LastStatus: iConciliation;
  end;

implementation

constructor TConciliation.Create;
begin

end;

destructor TConciliation.Destroy;
begin

  inherited;
end;

function TConciliation.GetPayments: iConciliation;
begin
  Result := Self;
end;

function TConciliation.LastStatus: iConciliation;
begin
  Result := Self;
end;

class function TConciliation.New: iConciliation;
begin
  Result := Self.Create;
end;

end.
