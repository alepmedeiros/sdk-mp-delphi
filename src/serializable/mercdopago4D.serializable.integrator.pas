unit mercdopago4D.serializable.integrator;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes;

type
  TIntegrator = class
  private
    FEventChannelDevices: TList<String>;
    FId: Integer;
    FCreatedAt: String;
    FUpdatedAt: String;
    FNotificationUrlEnabled: Boolean;
  public
    [JSONProp('event_channel_devices')]
    property EventChannelDevices: TList<String> read FEventChannelDevices write FEventChannelDevices;
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('created_at')]
    property CreatedAt: String read FCreatedAt write FCreatedAt;
    [JSONProp('updated_at')]
    property UpdatedAt: String read FUpdatedAt write FUpdatedAt;
    [JSONProp('notification_url_enabled')]
    property NotificationUrlEnabled: Boolean read FNotificationUrlEnabled write FNotificationUrlEnabled;

    class function New: TIntegrator;
  end;

implementation

class function TIntegrator.New: TIntegrator;
begin
  Result := Self.Create;
end;

end.
