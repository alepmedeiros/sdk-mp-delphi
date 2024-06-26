unit mercdopago4D.serializable.businesshours;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.monday,
  mercdopago4D.serializable.tuesday,
  mercdopago4D.serializable.wednesday;

type
  TBusinessHours = class
  private
    FMonday: TObjectList<TMonday>;
    FTuesday: TObjectList<TTuesday>;
    FWednesday: TObjectList<TWednesday>;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('monday')]
    property monday: TObjectList<TMonday> read FMonday write FMonday;
    [JSONProp('tuesday')]
    property tuesday: TObjectList<TTuesday> read FTuesday write FTuesday;
    [JSONProp('wednesday')]
    property wednesday: TObjectList<TWednesday> read FWednesday write FWednesday;

    class function New: TBusinessHours;
  end;

implementation

constructor TBusinessHours.Create;
begin
  FMonday:= TObjectList<TMonday>.Create;
  FTuesday:= TObjectList<TTuesday>.Create;
  FWednesday:= TObjectList<TWednesday>.Create;
end;

destructor TBusinessHours.Destroy;
begin
  FMonday.DisposeOf;
  FTuesday.DisposeOf;
  FWednesday.DisposeOf;
  inherited;
end;

class function TBusinessHours.New: TBusinessHours;
begin
  Result := Self.Create;
end;

end.
