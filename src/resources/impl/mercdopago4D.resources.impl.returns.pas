unit mercdopago4D.resources.impl.returns;

interface

uses
  System.Generics.Collections,
  Data.DB,
  mercdopago4D.resources.interfaces;

type
  TReturns<T: Class, constructor> = class(TInterfacedObject, iReturns<T>)
  private
    FParent: T;
    FJSON: String;

    constructor Create(Parent: T; JSON: String);
    destructor Destroy; override;
  public
    class function New(Parent: T; JSON: String): iReturns<T>;
    function Serializable: T;
    function Serializables: TObjectList<T>;
  end;

implementation

uses
  System.SysUtils,
  System.JSON,
  mercdopago4D.serializable;

constructor TReturns<T>.Create(Parent: T; JSON: String);
begin
  FParent := Parent;
  FJSON := JSON;
end;

destructor TReturns<T>.Destroy;
begin

  inherited;
end;

class function TReturns<T>.New(Parent: T; JSON: String): iReturns<T>;
begin
  Result := Self.Create(Parent,JSON);
end;

function TReturns<T>.Serializables: TObjectList<T>;
begin
  var lObj := T.Create;
  var lSerialize := TSerializable<T>.New(FParent);
  var lRetorno := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(FJSON),0) as TJSONArray;
  Result := lSerialize.ToList(lRetorno);
end;

function TReturns<T>.Serializable: T;
begin
  var lObj := T.Create;
  var lSerialize := TSerializable<T>.New(FParent);
  Result := lSerialize.ToObject(FJSON);
end;

end.
