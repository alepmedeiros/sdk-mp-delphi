unit mercdopago4D.serializable.impl.events;

interface

uses
  mercdopago4D.serializable.interfaces,
  mercdopago4D.serializable.events;

type
  TEvents = class(TInterfacedObject, iEvents)
  private
    FEvents: TSerializeEvents;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iEvents;
    function PaymentIntentId(Value: String): iEvents; overload;
    function PaymentIntentId: String; overload;
    function Status(Value: String): iEvents; overload;
    function Status: String; overload;
    function CreatedOn(Value: TDateTime): iEvents; overload;
    function CreatedOn: TDateTime; overload;
  end;

implementation

uses
  System.DateUtils;

constructor TEvents.Create;
begin
  FEvents := TSerializeEvents.New;
end;

function TEvents.CreatedOn: TDateTime;
begin
  Result := ISO8601ToDate(FEvents.CreatedOn, True);
end;

function TEvents.CreatedOn(Value: TDateTime): iEvents;
begin
  Result := Self;
  FEvents.CreatedOn := DateToISO8601(Value, True);
end;

destructor TEvents.Destroy;
begin
  FEvents.DisposeOf;
  inherited;
end;

class function TEvents.New: iEvents;
begin
  Result := Self.Create;
end;

function TEvents.PaymentIntentId(Value: String): iEvents;
begin
  Result := Self;
  FEvents.PaymentIntentId := Value;
end;

function TEvents.PaymentIntentId: String;
begin
  Result := FEvents.PaymentIntentId;
end;

function TEvents.Status(Value: String): iEvents;
begin
  Result := Self;
  FEvents.Status := Value;
end;

function TEvents.Status: String;
begin
  Result := FEvents.Status;
end;

end.
