unit mercdopago4D.serializable.paymentmethods;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.settings,
  mercdopago4D.serializable.additionalinfoneeded,
  mercdopago4D.serializable.financialinstitutions;

type
  TPaymentMethods = class
  private
    FId: String;
    FName: String;
    FPaymentTypeId: String;
    FStatus: String;
    FSecureThumnail: String;
    FThumbnail: String;
    FDeferredCapture: String;
    FSettings: TSettings;
    FAdditionalInfoNeeded: TObjectList<TAdditionalInfoNeeded>;
    FMinAllowedAmount: Currency;
    FMaxAllowedAmount: Currency;
    FFinancialInstitutions: TFinancialInstitutions;
    FAccreditationTime: Integer;
    FProcessingModes: String;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('name')]
    property Name: String read FName write FName;
    [JSONProp('payment_type_id')]
    property PaymentTypeId: String read FPaymentTypeId write FPaymentTypeId;
    [JSONProp('status')]
    property Status: String read FStatus write FStatus;
    [JSONProp('secure_thumbnail')]
    property SecureThumnail: String read FSecureThumnail write FSecureThumnail;
    [JSONProp('thumbnail')]
    property Thumbnail: String read FThumbnail write FThumbnail;
    [JSONProp('deferred_capture')]
    property DeferredCapture: String read FDeferredCapture
      write FDeferredCapture;
    [JSONProp('settings')]
    property settings: TSettings read FSettings write FSettings;
    [JSONProp('additional_info_needed')]
    property additionalinfoneeded: TObjectList<TAdditionalInfoNeeded>
      read FAdditionalInfoNeeded write FAdditionalInfoNeeded;
    [JSONProp('min_allowed_amount')]
    property MinAllowedAmount: Currency read FMinAllowedAmount
      write FMinAllowedAmount;
    [JSONProp('max_allowed_amount')]
    property MaxAllowedAmount: Currency read FMaxAllowedAmount
      write FMaxAllowedAmount;
    [JSONProp('accreditation_time')]
    property AccreditationTime: Integer read FAccreditationTime
      write FAccreditationTime;
    [JSONProp('financial_institutions')]
    property financialinstitutions: TFinancialInstitutions
      read FFinancialInstitutions write FFinancialInstitutions;
    [JSONProp('processing_modes')]
    property ProcessingModes: String read FProcessingModes write FProcessingModes;

    class function New: TPaymentMethods;
  end;

implementation

class function TPaymentMethods.New: TPaymentMethods;
begin
  Result := Self.Create;
end;

end.
