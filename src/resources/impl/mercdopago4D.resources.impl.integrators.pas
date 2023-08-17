unit mercdopago4D.resources.impl.integrators;

interface

uses
  mercdopago4D.resources.interfaces, mercdopago4D.interfaces;

type
  TIntegrators = class(TInterfacedObject, iIntegrators)
  private
    FConf: iConfiguration;

    constructor Create(Conf: iConfiguration);
    destructor Destroy; override;
  public
    class function New(Conf: iConfiguration): iIntegrators;

    function UpdateIntegratorSettimgs: iIntegrators;
    function GetIntegratorSettimgs: iIntegrators;
  end;

implementation


constructor TIntegrators.Create(Conf: iConfiguration);
begin

end;

destructor TIntegrators.Destroy;
begin

  inherited;
end;

function TIntegrators.GetIntegratorSettimgs: iIntegrators;
begin
  Result := Self;
end;

class function TIntegrators.New(Conf: iConfiguration): iIntegrators;
begin
  Result := Self.Create(Conf);
end;

function TIntegrators.UpdateIntegratorSettimgs: iIntegrators;
begin
  Result := Self;
end;

end.
