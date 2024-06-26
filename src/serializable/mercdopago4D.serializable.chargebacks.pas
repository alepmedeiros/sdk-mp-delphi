unit mercdopago4D.serializable.chargebacks;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  mercdopago4D.serializable.payments,
  mercdopago4D.serializable.documentation;

type
  TChargebacks = class
  private
    FId: String;
    FPayments: TObjectList<TPayments>;
    FCurrency: String;
    FAmount: Integer;
    FConverageApplied: Boolean;
    FConverageEligible: Boolean;
    FDocumentationRequired: Boolean;
    FDocumentationStatus: String;
    FDocumentation: TObjectList<TDocumentation>;
    FDateDocumentationDeadlibe: String;
    FDateCreated: String;
    FDateLastUpdated: String;
    FLiveMode: Boolean;
  public
    [JSONProp('id')]
    property Id: String read FId write FId;
    [JSONProp('payments')]
    property Payments: TObjectList<TPayments> read FPayments write FPayments;
    [JSONProp('currency')]
    property &Currency: String read FCurrency write FCurrency;
    [JSONProp('amount')]
    property Amount: Integer read FAmount write FAmount;
    [JSONProp('coverage_applied')]
    property ConverageApplied: Boolean read FConverageApplied write FConverageApplied;
    [JSONProp('coverage_elegible')]
    property ConverageEligible: Boolean read FConverageEligible write FConverageEligible;
    [JSONProp('documentation_required')]
    property DocumentationRequired: Boolean read FDocumentationRequired write FDocumentationRequired;
    [JSONProp('documentation_status')]
    property DocumentationStatus: String read FDocumentationStatus write FDocumentationStatus;
    [JSONProp('documentation')]
    property Documentation: TObjectList<TDocumentation> read FDocumentation write FDocumentation;
    [JSONProp('date_documentation_deadline')]
    property DateDocumentationDeadlibe: String read FDateDocumentationDeadlibe write FDateDocumentationDeadlibe;
    [JSONProp('date_created')]
    property DateCreated: String read FDateCreated write FDateCreated;
    [JSONProp('date_last_updated')]
    property DateLastUpdated: String read FDateLastUpdated write FDateLastUpdated;
    [JSONProp('live_mode')]
    property LiveMode: Boolean read FLiveMode write FLiveMode;

    constructor Create;
    destructor Destroy; override;
    class function New: TChargebacks;
  end;

implementation

constructor TChargebacks.Create;
begin
  FPayments:= TObjectList<TPayments>.Create;
  FDocumentation:= TObjectList<TDocumentation>.Create;
end;

destructor TChargebacks.Destroy;
begin
  FPayments.DisposeOf;
  FDocumentation.DisposeOf;
  inherited;
end;

class function TChargebacks.New: TChargebacks;
begin
  Result := Self.Create;
end;

end.
