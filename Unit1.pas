unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls,
  Rio, SOAPHTTPClient, InvokeRegistry;

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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  TaxPayerQuery;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  HTTPRIO1: THTTPRIO;
  Service: ITaxPayerQuery;
  VKNList: ArrayOfstring;
  UserList: ArrayOfUser;
  i: Integer;
begin
  HTTPRIO1 := THTTPRIO.Create(Form1);
  HTTPRIO1.HTTPWebNode.UserName := txtUser.Text;
  HTTPRIO1.HTTPWebNode.Password := txtPass.Text;

  Service := GetITaxPayerQuery(false,'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc', HTTPRIO1);

  VKNList := ArrayOfstring.Create();
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

end.
