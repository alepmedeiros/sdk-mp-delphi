unit mercdopago4D.serializable.metadata;

interface

uses
  GBJSON.Attributes;

type
  TMetadata = class
  private
    FSourceSync: String;
    FPaymentsGroupSize: String;
    FPaymentsGroupTimeStamp: String;
    FPaymentsGroupUUID: String;
  public
    [JSONProp('source_sync')]
    property SourceSync: String read FSourceSync write FSourceSync;
    [JSONProp('payments_group_size')]
    property PaymentsGroupSize: String read FPaymentsGroupSize write FPaymentsGroupSize;
    [JSONProp('payments_group_timestamp')]
    property PaymentsGroupTimeStamp: String read FPaymentsGroupTimeStamp write FPaymentsGroupTimeStamp;
    [JSONProp('payments_group_uuid')]
    property PaymentsGroupUUID: String read FPaymentsGroupUUID write FPaymentsGroupUUID;

    class function New: TMetadata;
  end;

implementation

class function TMetadata.New: TMetadata;
begin
  Result := Self.Create;
end;

end.
