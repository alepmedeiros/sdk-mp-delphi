unit mercdopago4D.serializable.agreements;

interface

uses
  GBJSON.Attributes, mercdopago4D.serializable.agreementdata,
  mercdopago4D.serializable.externaluser;

type
  TAgreements = class
  private
    FAgreementData: TAgreementData;
    FExternalFlowId: String;
    FExternalUser: TExternalUser;
    FReturnUrl: String;
    FAgreementId: String;
    FAgreementUri: String;
  public
    [JSONProp('agreement_data')]
    property AgreementData: TAgreementData read FAgreementData write FAgreementData;
    [JSONProp('external_flow_id')]
    property ExternalFlowId: String read FExternalFlowId write FExternalFlowId;
    [JSONProp('external_user')]
    property ExternalUser: TExternalUser read FExternalUser write FExternalUser;
    [JSONProp('return_url')]
    property ReturnUrl: String read FReturnUrl write FReturnUrl;
    [JSONProp('agreement_id')]
    property AgreementId: String read FAgreementId write FAgreementId;
    [JSONProp('agreement_uri')]
    property AgreementUri: String read FAgreementUri write FAgreementUri;

    class function New: TAgreements;
  end;

implementation

class function TAgreements.New: TAgreements;
begin
  Result := Self.Create;
end;

end.
