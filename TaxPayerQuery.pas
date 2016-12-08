// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl=wsdl0
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl>0
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?xsd=xsd0
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?xsd=xsd2
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?xsd=xsd3
//  >Import : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?xsd=xsd1
// Encoding : utf-8
// Codegen  : [wfMapArraysToClasses+]
// Version  : 1.0
// (12/8/2016 11:36:53 AM - - $Rev: 25127 $)
// ************************************************************************ //

unit TaxPayerQuery;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  User                 = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  User2                = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }
  ArrayOfstring        = class;                 { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }
  ArrayOfstring2       = class;                 { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblElm] }
  ArrayOfUser          = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  ArrayOfUser2         = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }



  // ************************************************************************ //
  // XML       : User, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  User = class(TRemotable)
  private
    FAlias: string;
    FAlias_Specified: boolean;
    FCreatedDate: TXSDateTime;
    FCreatedDate_Specified: boolean;
    FIdentifier: string;
    FIdentifier_Specified: boolean;
    FIsActive: Boolean;
    FIsActive_Specified: boolean;
    FTitle: string;
    FTitle_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FUpdatedDate: TXSDateTime;
    FUpdatedDate_Specified: boolean;
    procedure SetAlias(Index: Integer; const Astring: string);
    function  Alias_Specified(Index: Integer): boolean;
    procedure SetCreatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CreatedDate_Specified(Index: Integer): boolean;
    procedure SetIdentifier(Index: Integer; const Astring: string);
    function  Identifier_Specified(Index: Integer): boolean;
    procedure SetIsActive(Index: Integer; const ABoolean: Boolean);
    function  IsActive_Specified(Index: Integer): boolean;
    procedure SetTitle(Index: Integer; const Astring: string);
    function  Title_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  UpdatedDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Alias:       string       Index (IS_OPTN or IS_NLBL) read FAlias write SetAlias stored Alias_Specified;
    property CreatedDate: TXSDateTime  Index (IS_OPTN) read FCreatedDate write SetCreatedDate stored CreatedDate_Specified;
    property Identifier:  string       Index (IS_OPTN or IS_NLBL) read FIdentifier write SetIdentifier stored Identifier_Specified;
    property IsActive:    Boolean      Index (IS_OPTN) read FIsActive write SetIsActive stored IsActive_Specified;
    property Title:       string       Index (IS_OPTN or IS_NLBL) read FTitle write SetTitle stored Title_Specified;
    property Type_:       string       Index (IS_OPTN or IS_NLBL) read FType_ write SetType_ stored Type__Specified;
    property UpdatedDate: TXSDateTime  Index (IS_OPTN or IS_NLBL) read FUpdatedDate write SetUpdatedDate stored UpdatedDate_Specified;
  end;



  // ************************************************************************ //
  // XML       : User, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  User2 = class(User)
  private
  published
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ArrayOfstring, global, <complexType>
  // Namespace : http://schemas.microsoft.com/2003/10/Serialization/Arrays
  // ************************************************************************ //
  ArrayOfstring = class(TRemotable)
  private
    Fstring_: Array_Of_string;
    Fstring__Specified: boolean;
    procedure Setstring_(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  string__Specified(Index: Integer): boolean;
  public
    function   GetstringArray(Index: Integer): string;       
    procedure  SetstringArray(Index: Integer; const Item: string);
    function   GetstringArrayLength: Integer;
    procedure  SetstringArrayLength(Len: Integer);

    property   stringArray[Index: Integer]: string read GetstringArray write SetstringArray; default;
    property   Len: Integer read GetstringArrayLength write SetstringArrayLength;
  published
    property string_: Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL) read Fstring_ write Setstring_ stored string__Specified;
  end;



  // ************************************************************************ //
  // XML       : ArrayOfstring, global, <element>
  // Namespace : http://schemas.microsoft.com/2003/10/Serialization/Arrays
  // ************************************************************************ //
  ArrayOfstring2 = class(ArrayOfstring)
  private
  published
  end;

  Array_Of_User = array of User;                { "http://isisbilisim.com.tr/data/einvoice"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ArrayOfUser, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  ArrayOfUser = class(TRemotable)
  private
    FUser: Array_Of_User;
    FUser_Specified: boolean;
    procedure SetUser(Index: Integer; const AArray_Of_User: Array_Of_User);
    function  User_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
    function   GetUserArray(Index: Integer): User;       
    procedure  SetUserArray(Index: Integer; const Item: User);
    function   GetUserArrayLength: Integer;
    procedure  SetUserArrayLength(Len: Integer);

    property   UserArray[Index: Integer]: User read GetUserArray write SetUserArray; default;
    property   Len: Integer read GetUserArrayLength write SetUserArrayLength;
  published
    property User: Array_Of_User  Index (IS_OPTN or IS_UNBD or IS_NLBL) read FUser write SetUser stored User_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArrayOfUser, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  ArrayOfUser2 = class(ArrayOfUser)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // soapAction: http://isisbilisim.com.tr/services/einvoice/ITaxPayerQuery/%operationName%
  // style     : document
  // binding   : BasicHttpBinding_ITaxPayerQuery
  // service   : TaxPayerQuery
  // port      : BasicHttpBinding_ITaxPayerQuery
  // URL       : http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc
  // ************************************************************************ //
  ITaxPayerQuery = interface(IInvokable)
  ['{9BE4B9F3-E835-B3A5-A889-65264B446897}']
    function  Filter(const vknList: ArrayOfstring; const startDate: string): ArrayOfUser; stdcall;
    function  GetList: ArrayOfUser; stdcall;
    function  GetActiveList: ArrayOfUser; stdcall;
    function  GetActiveListByVknList(const vknList: ArrayOfstring): ArrayOfUser; stdcall;
    function  GetListByVknList(const vknList: ArrayOfstring): ArrayOfUser; stdcall;
    function  GetActiveListByDate(const startDate: TXSDateTime; const endDate: TXSDateTime): ArrayOfUser; stdcall;
    function  GetListByDate(const startDate: TXSDateTime; const endDate: TXSDateTime): ArrayOfUser; stdcall;
    function  GetListByTitle(const title: string): ArrayOfUser; stdcall;
    function  GetActiveListByTitle(const title: string): ArrayOfUser; stdcall;
  end;

function GetITaxPayerQuery(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ITaxPayerQuery;


implementation
  uses SysUtils;

function GetITaxPayerQuery(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ITaxPayerQuery;
const
  defWSDL = 'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl';
  defURL  = 'http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc';
  defSvc  = 'TaxPayerQuery';
  defPrt  = 'BasicHttpBinding_ITaxPayerQuery';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ITaxPayerQuery);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor User.Destroy;
begin
  SysUtils.FreeAndNil(FCreatedDate);
  SysUtils.FreeAndNil(FUpdatedDate);
  inherited Destroy;
end;

procedure User.SetAlias(Index: Integer; const Astring: string);
begin
  FAlias := Astring;
  FAlias_Specified := True;
end;

function User.Alias_Specified(Index: Integer): boolean;
begin
  Result := FAlias_Specified;
end;

procedure User.SetCreatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCreatedDate := ATXSDateTime;
  FCreatedDate_Specified := True;
end;

function User.CreatedDate_Specified(Index: Integer): boolean;
begin
  Result := FCreatedDate_Specified;
end;

procedure User.SetIdentifier(Index: Integer; const Astring: string);
begin
  FIdentifier := Astring;
  FIdentifier_Specified := True;
end;

function User.Identifier_Specified(Index: Integer): boolean;
begin
  Result := FIdentifier_Specified;
end;

procedure User.SetIsActive(Index: Integer; const ABoolean: Boolean);
begin
  FIsActive := ABoolean;
  FIsActive_Specified := True;
end;

function User.IsActive_Specified(Index: Integer): boolean;
begin
  Result := FIsActive_Specified;
end;

procedure User.SetTitle(Index: Integer; const Astring: string);
begin
  FTitle := Astring;
  FTitle_Specified := True;
end;

function User.Title_Specified(Index: Integer): boolean;
begin
  Result := FTitle_Specified;
end;

procedure User.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function User.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure User.SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FUpdatedDate := ATXSDateTime;
  FUpdatedDate_Specified := True;
end;

function User.UpdatedDate_Specified(Index: Integer): boolean;
begin
  Result := FUpdatedDate_Specified;
end;

function ArrayOfstring.GetstringArray(Index: Integer): string;
begin
  Result := Fstring_[Index];
end;

procedure ArrayOfstring.SetstringArray(Index: Integer; const Item: string);
begin
   Fstring_[Index] := Item;
   Fstring__Specified := True;
end;

function ArrayOfstring.GetstringArrayLength: Integer;
begin
  if Assigned(Fstring_) then
    Result := System.Length(Fstring_)
  else
    Result := 0;
end;

procedure ArrayOfstring.SetstringArrayLength(Len: Integer);
begin
  System.SetLength(Fstring_, Len);
end;

procedure ArrayOfstring.Setstring_(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Fstring_ := AArray_Of_string;
  Fstring__Specified := True;
end;

function ArrayOfstring.string__Specified(Index: Integer): boolean;
begin
  Result := Fstring__Specified;
end;

destructor ArrayOfUser.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FUser)-1 do
    SysUtils.FreeAndNil(FUser[I]);
  System.SetLength(FUser, 0);
  inherited Destroy;
end;

function ArrayOfUser.GetUserArray(Index: Integer): User;
begin
  Result := FUser[Index];
end;

procedure ArrayOfUser.SetUserArray(Index: Integer; const Item: User);
begin
   FUser[Index] := Item;
end;

function ArrayOfUser.GetUserArrayLength: Integer;
begin
  if Assigned(FUser) then
    Result := System.Length(FUser)
  else
    Result := 0;
end;

procedure ArrayOfUser.SetUserArrayLength(Len: Integer);
begin
  System.SetLength(FUser, Len);
end;

procedure ArrayOfUser.SetUser(Index: Integer; const AArray_Of_User: Array_Of_User);
begin
  FUser := AArray_Of_User;
  FUser_Specified := True;
end;

function ArrayOfUser.User_Specified(Index: Integer): boolean;
begin
  Result := FUser_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(ITaxPayerQuery), 'http://isisbilisim.com.tr/services/einvoice', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ITaxPayerQuery), 'http://isisbilisim.com.tr/services/einvoice/ITaxPayerQuery/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ITaxPayerQuery), ioDocument);
  RemClassRegistry.RegisterXSClass(User, 'http://isisbilisim.com.tr/data/einvoice', 'User');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(User), 'Type_', 'Type');
  RemClassRegistry.RegisterXSClass(User2, 'http://isisbilisim.com.tr/data/einvoice', 'User2', 'User');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(ArrayOfstring, 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ArrayOfstring), 'string_', 'string');
  RemClassRegistry.RegisterXSClass(ArrayOfstring2, 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring2', 'ArrayOfstring');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_User), 'http://isisbilisim.com.tr/data/einvoice', 'Array_Of_User');
  RemClassRegistry.RegisterXSClass(ArrayOfUser, 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfUser');
  RemClassRegistry.RegisterXSClass(ArrayOfUser2, 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfUser2', 'ArrayOfUser');

end.