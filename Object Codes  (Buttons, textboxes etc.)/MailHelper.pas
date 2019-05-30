unit MailHelper;

interface

uses
  IdIOHandler, Dialogs, Windows,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdGlobal,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, SysUtils,
  IdText, DateUtils, Forms;

Type

  TMailHelper = class
  private
    LHandler: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    EPosta: TIdMessage;

  public
    tutturucu: integer;
    class function GetInstance: TMailHelper;
    procedure SendMail(smtpHost, username, password, smtpport, SMTPUSER,
      SMTPRECEIVER: string; SMTPCRYPTION: integer);
    constructor create;
    procedure LHandlerStatusInfo(const AMsg: string);
    procedure EPostaInitializeISO(var VHeaderEncoding: Char;
      var VCharSet: String);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure EPostaIcerikHazirla;
    destructor destroy;
  end;

implementation

var
  FMailHelper: TMailHelper;

destructor TMailHelper.destroy;
begin
  SMTP.Free;
  EPosta.Free;
  LHandler.Free;
  inherited;
end;

constructor TMailHelper.create;
begin

  LHandler := TIdSSLIOHandlerSocketOpenSSL.create(nil);

  LHandler.Name := 'LHandler';
  LHandler.MaxLineAction := maException;
  LHandler.Port := 0;
  LHandler.DefaultPort := 0;
  LHandler.OnStatusInfo := LHandlerStatusInfo;

  EPosta := TIdMessage.create(nil);

  EPosta.Name := 'EPosta';
  EPosta.AttachmentEncoding := 'MIME';

  EPosta.ContentType := 'text/plain';
  EPosta.Encoding := meMIME;
  with EPosta.FromList.Add do
  begin
  end;

  EPosta.ConvertPreamble := True;
  EPosta.OnInitializeISO := EPostaInitializeISO;

  SMTP := TIdSMTP.create(nil);
  SMTP.OnStatus := SMTPStatus;

end;

procedure TMailHelper.SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin

end;

procedure TMailHelper.EPostaInitializeISO(var VHeaderEncoding: Char;
  var VCharSet: String);
begin
  inherited;
  VCharSet := 'utf-8'; // 'iso-8859-9';
end;

procedure TMailHelper.LHandlerStatusInfo(const AMsg: string);
begin

end;

class function TMailHelper.GetInstance: TMailHelper;
begin
  if FMailHelper = nil then
    FMailHelper := TMailHelper.create;
  result := FMailHelper;
end;

procedure TMailHelper.SendMail(smtpHost, username, password, smtpport, SMTPUSER,
  SMTPRECEIVER: string; SMTPCRYPTION: integer);
begin
  if smtpHost <> '' then
  begin

    try
      try
        if SMTP.Connected then
          SMTP.Disconnect;
        SMTP.Host := smtpHost;
        // SMTP.AuthType := satNone;
        SMTP.AuthType := satDefault;
        SMTP.username := username;
        SMTP.password := password;

        SMTP.Port := 25;
        if StrToIntDef(smtpport, -1) > 0 then
          SMTP.Port := StrToInt(smtpport);

        // SSL ayarlarý
        if SMTPCRYPTION = 0 then
        begin
          SMTP.UseTLS := utNoTLSSupport;
          SMTP.IOHandler := nil;
          SMTP.ConnectTimeout := 3000;
        end
        else
        begin
          LHandler.Destination := SMTP.Host + ':' + IntToStr(SMTP.Port);
          LHandler.Host := SMTP.Host;
          LHandler.Port := SMTP.Port;
          LHandler.DefaultPort := 0;
          LHandler.SSLOptions.Method := sslvTLSv1;
          LHandler.SSLOptions.Mode := sslmUnassigned; // sslmClient;
          LHandler.SSLOptions.VerifyMode := [];
          LHandler.SSLOptions.VerifyDepth := 0;
          SMTP.IOHandler := LHandler;
          if SMTPCRYPTION = 1 then

            SMTP.UseTLS := utUseImplicitTLS; // SSL
          if SMTPCRYPTION = 2 then
            SMTP.UseTLS := utUseExplicitTLS; // SSL/TLS

          SMTP.ConnectTimeout := 10000;
        end;
        SMTP.Connect;

        EPosta.Clear;
        EPosta.From.Address := SMTPUSER;
        EPosta.From.Name := SMTPUSER + ' Yasin Þahin.';

        with EPosta.Recipients.Add do
        begin
          if SMTPRECEIVER > '' then
          begin
            Name := SMTPRECEIVER;
            Address := SMTPRECEIVER;
          end
          else
          begin
            Name := SMTPUSER;
            Address := SMTPUSER;
          end;
        end;
        EPosta.Subject := 'Yasin Þahin';
        EPostaIcerikHazirla();

        SMTP.Send(EPosta);
        Application.PRocessMessages;
        ShowMessage('Mail Gönderild');
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
        end;

      end;
    finally
      try

        if SMTP.Connected then
          SMTP.Disconnect;
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
    end;

  end;
end;

procedure TMailHelper.EPostaIcerikHazirla;
var
  i: integer;
  uretilenSayi: Integer;

begin
  EPosta.CharSet := 'utf-8'; // 'iso-8859-9';
  EPosta.ContentType := 'multipart/alternative';
  with TIdText.create(EPosta.MessageParts, nil) do
  begin
    Randomize;
    uretilenSayi := Random(8999) + 1000;
    tutturucu := uretilenSayi;

    Body.Text := '<html><body> lpdephi ' + DateToStr(DateOf(Now)) +
      '<br>veritabaný kayýdý inin doðrulama kodunuz aþþaðýdadýr.<br><br>' +
      uretilenSayi.ToString;

    Body.Text := Body.Text + '</body></html>';
    CharSet := 'utf-8';
    ContentType := 'text/html';
  end;

end;

end.
