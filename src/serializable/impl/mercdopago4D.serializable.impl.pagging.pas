unit mercdopago4D.serializable.impl.pagging;

interface

uses
  mercdopago4D.serializable.interfaces;

type
  TPagging = class(TInterfacedObject, iPagging)
  private
    FLimit: Integer;
    FOffset: Integer;
    FTotal: Integer;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iPagging;

    function Limit(Value: Integer):iPagging; overload;
    function Limit: Integer; overload;
    function Offset(Value: Integer):iPagging; overload;
    function Offset: Integer; overload;
    function Total(Value: Integer):iPagging; overload;
    function Total: Integer; overload;
  end;

implementation

constructor TPagging.Create;
begin

end;

destructor TPagging.Destroy;
begin

  inherited;
end;

function TPagging.Limit(Value: Integer): iPagging;
begin
  Result := Self;
end;

function TPagging.Limit: Integer;
begin

end;

class function TPagging.New: iPagging;
begin
  Result := Self.Create;
end;

function TPagging.Offset: Integer;
begin

end;

function TPagging.Offset(Value: Integer): iPagging;
begin
  Result := Self;
end;

function TPagging.Total(Value: Integer): iPagging;
begin
  Result := Self;
end;

function TPagging.Total: Integer;
begin

end;

end.
