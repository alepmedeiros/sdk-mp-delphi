unit mercdopago4D.serializable.pointofinteraction;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.BusinessInfo,
  mercdopago4D.serializable.transactiondata,
  mercdopago4D.serializable.applicationdata;

type
  TPontOfInteraction = class
  private
    FType: String;
    FBusinessInfo: TObjectList<TBusinessInfo>;
    FSubType: String;
    FTransactionData: TTransactionData;
    FApplicationData: TApplicationData;

    constructor Create;
    destructor Destroy; override;
  public
    [JSONProp('type')]
    property &Type: String read FType write FType;
    [JSONProp('business_info')]
    property BusinessInfo: TObjectList<TBusinessInfo> read FBusinessInfo write FBusinessInfo;
    [JSONProp('sub_type')]
    property SubType: String read FSubType write FSubType;
    [JSONProp('application_data')]
    property ApplicationData: TApplicationData read FApplicationData write FApplicationData;
    [JSONProp('transaction_data')]
    property TransactionData: TTransactionData read FTransactionData write FTransactionData;

    class function New: TPontOfInteraction;
  end;

implementation

constructor TPontOfInteraction.Create;
begin
  FBusinessInfo:= TObjectList<TBusinessInfo>.Create;
end;

destructor TPontOfInteraction.Destroy;
begin
  FBusinessInfo.DisposeOf;
  inherited;
end;

class function TPontOfInteraction.New: TPontOfInteraction;
begin
  Result := Self.Create;
end;

end.
