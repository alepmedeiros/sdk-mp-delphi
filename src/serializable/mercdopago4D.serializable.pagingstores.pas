unit mercdopago4D.serializable.pagingstores;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.pagging,
  mercdopago4D.serializable.stores;

type
  TPagingStores = class
  private
    FPaging: TPaging;
    FStores: TObjectList<TStores>;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('paging')]
    property Paging: TPaging read FPaging write FPaging;
    [JSONProp('results')]
    property stores: TObjectList<TStores> read FStores write FStores;
    class function New: TPagingStores;
  end;

implementation

constructor TPagingStores.Create;
begin
  FStores:= TObjectList<TStores>.Create;
end;

destructor TPagingStores.Destroy;
begin
  FStores.DisposeOf;
  inherited;
end;

class function TPagingStores.New: TPagingStores;
begin
  Result := Self.Create;
end;

end.
