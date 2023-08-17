unit mercdopago4D.serializable.event;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.events;

type
  TEvent = class
  private
    FEvents: TObjectList<TSerializeEvents>;
  public
    [JSONProp('events')]
    property Events: TObjectList<TSerializeEvents> read FEvents write FEvents;

    constructor Create;
  end;

implementation

{ TEvent }

constructor TEvent.Create;
begin
  FEvents:= TObjectList<TSerializeEvents>.Create;
end;

end.
