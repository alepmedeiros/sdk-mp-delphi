unit mercdopago4D.serializable.transactiondata;

interface

uses
  GBJSON.Attributes;

type
  TTransactionData = class
  private
    FQrCodeBase64: String;
    FQrCode: String;
    FTicketUrl: String;
  public
    [JSONProp('qr_code_base64')]
    property QrCodeBase64: String read FQrCodeBase64 write FQrCodeBase64;
    [JSONProp('qr_code')]
    property QrCode: String read FQrCode write FQrCode;
    [JSONProp('ticket_url')]
    property TicketUrl: String read FTicketUrl write FTicketUrl;

    class function New: TTransactionData;
  end;

implementation

class function TTransactionData.New: TTransactionData;
begin
  Result := Self.Create;
end;

end.
