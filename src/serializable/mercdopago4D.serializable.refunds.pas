unit mercdopago4D.serializable.refunds;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.metadata,
  mercdopago4D.serializable.source;

type
  TSerializableRefunds = class
  private
    FId: Integer;
    FPaymentId: Integer;
    FAmount: Integer;
    FMetadata: TObjectList<TMetadata>;
    FSource: TObjectList<TSource>;
    FDateCreated: String;
    FUniqueSequenceNumber: String;
    FRefoundMode: String;
    FAdjuntmentAmount: Integer;
    FStatus: String;
    FReason: String;
    FPartitionDetails: TList<String>;
    FLabel: TList<String>;
  public
    [JSONProp('id')]
    property Id: Integer read FId write FId;
    [JSONProp('payment_id')]
    property PaymentId: Integer read FPaymentId write FPaymentId;
    [JSONProp('amount')]
    property Amount: Integer read FAmount write FAmount;
    [JSONProp('metadata')]
    property Metadata: TObjectList<TMetadata> read FMetadata write FMetadata;
    [JSONProp('source')]
    property Source: TObjectList<TSource> read FSource write FSource;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('unique_sequence_number')]
    property UniqueSequenceNumber: String read FUniqueSequenceNumber write FUniqueSequenceNumber;
    [JSONProp('refund_mode')]
    property RefoundMode: String read FRefoundMode write FRefoundMode;
    [JSONProp('adjustment_amount')]
    property AdjuntmentAmount: Integer read FAdjuntmentAmount write FAdjuntmentAmount;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('reason')]
    property Reason: String read FReason write FReason;
    [JSONProp('label')]
    property &Label: TList<String> read FLabel write FLabel;
    [JSONProp('partition_details')]
    property PartitionDetails: TList<String> read FPartitionDetails write FPartitionDetails;

    constructor Create;
    destructor Destroy; override;
    class function New: TSerializableRefunds;
  end;

implementation

constructor TSerializableRefunds.Create;
begin
  FMetadata:= TObjectList<TMetadata>.Create;
  FSource:= TObjectList<TSource>.Create;
  FPartitionDetails:= TList<String>.Create;
  FLabel:= TList<String>.Create;
end;

destructor TSerializableRefunds.Destroy;
begin
  FMetadata.DisposeOf;
  FSource.DisposeOf;
  FPartitionDetails.DisposeOf;
  FLabel.DisposeOf;
  inherited;
end;

class function TSerializableRefunds.New: TSerializableRefunds;
begin
  Result := Self.Create;
end;

end.
