unit sdkmpdelphi.utils.enum;

interface

type
  TBaseURL = (MP, MPv1);

  THeaders = (CONTENT_TYPE, APPLICATION_JSON);

  TBaseURLHelper = record helper for TBaseURL
    function ToString: String;
  end;

  THeadersHelper = record helper for THeaders
    function ToString: String;
  end;

implementation

{ TBaseURLHelper }

function TBaseURLHelper.ToString: String;
begin
  case self of
    MP: Result := 'https://api.mercadopago.com';
    MPv1: Result := 'https://api.mercadopago.com/V1';
  end;
end;

{ THeadersHelper }

function THeadersHelper.ToString: String;
begin
  case self of
    CONTENT_TYPE: Result := 'Content-Type';
    APPLICATION_JSON: Result := 'application/json';
  end;
end;

end.
