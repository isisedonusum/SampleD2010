unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, Types,
  Rio, SOAPHTTPClient, InvokeRegistry, XSBuiltIns, SOAPHTTPTrans, WinInet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtVKN: TEdit;
    Label2: TLabel;
    txtUser: TEdit;
    Label3: TLabel;
    txtPass: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    TabSheet3: TTabSheet;
    Button3: TButton;
    Memo3: TMemo;
    OpenDialog1: TOpenDialog;
    TabSheet4: TTabSheet;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure HTTPRIOHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  TaxPayerQuery, EInvoiceEasy, EncdDecd, UblTr, Contracts;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  HTTPRIO1: THTTPRIO;
  Service: ITaxPayerQuery;
  VKNList: TaxPayerQuery.ArrayOfstring;
  UserList: ArrayOfUser;
  i: Integer;
begin
  HTTPRIO1 := THTTPRIO.Create(Form1);
  HTTPRIO1.HTTPWebNode.UserName := txtUser.Text;
  HTTPRIO1.HTTPWebNode.Password := txtPass.Text;

  Service := GetITaxPayerQuery(false,'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc', HTTPRIO1);

  VKNList := TaxPayerQuery.ArrayOfstring.Create();
  VKNList.SetstringArrayLength(Memo1.Lines.Count);

  for i := 0 to Memo1.Lines.Count - 1 do
    VKNList[i] := Memo1.Lines[i];

  try
    Memo2.Lines.Clear;
    UserList := Service.GetListByVknList(VKNList);
    for i := 0 to UserList.Len - 1 do
      Memo2.Lines.Add(UserList[i].Alias);
  except
     //özel entegratörden gelen hata mesajý
     on E : ERemotableException do
       MessageDlg(E.Message, mtError, [mbOk], 0);
     on E : Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  HTTPRIO1: THTTPRIO;
  Service: ITaxPayerQuery;
  VKNList: ArrayOfstring;
  UserList: ArrayOfUser;
  i: Integer;
  StartDate, EndDate: TXSDateTime;
begin
  HTTPRIO1 := THTTPRIO.Create(Form1);
  HTTPRIO1.HTTPWebNode.OnBeforePost := HTTPRIOHTTPWebNode1BeforePost;
  Service := GetITaxPayerQuery(false,'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc', HTTPRIO1);

  try
    StartDate := TXSDateTime.Create();
    StartDate.Year := 2010;
    StartDate.Month := 1;
     StartDate.Day := 1;
   EndDate :=  StartDate.Clone();
   EndDate.Year := 2999;
    UserList := Service.GetListByDate(StartDate, EndDate);

  except
     //özel entegratörden gelen hata mesajý
     on E : ERemotableException do
       MessageDlg(E.Message, mtError, [mbOk], 0);
     on E : Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  HTTPRIO1: THTTPRIO;
  Service: IEasy;
  Response: Contracts_ResponseType;
  ByteData: TByteDynArray;
  TempStream: TMemoryStream;
begin
  if OpenDialog1.Execute() then
  begin
    TempStream := TMemoryStream.Create;
    TempStream.LoadFromFile(OpenDialog1.FileName);
    SetLength(ByteData, TempStream.Size);
    TempStream.Read(ByteData[0], TempStream.Size);
    TempStream.Free;

    HTTPRIO1 := THTTPRIO.Create(Form1);

    HTTPRIO1.HTTPWebNode.Proxy := 'localhost:8888';

    HTTPRIO1.HTTPWebNode.OnBeforePost := HTTPRIOHTTPWebNode1BeforePost;

    //Delphi 2010'da çalýþmýyor, OnBeforePost metodunda manuel gönderildi
    HTTPRIO1.HTTPWebNode.UserName := txtUser.Text;
    HTTPRIO1.HTTPWebNode.Password := txtPass.Text;

    Service := GetIEasy(false,'http://erptestep.isisbilisim.com.tr/EInvoiceEasy.svc', HTTPRIO1);

    try
      Response := Service.SendInvoice(txtVKN.Text, '', '', ByteData);
      if Response.Status = Contracts_StatusType.OK then
        Memo3.Lines.Add('Fatura ' + Response.ID + ' gönderildi.')
      else
        Memo3.Lines.Add(Response.GIBMessage);
    except
     //özel entegratörden gelen hata mesajý
     on E : ERemotableException do
       MessageDlg(E.Message, mtError, [mbOk], 0);
     on E : Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  fatura: TFatura;
  kalem: TKalem;
  vergi: TVergi;
begin
  fatura := TFatura.Create;
  fatura.Tarih := Date;
  fatura.Senaryo := TEMELFATURA;
  fatura.Tipi := SATIS;
  fatura.BelgePB := 'TRY';

  //fatura görseli
  fatura.Gorsel := 'GeneralWithCss.xslt';

  // Alýcý
  fatura.Alici := TMuhatap.Create;
  fatura.Alici.WebURI := 'http://www.isisbilisim.com.tr';
  fatura.Alici.VKNTCKN := '46603924300';
  fatura.Alici.Unvan := 'ISIS Biliþim Teknolojileri';
  fatura.Alici.Ilce := 'Ataþehir';
  fatura.Alici.Il := 'Ýstanbul';
  fatura.Alici.Ulke := 'Türkiye';
  fatura.Alici.UlkeKodu := 'TR';
  fatura.Alici.VergiDairesi := 'Ýlyasbey';

  // fatura kalemleri
  fatura.Kalemler := TKalemler.Create;
  kalem := TKalem.Create;
  kalem.KalemNo := 1; // kalem numarasý 1'den baþlar
  kalem.UrunKodu := '001';
  kalem.UrunAdi := 'e-Fatura';
  kalem.Miktar := 5;
  kalem.OlcuBirimi := TOlcuBirimleri.C62;
  kalem.BirimFiyat := 21;
  kalem.IndirimTutar := 5;
  kalem.KalemTutar := 100;
  kalem.Vergiler := TVergiler.Create;
  //vergi
  vergi :=  TVergi.Create('0015', 'KDV');
  vergi.Oran := 8;
  kalem.Vergiler.Add(vergi);

  fatura.Kalemler.Add(kalem);
  //baþlýk vergileri manuel de atanabilir
  fatura.BaslikVergileriHesapla;

  CreateUblTr(fatura);

  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  OpenDialog1.FileName := 'sample.xml';
end;

procedure TForm1.HTTPRIOHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp; Data: Pointer);
const
  INTERNET_OPTION_HTTP_DECODING = 65;
  contentEncodingHeader = 'Accept-Encoding: gzip, deflate';
var
  Flag: LongBool;
  Basic: string;
begin
  Flag := True;
  HttpAddRequestHeaders(Data, PChar(contentEncodingHeader), Length(contentEncodingHeader), HTTP_ADDREQ_FLAG_ADD);
  Basic := 'Authorization: Basic ' + EncodeString(txtUser.Text + ':' + txtPass.Text);
  HttpAddRequestHeaders(Data, PChar(Basic), Length(Basic), HTTP_ADDREQ_FLAG_ADD);
  InternetSetOption(Data, INTERNET_OPTION_HTTP_DECODING, PChar(@Flag), SizeOf(Flag));
end;

end.
