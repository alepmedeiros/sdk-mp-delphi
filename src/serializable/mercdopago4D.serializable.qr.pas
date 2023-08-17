unit mercdopago4D.serializable.qr;

interface

uses
  GBJSON.Attributes;

type
  TQr = class
  private
    FImage: String;
    FTemplateDocument: String;
    FTemplateImage: String;
  public
    [JSONProp('image')]
    property Image: String read FImage write FImage;
    [JSONProp('template_document')]
    property TemplateDocument: String read FTemplateDocument write FTemplateDocument;
    [JSONProp('template_image')]
    property TemplateImage: String read FTemplateImage write FTemplateImage;

    class function New: TQr;
  end;

implementation

class function TQr.New: TQr;
begin
  Result := Self.Create;
end;

end.
