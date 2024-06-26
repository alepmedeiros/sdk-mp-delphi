unit mercdopago4D.serializable;

interface

uses
  System.JSON,
  System.Generics.Collections,
  Data.DB,
  GBJSON.Interfaces,
  mercdopago4D.serializable.interfaces;

type
  TSerializable<T: Class, constructor> = class(TInterfacedObject, iSerializable<T>)
  private
    FParent: T;

    constructor Create(Parent: T);
    destructor Destroy; override;
  public
    class function New(Parent: T): iSerializable<T>;
    function ToJSON: TJSONObject;
    function ToArray(Value: TObjectList<T>): TJSONArray;
    function ToList(Value: TJSONArray): TObjectList<T>;
    function ToObject(Value: String): T;
  end;

implementation

constructor TSerializable<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TSerializable<T>.Destroy;
begin

  inherited;
end;

class function TSerializable<T>.New(Parent: T): iSerializable<T>;
begin
  Result := Self.Create(Parent);
end;

function TSerializable<T>.ToArray(Value: TObjectList<T>): TJSONArray;
begin
  Result := TGBJSONDefault.Deserializer<T>.ListToJSONArray(Value);
end;

function TSerializable<T>.ToJSON: TJSONObject;
begin
  Result := TGBJSONDefault.Deserializer<T>.ObjectToJsonObject(FParent);
end;

function TSerializable<T>.ToList(Value: TJSONArray): TObjectList<T>;
begin
  Result := TGBJSONDefault.Serializer<T>.JsonArrayToList(Value);
end;

function TSerializable<T>.ToObject(Value: String): T;
begin
  Result := TGBJSONDefault.Serializer<T>.JsonStringToObject(Value);
end;

end.
