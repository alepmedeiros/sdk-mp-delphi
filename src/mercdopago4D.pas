unit mercdopago4D;

interface

uses
  mercdopago4D.interfaces,
  mercdopago4D.resources.interfaces,
  mercdopago4D.serializable.interfaces;

type
  TMP4D = class(TInterfacedObject, iMP4D)
  private
    FConf: iConfiguration;
    FResources: iResources;
    FSerlize: iSerialize;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: iMP4D;

    function Configuration: iConfiguration;
    function resources: iResources;
    function Serializable: iSerialize;
  end;

implementation

uses
  mercdopago4D.core.Configuration,
  mercdopago4D.resources.impl.resources,
  mercdopago4D.serializable.impl.serialize;

function TMP4D.Configuration: iConfiguration;
begin
  Result := FConf;
end;

constructor TMP4D.Create;
begin
  FConf := TConfiguration.New;
end;

destructor TMP4D.Destroy;
begin

  inherited;
end;

class function TMP4D.New: iMP4D;
begin
  Result := Self.Create;
end;

function TMP4D.resources: iResources;
begin
  if not Assigned(FResources) then
    FResources := TResources.New(FConf);
  Result := FResources;
end;

function TMP4D.Serializable: iSerialize;
begin
  if not Assigned(FSerlize) then
    FSerlize := TSerialize.New;
  Result := FSerlize;
end;

end.
