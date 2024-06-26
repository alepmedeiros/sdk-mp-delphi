unit MercadoPago4D;

interface

uses
  mercdopago4D,
  mercdopago4D.interfaces;

var
  MP4D: iMP4D;

implementation

const
  ClientId = '5882422820672306';
  ClientSecret = 'G11aBdGuw8QDKOfGDGvRtGQelBNmCmJz';
  Code = 'TG-649c66df995b520001d24bc2-17552238';
  RedirectURI = 'https://academiadocodigo.com.br';
  RefreshToken = 'TG-649c7f4644de770001438f2e-17552238';
  AccessToken = 'APP_USR-5882422820672306-062814-299bb1e4df03aca535cf83866573ff28-17552238';

initialization

MP4D := TMP4D.New;

MP4D.Configuration.ClientId(ClientId).ClientSecret(ClientSecret).Code(Code)
  .RedirectURI(RedirectURI).RefreshToken(RefreshToken).AccessToken(AccessToken);

end.
