// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://musteritestws.isisbilisim.com.tr/services/einvoice/ReportInvoiceList.svc?wsdl
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?wsdl=wsdl0
//  >Import : http://musteritestws.isisbilisim.com.tr/services/einvoice/ReportInvoiceList.svc?wsdl>0
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd0
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd2
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd3
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd4
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd1
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd5
//  >Import : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc?xsd=xsd6
// Encoding : utf-8
// Version  : 1.0
// (12/8/2016 9:33:41 AM - - $Rev: 25127 $)
// ************************************************************************ //

unit ReportInvoiceList;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Extension            = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  InvoiceExtension     = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }
  Extension2           = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }
  InvoiceExtension2    = class;                 { "http://isisbilisim.com.tr/data/einvoice"[GblElm] }
  OutboxInvoiceHeader  = class;                 { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblCplx] }
  InboxInvoiceHeader   = class;                 { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblCplx] }
  OutboxInvoiceHeader2 = class;                 { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblElm] }
  InboxInvoiceHeader2  = class;                 { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblElm] }
  Contracts_ReportInvoiceListRequest = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblCplx] }
  Contracts_OutboundInvoiceListRequest = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblCplx] }
  Contracts_InboundInvoiceListRequest = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblCplx] }
  Contracts_OutboundInvoiceListRequest2 = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblElm] }
  Contracts_ReportInvoiceListRequest2 = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblElm] }
  Contracts_InboundInvoiceListRequest2 = class;   { "http://isisbilisim.com.tr/services/einvoice"[GblElm] }

  {$SCOPEDENUMS ON}
  { "http://isisbilisim.com.tr/services"[GblSmpl] }
  GlobalEnum_Bool = (ALL, TRUE, FALSE);

  { "http://isisbilisim.com.tr/enums/core"[GblSmpl] }
  GlobalEnum_OrderByType = (ASC, DESC);

  { "http://isisbilisim.com.tr/services/einvoice"[GblSmpl] }
  Enums_OutboundStatus = (
      ALL, 
      TEMPLATE, 
      CANCELED, 
      APPROVED, 
      ERROR, 
      COMPLATED, 
      PROCESSING, 
      NOTRESPONDED, 
      REJECTED, 
      ACCEPTED, 
      COMPLATEDANDACCEPTED, 
      CANCELEDORERRORORREJECTED
  );

  { "http://isisbilisim.com.tr/services/einvoice"[GblSmpl] }
  Enums_InvoiceType = (ALL, COMMERCIAL, BASIC);

  { "http://isisbilisim.com.tr/services/einvoice"[GblSmpl] }
  Enums_InboundStatus = (ALL, PROCESSING, WAITING_APPROVAL, NOTRESPONDED, REJECTED, ACCEPTED, COMPLATEDANDACCEPTED, ERRORORREJECTED);

  {$SCOPEDENUMS OFF}

  ArrayOfstring = array of string;              { "http://schemas.microsoft.com/2003/10/Serialization/Arrays"[GblCplx] }
  ArrayOfExtension = array of Extension;        { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }


  // ************************************************************************ //
  // XML       : Extension, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Extension = class(TRemotable)
  private
    FStructure: string;
    FStructure_Specified: boolean;
    FValuePart1: string;
    FValuePart1_Specified: boolean;
    FValuePart2: string;
    FValuePart2_Specified: boolean;
    FValuePart3: string;
    FValuePart3_Specified: boolean;
    FValuePart4: string;
    FValuePart4_Specified: boolean;
    procedure SetStructure(Index: Integer; const Astring: string);
    function  Structure_Specified(Index: Integer): boolean;
    procedure SetValuePart1(Index: Integer; const Astring: string);
    function  ValuePart1_Specified(Index: Integer): boolean;
    procedure SetValuePart2(Index: Integer; const Astring: string);
    function  ValuePart2_Specified(Index: Integer): boolean;
    procedure SetValuePart3(Index: Integer; const Astring: string);
    function  ValuePart3_Specified(Index: Integer): boolean;
    procedure SetValuePart4(Index: Integer; const Astring: string);
    function  ValuePart4_Specified(Index: Integer): boolean;
  published
    property Structure:  string  Index (IS_OPTN or IS_NLBL) read FStructure write SetStructure stored Structure_Specified;
    property ValuePart1: string  Index (IS_OPTN or IS_NLBL) read FValuePart1 write SetValuePart1 stored ValuePart1_Specified;
    property ValuePart2: string  Index (IS_OPTN or IS_NLBL) read FValuePart2 write SetValuePart2 stored ValuePart2_Specified;
    property ValuePart3: string  Index (IS_OPTN or IS_NLBL) read FValuePart3 write SetValuePart3 stored ValuePart3_Specified;
    property ValuePart4: string  Index (IS_OPTN or IS_NLBL) read FValuePart4 write SetValuePart4 stored ValuePart4_Specified;
  end;

  ArrayOfInvoiceExtension = array of InvoiceExtension;   { "http://isisbilisim.com.tr/data/einvoice"[GblCplx] }


  // ************************************************************************ //
  // XML       : InvoiceExtension, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  InvoiceExtension = class(Extension)
  private
    FCreateDate: TXSDateTime;
    FCreateDate_Specified: boolean;
    FETTN: string;
    FETTN_Specified: boolean;
    FIsActive: Boolean;
    FIsActive_Specified: boolean;
    FUpdatedDate: TXSDateTime;
    FUpdatedDate_Specified: boolean;
    FUserCode: Integer;
    FUserCode_Specified: boolean;
    procedure SetCreateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CreateDate_Specified(Index: Integer): boolean;
    procedure SetETTN(Index: Integer; const Astring: string);
    function  ETTN_Specified(Index: Integer): boolean;
    procedure SetIsActive(Index: Integer; const ABoolean: Boolean);
    function  IsActive_Specified(Index: Integer): boolean;
    procedure SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  UpdatedDate_Specified(Index: Integer): boolean;
    procedure SetUserCode(Index: Integer; const AInteger: Integer);
    function  UserCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CreateDate:  TXSDateTime  Index (IS_OPTN) read FCreateDate write SetCreateDate stored CreateDate_Specified;
    property ETTN:        string       Index (IS_OPTN or IS_NLBL) read FETTN write SetETTN stored ETTN_Specified;
    property IsActive:    Boolean      Index (IS_OPTN) read FIsActive write SetIsActive stored IsActive_Specified;
    property UpdatedDate: TXSDateTime  Index (IS_OPTN or IS_NLBL) read FUpdatedDate write SetUpdatedDate stored UpdatedDate_Specified;
    property UserCode:    Integer      Index (IS_OPTN) read FUserCode write SetUserCode stored UserCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extension, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  Extension2 = class(Extension)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : InvoiceExtension, global, <element>
  // Namespace : http://isisbilisim.com.tr/data/einvoice
  // ************************************************************************ //
  InvoiceExtension2 = class(InvoiceExtension)
  private
  published
  end;

  ArrayOfOutboxInvoiceHeader = array of OutboxInvoiceHeader;   { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblCplx] }


  // ************************************************************************ //
  // XML       : OutboxInvoiceHeader, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data
  // ************************************************************************ //
  OutboxInvoiceHeader = class(TRemotable)
  private
    FAllowanceCharge_Amount: TXSDecimal;
    FAllowanceCharge_Amount_Specified: boolean;
    FAllowanceTotalAmount: TXSDecimal;
    FAllowanceTotalAmount_Specified: boolean;
    FApprovalHieararcyCode: string;
    FApprovalHieararcyCode_Specified: boolean;
    FCode: Integer;
    FCode_Specified: boolean;
    FCompanyCode: string;
    FCompanyCode_Specified: boolean;
    FConnectionSettingCode: string;
    FConnectionSettingCode_Specified: boolean;
    FCopyIndicator: Boolean;
    FCopyIndicator_Specified: boolean;
    FCustomizationID: string;
    FCustomizationID_Specified: boolean;
    FDespatchDocumentReference_ID: string;
    FDespatchDocumentReference_ID_Specified: boolean;
    FDespatchDocumentReference_IssueDate: TXSDateTime;
    FDespatchDocumentReference_IssueDate_Specified: boolean;
    FDocumentCurrencyCode: string;
    FDocumentCurrencyCode_Specified: boolean;
    FDocumentNo: string;
    FDocumentNo_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FInstanceIdentifier: string;
    FInstanceIdentifier_Specified: boolean;
    FInvoiceTypeCode: string;
    FInvoiceTypeCode_Specified: boolean;
    FIssueDate: TXSDateTime;
    FIssueDate_Specified: boolean;
    FIssueTime: string;
    FIssueTime_Specified: boolean;
    FJobPositionCode: string;
    FJobPositionCode_Specified: boolean;
    FLineCountNumeric: Integer;
    FLineCountNumeric_Specified: boolean;
    FLineExtensionAmount: TXSDecimal;
    FLineExtensionAmount_Specified: boolean;
    FNote1: string;
    FNote1_Specified: boolean;
    FNote2: string;
    FNote2_Specified: boolean;
    FNote3: string;
    FNote3_Specified: boolean;
    FNote4: string;
    FNote4_Specified: boolean;
    FNote5: string;
    FNote5_Specified: boolean;
    FOrderReference_ID: string;
    FOrderReference_ID_Specified: boolean;
    FOrderReference_IssueDate: TXSDateTime;
    FOrderReference_IssueDate_Specified: boolean;
    FPayableAmount: TXSDecimal;
    FPayableAmount_Specified: boolean;
    FProfileID: string;
    FProfileID_Specified: boolean;
    FReceiver_CityName: string;
    FReceiver_CityName_Specified: boolean;
    FReceiver_Country: string;
    FReceiver_Country_Specified: boolean;
    FReceiver_Country_Code: string;
    FReceiver_Country_Code_Specified: boolean;
    FReceiver_ElectronicMail: string;
    FReceiver_ElectronicMail_Specified: boolean;
    FReceiver_PartyName: string;
    FReceiver_PartyName_Specified: boolean;
    FReceiver_PostalZone: string;
    FReceiver_PostalZone_Specified: boolean;
    FReceiver_TaxScheme: string;
    FReceiver_TaxScheme_Specified: boolean;
    FReceiver_Telephone: string;
    FReceiver_Telephone_Specified: boolean;
    FReceiver_VKN: string;
    FReceiver_VKN_Specified: boolean;
    FReceiver_WebsiteURI: string;
    FReceiver_WebsiteURI_Specified: boolean;
    FRecordDate: TXSDateTime;
    FRecordDate_Specified: boolean;
    FReferenceDocumentTypeCode: string;
    FReferenceDocumentTypeCode_Specified: boolean;
    FStatusMessage: string;
    FStatusMessage_Specified: boolean;
    FStatusProcessID: Integer;
    FStatusProcessID_Specified: boolean;
    FSupplier_CityName: string;
    FSupplier_CityName_Specified: boolean;
    FSupplier_Country: string;
    FSupplier_Country_Specified: boolean;
    FSupplier_Country_Code: string;
    FSupplier_Country_Code_Specified: boolean;
    FSupplier_ElectronicMail: string;
    FSupplier_ElectronicMail_Specified: boolean;
    FSupplier_PartyName: string;
    FSupplier_PartyName_Specified: boolean;
    FSupplier_PostalZone: string;
    FSupplier_PostalZone_Specified: boolean;
    FSupplier_TaxScheme: string;
    FSupplier_TaxScheme_Specified: boolean;
    FSupplier_Telephone: string;
    FSupplier_Telephone_Specified: boolean;
    FSupplier_VKN: string;
    FSupplier_VKN_Specified: boolean;
    FSupplier_WebsiteURI: string;
    FSupplier_WebsiteURI_Specified: boolean;
    FTaxExclusiveAmount: TXSDecimal;
    FTaxExclusiveAmount_Specified: boolean;
    FTaxInclusiveAmount: TXSDecimal;
    FTaxInclusiveAmount_Specified: boolean;
    FTaxTotal_TaxAmount: TXSDecimal;
    FTaxTotal_TaxAmount_Specified: boolean;
    FUBLVersionID: string;
    FUBLVersionID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    procedure SetAllowanceCharge_Amount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  AllowanceCharge_Amount_Specified(Index: Integer): boolean;
    procedure SetAllowanceTotalAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  AllowanceTotalAmount_Specified(Index: Integer): boolean;
    procedure SetApprovalHieararcyCode(Index: Integer; const Astring: string);
    function  ApprovalHieararcyCode_Specified(Index: Integer): boolean;
    procedure SetCode(Index: Integer; const AInteger: Integer);
    function  Code_Specified(Index: Integer): boolean;
    procedure SetCompanyCode(Index: Integer; const Astring: string);
    function  CompanyCode_Specified(Index: Integer): boolean;
    procedure SetConnectionSettingCode(Index: Integer; const Astring: string);
    function  ConnectionSettingCode_Specified(Index: Integer): boolean;
    procedure SetCopyIndicator(Index: Integer; const ABoolean: Boolean);
    function  CopyIndicator_Specified(Index: Integer): boolean;
    procedure SetCustomizationID(Index: Integer; const Astring: string);
    function  CustomizationID_Specified(Index: Integer): boolean;
    procedure SetDespatchDocumentReference_ID(Index: Integer; const Astring: string);
    function  DespatchDocumentReference_ID_Specified(Index: Integer): boolean;
    procedure SetDespatchDocumentReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  DespatchDocumentReference_IssueDate_Specified(Index: Integer): boolean;
    procedure SetDocumentCurrencyCode(Index: Integer; const Astring: string);
    function  DocumentCurrencyCode_Specified(Index: Integer): boolean;
    procedure SetDocumentNo(Index: Integer; const Astring: string);
    function  DocumentNo_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetInstanceIdentifier(Index: Integer; const Astring: string);
    function  InstanceIdentifier_Specified(Index: Integer): boolean;
    procedure SetInvoiceTypeCode(Index: Integer; const Astring: string);
    function  InvoiceTypeCode_Specified(Index: Integer): boolean;
    procedure SetIssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  IssueDate_Specified(Index: Integer): boolean;
    procedure SetIssueTime(Index: Integer; const Astring: string);
    function  IssueTime_Specified(Index: Integer): boolean;
    procedure SetJobPositionCode(Index: Integer; const Astring: string);
    function  JobPositionCode_Specified(Index: Integer): boolean;
    procedure SetLineCountNumeric(Index: Integer; const AInteger: Integer);
    function  LineCountNumeric_Specified(Index: Integer): boolean;
    procedure SetLineExtensionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  LineExtensionAmount_Specified(Index: Integer): boolean;
    procedure SetNote1(Index: Integer; const Astring: string);
    function  Note1_Specified(Index: Integer): boolean;
    procedure SetNote2(Index: Integer; const Astring: string);
    function  Note2_Specified(Index: Integer): boolean;
    procedure SetNote3(Index: Integer; const Astring: string);
    function  Note3_Specified(Index: Integer): boolean;
    procedure SetNote4(Index: Integer; const Astring: string);
    function  Note4_Specified(Index: Integer): boolean;
    procedure SetNote5(Index: Integer; const Astring: string);
    function  Note5_Specified(Index: Integer): boolean;
    procedure SetOrderReference_ID(Index: Integer; const Astring: string);
    function  OrderReference_ID_Specified(Index: Integer): boolean;
    procedure SetOrderReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  OrderReference_IssueDate_Specified(Index: Integer): boolean;
    procedure SetPayableAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  PayableAmount_Specified(Index: Integer): boolean;
    procedure SetProfileID(Index: Integer; const Astring: string);
    function  ProfileID_Specified(Index: Integer): boolean;
    procedure SetReceiver_CityName(Index: Integer; const Astring: string);
    function  Receiver_CityName_Specified(Index: Integer): boolean;
    procedure SetReceiver_Country(Index: Integer; const Astring: string);
    function  Receiver_Country_Specified(Index: Integer): boolean;
    procedure SetReceiver_Country_Code(Index: Integer; const Astring: string);
    function  Receiver_Country_Code_Specified(Index: Integer): boolean;
    procedure SetReceiver_ElectronicMail(Index: Integer; const Astring: string);
    function  Receiver_ElectronicMail_Specified(Index: Integer): boolean;
    procedure SetReceiver_PartyName(Index: Integer; const Astring: string);
    function  Receiver_PartyName_Specified(Index: Integer): boolean;
    procedure SetReceiver_PostalZone(Index: Integer; const Astring: string);
    function  Receiver_PostalZone_Specified(Index: Integer): boolean;
    procedure SetReceiver_TaxScheme(Index: Integer; const Astring: string);
    function  Receiver_TaxScheme_Specified(Index: Integer): boolean;
    procedure SetReceiver_Telephone(Index: Integer; const Astring: string);
    function  Receiver_Telephone_Specified(Index: Integer): boolean;
    procedure SetReceiver_VKN(Index: Integer; const Astring: string);
    function  Receiver_VKN_Specified(Index: Integer): boolean;
    procedure SetReceiver_WebsiteURI(Index: Integer; const Astring: string);
    function  Receiver_WebsiteURI_Specified(Index: Integer): boolean;
    procedure SetRecordDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  RecordDate_Specified(Index: Integer): boolean;
    procedure SetReferenceDocumentTypeCode(Index: Integer; const Astring: string);
    function  ReferenceDocumentTypeCode_Specified(Index: Integer): boolean;
    procedure SetStatusMessage(Index: Integer; const Astring: string);
    function  StatusMessage_Specified(Index: Integer): boolean;
    procedure SetStatusProcessID(Index: Integer; const AInteger: Integer);
    function  StatusProcessID_Specified(Index: Integer): boolean;
    procedure SetSupplier_CityName(Index: Integer; const Astring: string);
    function  Supplier_CityName_Specified(Index: Integer): boolean;
    procedure SetSupplier_Country(Index: Integer; const Astring: string);
    function  Supplier_Country_Specified(Index: Integer): boolean;
    procedure SetSupplier_Country_Code(Index: Integer; const Astring: string);
    function  Supplier_Country_Code_Specified(Index: Integer): boolean;
    procedure SetSupplier_ElectronicMail(Index: Integer; const Astring: string);
    function  Supplier_ElectronicMail_Specified(Index: Integer): boolean;
    procedure SetSupplier_PartyName(Index: Integer; const Astring: string);
    function  Supplier_PartyName_Specified(Index: Integer): boolean;
    procedure SetSupplier_PostalZone(Index: Integer; const Astring: string);
    function  Supplier_PostalZone_Specified(Index: Integer): boolean;
    procedure SetSupplier_TaxScheme(Index: Integer; const Astring: string);
    function  Supplier_TaxScheme_Specified(Index: Integer): boolean;
    procedure SetSupplier_Telephone(Index: Integer; const Astring: string);
    function  Supplier_Telephone_Specified(Index: Integer): boolean;
    procedure SetSupplier_VKN(Index: Integer; const Astring: string);
    function  Supplier_VKN_Specified(Index: Integer): boolean;
    procedure SetSupplier_WebsiteURI(Index: Integer; const Astring: string);
    function  Supplier_WebsiteURI_Specified(Index: Integer): boolean;
    procedure SetTaxExclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxExclusiveAmount_Specified(Index: Integer): boolean;
    procedure SetTaxInclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxInclusiveAmount_Specified(Index: Integer): boolean;
    procedure SetTaxTotal_TaxAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxTotal_TaxAmount_Specified(Index: Integer): boolean;
    procedure SetUBLVersionID(Index: Integer; const Astring: string);
    function  UBLVersionID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AllowanceCharge_Amount:              TXSDecimal   Index (IS_OPTN) read FAllowanceCharge_Amount write SetAllowanceCharge_Amount stored AllowanceCharge_Amount_Specified;
    property AllowanceTotalAmount:                TXSDecimal   Index (IS_OPTN) read FAllowanceTotalAmount write SetAllowanceTotalAmount stored AllowanceTotalAmount_Specified;
    property ApprovalHieararcyCode:               string       Index (IS_OPTN or IS_NLBL) read FApprovalHieararcyCode write SetApprovalHieararcyCode stored ApprovalHieararcyCode_Specified;
    property Code:                                Integer      Index (IS_OPTN) read FCode write SetCode stored Code_Specified;
    property CompanyCode:                         string       Index (IS_OPTN or IS_NLBL) read FCompanyCode write SetCompanyCode stored CompanyCode_Specified;
    property ConnectionSettingCode:               string       Index (IS_OPTN or IS_NLBL) read FConnectionSettingCode write SetConnectionSettingCode stored ConnectionSettingCode_Specified;
    property CopyIndicator:                       Boolean      Index (IS_OPTN) read FCopyIndicator write SetCopyIndicator stored CopyIndicator_Specified;
    property CustomizationID:                     string       Index (IS_OPTN or IS_NLBL) read FCustomizationID write SetCustomizationID stored CustomizationID_Specified;
    property DespatchDocumentReference_ID:        string       Index (IS_OPTN or IS_NLBL) read FDespatchDocumentReference_ID write SetDespatchDocumentReference_ID stored DespatchDocumentReference_ID_Specified;
    property DespatchDocumentReference_IssueDate: TXSDateTime  Index (IS_OPTN) read FDespatchDocumentReference_IssueDate write SetDespatchDocumentReference_IssueDate stored DespatchDocumentReference_IssueDate_Specified;
    property DocumentCurrencyCode:                string       Index (IS_OPTN or IS_NLBL) read FDocumentCurrencyCode write SetDocumentCurrencyCode stored DocumentCurrencyCode_Specified;
    property DocumentNo:                          string       Index (IS_OPTN or IS_NLBL) read FDocumentNo write SetDocumentNo stored DocumentNo_Specified;
    property ID:                                  string       Index (IS_OPTN or IS_NLBL) read FID write SetID stored ID_Specified;
    property InstanceIdentifier:                  string       Index (IS_OPTN or IS_NLBL) read FInstanceIdentifier write SetInstanceIdentifier stored InstanceIdentifier_Specified;
    property InvoiceTypeCode:                     string       Index (IS_OPTN or IS_NLBL) read FInvoiceTypeCode write SetInvoiceTypeCode stored InvoiceTypeCode_Specified;
    property IssueDate:                           TXSDateTime  Index (IS_OPTN) read FIssueDate write SetIssueDate stored IssueDate_Specified;
    property IssueTime:                           string       Index (IS_OPTN or IS_NLBL) read FIssueTime write SetIssueTime stored IssueTime_Specified;
    property JobPositionCode:                     string       Index (IS_OPTN or IS_NLBL) read FJobPositionCode write SetJobPositionCode stored JobPositionCode_Specified;
    property LineCountNumeric:                    Integer      Index (IS_OPTN) read FLineCountNumeric write SetLineCountNumeric stored LineCountNumeric_Specified;
    property LineExtensionAmount:                 TXSDecimal   Index (IS_OPTN) read FLineExtensionAmount write SetLineExtensionAmount stored LineExtensionAmount_Specified;
    property Note1:                               string       Index (IS_OPTN or IS_NLBL) read FNote1 write SetNote1 stored Note1_Specified;
    property Note2:                               string       Index (IS_OPTN or IS_NLBL) read FNote2 write SetNote2 stored Note2_Specified;
    property Note3:                               string       Index (IS_OPTN or IS_NLBL) read FNote3 write SetNote3 stored Note3_Specified;
    property Note4:                               string       Index (IS_OPTN or IS_NLBL) read FNote4 write SetNote4 stored Note4_Specified;
    property Note5:                               string       Index (IS_OPTN or IS_NLBL) read FNote5 write SetNote5 stored Note5_Specified;
    property OrderReference_ID:                   string       Index (IS_OPTN or IS_NLBL) read FOrderReference_ID write SetOrderReference_ID stored OrderReference_ID_Specified;
    property OrderReference_IssueDate:            TXSDateTime  Index (IS_OPTN) read FOrderReference_IssueDate write SetOrderReference_IssueDate stored OrderReference_IssueDate_Specified;
    property PayableAmount:                       TXSDecimal   Index (IS_OPTN) read FPayableAmount write SetPayableAmount stored PayableAmount_Specified;
    property ProfileID:                           string       Index (IS_OPTN or IS_NLBL) read FProfileID write SetProfileID stored ProfileID_Specified;
    property Receiver_CityName:                   string       Index (IS_OPTN or IS_NLBL) read FReceiver_CityName write SetReceiver_CityName stored Receiver_CityName_Specified;
    property Receiver_Country:                    string       Index (IS_OPTN or IS_NLBL) read FReceiver_Country write SetReceiver_Country stored Receiver_Country_Specified;
    property Receiver_Country_Code:               string       Index (IS_OPTN or IS_NLBL) read FReceiver_Country_Code write SetReceiver_Country_Code stored Receiver_Country_Code_Specified;
    property Receiver_ElectronicMail:             string       Index (IS_OPTN or IS_NLBL) read FReceiver_ElectronicMail write SetReceiver_ElectronicMail stored Receiver_ElectronicMail_Specified;
    property Receiver_PartyName:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_PartyName write SetReceiver_PartyName stored Receiver_PartyName_Specified;
    property Receiver_PostalZone:                 string       Index (IS_OPTN or IS_NLBL) read FReceiver_PostalZone write SetReceiver_PostalZone stored Receiver_PostalZone_Specified;
    property Receiver_TaxScheme:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_TaxScheme write SetReceiver_TaxScheme stored Receiver_TaxScheme_Specified;
    property Receiver_Telephone:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_Telephone write SetReceiver_Telephone stored Receiver_Telephone_Specified;
    property Receiver_VKN:                        string       Index (IS_OPTN or IS_NLBL) read FReceiver_VKN write SetReceiver_VKN stored Receiver_VKN_Specified;
    property Receiver_WebsiteURI:                 string       Index (IS_OPTN or IS_NLBL) read FReceiver_WebsiteURI write SetReceiver_WebsiteURI stored Receiver_WebsiteURI_Specified;
    property RecordDate:                          TXSDateTime  Index (IS_OPTN) read FRecordDate write SetRecordDate stored RecordDate_Specified;
    property ReferenceDocumentTypeCode:           string       Index (IS_OPTN or IS_NLBL) read FReferenceDocumentTypeCode write SetReferenceDocumentTypeCode stored ReferenceDocumentTypeCode_Specified;
    property StatusMessage:                       string       Index (IS_OPTN or IS_NLBL) read FStatusMessage write SetStatusMessage stored StatusMessage_Specified;
    property StatusProcessID:                     Integer      Index (IS_OPTN) read FStatusProcessID write SetStatusProcessID stored StatusProcessID_Specified;
    property Supplier_CityName:                   string       Index (IS_OPTN or IS_NLBL) read FSupplier_CityName write SetSupplier_CityName stored Supplier_CityName_Specified;
    property Supplier_Country:                    string       Index (IS_OPTN or IS_NLBL) read FSupplier_Country write SetSupplier_Country stored Supplier_Country_Specified;
    property Supplier_Country_Code:               string       Index (IS_OPTN or IS_NLBL) read FSupplier_Country_Code write SetSupplier_Country_Code stored Supplier_Country_Code_Specified;
    property Supplier_ElectronicMail:             string       Index (IS_OPTN or IS_NLBL) read FSupplier_ElectronicMail write SetSupplier_ElectronicMail stored Supplier_ElectronicMail_Specified;
    property Supplier_PartyName:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_PartyName write SetSupplier_PartyName stored Supplier_PartyName_Specified;
    property Supplier_PostalZone:                 string       Index (IS_OPTN or IS_NLBL) read FSupplier_PostalZone write SetSupplier_PostalZone stored Supplier_PostalZone_Specified;
    property Supplier_TaxScheme:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_TaxScheme write SetSupplier_TaxScheme stored Supplier_TaxScheme_Specified;
    property Supplier_Telephone:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_Telephone write SetSupplier_Telephone stored Supplier_Telephone_Specified;
    property Supplier_VKN:                        string       Index (IS_OPTN or IS_NLBL) read FSupplier_VKN write SetSupplier_VKN stored Supplier_VKN_Specified;
    property Supplier_WebsiteURI:                 string       Index (IS_OPTN or IS_NLBL) read FSupplier_WebsiteURI write SetSupplier_WebsiteURI stored Supplier_WebsiteURI_Specified;
    property TaxExclusiveAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxExclusiveAmount write SetTaxExclusiveAmount stored TaxExclusiveAmount_Specified;
    property TaxInclusiveAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxInclusiveAmount write SetTaxInclusiveAmount stored TaxInclusiveAmount_Specified;
    property TaxTotal_TaxAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxTotal_TaxAmount write SetTaxTotal_TaxAmount stored TaxTotal_TaxAmount_Specified;
    property UBLVersionID:                        string       Index (IS_OPTN or IS_NLBL) read FUBLVersionID write SetUBLVersionID stored UBLVersionID_Specified;
    property UUID:                                string       Index (IS_OPTN or IS_NLBL) read FUUID write SetUUID stored UUID_Specified;
  end;

  ArrayOfInboxInvoiceHeader = array of InboxInvoiceHeader;   { "http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data"[GblCplx] }


  // ************************************************************************ //
  // XML       : InboxInvoiceHeader, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data
  // ************************************************************************ //
  InboxInvoiceHeader = class(TRemotable)
  private
    FAllowanceCharge_Amount: TXSDecimal;
    FAllowanceCharge_Amount_Specified: boolean;
    FAllowanceTotalAmount: TXSDecimal;
    FAllowanceTotalAmount_Specified: boolean;
    FApprovalHierarchyCode: string;
    FApprovalHierarchyCode_Specified: boolean;
    FCode: Integer;
    FCode_Specified: boolean;
    FCommercialDateTime: TXSDateTime;
    FCommercialDateTime_Specified: boolean;
    FCommercialEnvelopeUUID: string;
    FCommercialEnvelopeUUID_Specified: boolean;
    FCommercialResponse: string;
    FCommercialResponse_Specified: boolean;
    FCommercialResponseUUID: string;
    FCommercialResponseUUID_Specified: boolean;
    FCompanyCode: string;
    FCompanyCode_Specified: boolean;
    FConnectionSettingCode: string;
    FConnectionSettingCode_Specified: boolean;
    FCopyIndicator: Boolean;
    FCopyIndicator_Specified: boolean;
    FCustomizationID: string;
    FCustomizationID_Specified: boolean;
    FDescription: string;
    FDescription_Specified: boolean;
    FDespatchDocumentReference_ID: string;
    FDespatchDocumentReference_ID_Specified: boolean;
    FDespatchDocumentReference_IssueDate: TXSDateTime;
    FDespatchDocumentReference_IssueDate_Specified: boolean;
    FDocumentCurrencyCode: string;
    FDocumentCurrencyCode_Specified: boolean;
    FDocumentNo: string;
    FDocumentNo_Specified: boolean;
    FERPInvoiceType: string;
    FERPInvoiceType_Specified: boolean;
    FETTN: string;
    FETTN_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FInstanceIdentifier: string;
    FInstanceIdentifier_Specified: boolean;
    FInvoiceTypeCode: string;
    FInvoiceTypeCode_Specified: boolean;
    FIsApproved: Boolean;
    FIsApproved_Specified: boolean;
    FIssueDate: TXSDateTime;
    FIssueDate_Specified: boolean;
    FIssueTime: string;
    FIssueTime_Specified: boolean;
    FJobPositionCode: string;
    FJobPositionCode_Specified: boolean;
    FLineCountNumeric: Integer;
    FLineCountNumeric_Specified: boolean;
    FLineExtensionAmount: TXSDecimal;
    FLineExtensionAmount_Specified: boolean;
    FNote1: string;
    FNote1_Specified: boolean;
    FNote2: string;
    FNote2_Specified: boolean;
    FNote3: string;
    FNote3_Specified: boolean;
    FNote4: string;
    FNote4_Specified: boolean;
    FNote5: string;
    FNote5_Specified: boolean;
    FOrderReference_ID: string;
    FOrderReference_ID_Specified: boolean;
    FOrderReference_IssueDate: TXSDateTime;
    FOrderReference_IssueDate_Specified: boolean;
    FPayableAmount: TXSDecimal;
    FPayableAmount_Specified: boolean;
    FProfileID: string;
    FProfileID_Specified: boolean;
    FReceiverAlias: string;
    FReceiverAlias_Specified: boolean;
    FReceiver_CityName: string;
    FReceiver_CityName_Specified: boolean;
    FReceiver_Country: string;
    FReceiver_Country_Specified: boolean;
    FReceiver_Country_Code: string;
    FReceiver_Country_Code_Specified: boolean;
    FReceiver_ElectronicMail: string;
    FReceiver_ElectronicMail_Specified: boolean;
    FReceiver_PartyName: string;
    FReceiver_PartyName_Specified: boolean;
    FReceiver_PostalZone: string;
    FReceiver_PostalZone_Specified: boolean;
    FReceiver_TaxScheme: string;
    FReceiver_TaxScheme_Specified: boolean;
    FReceiver_Telephone: string;
    FReceiver_Telephone_Specified: boolean;
    FReceiver_VKN: string;
    FReceiver_VKN_Specified: boolean;
    FReceiver_WebsiteURI: string;
    FReceiver_WebsiteURI_Specified: boolean;
    FRecordDate: TXSDateTime;
    FRecordDate_Specified: boolean;
    FReferenceDocumentTypeCode: string;
    FReferenceDocumentTypeCode_Specified: boolean;
    FReturnInvoiceID: string;
    FReturnInvoiceID_Specified: boolean;
    FSenderAlias: string;
    FSenderAlias_Specified: boolean;
    FStatusMessage: string;
    FStatusMessage_Specified: boolean;
    FStatusProcessID: Integer;
    FStatusProcessID_Specified: boolean;
    FSupplier_CityName: string;
    FSupplier_CityName_Specified: boolean;
    FSupplier_Country: string;
    FSupplier_Country_Specified: boolean;
    FSupplier_Country_Code: string;
    FSupplier_Country_Code_Specified: boolean;
    FSupplier_ElectronicMail: string;
    FSupplier_ElectronicMail_Specified: boolean;
    FSupplier_PartyName: string;
    FSupplier_PartyName_Specified: boolean;
    FSupplier_PostalZone: string;
    FSupplier_PostalZone_Specified: boolean;
    FSupplier_TaxScheme: string;
    FSupplier_TaxScheme_Specified: boolean;
    FSupplier_Telephone: string;
    FSupplier_Telephone_Specified: boolean;
    FSupplier_VKN: string;
    FSupplier_VKN_Specified: boolean;
    FSupplier_WebsiteURI: string;
    FSupplier_WebsiteURI_Specified: boolean;
    FTaxExclusiveAmount: TXSDecimal;
    FTaxExclusiveAmount_Specified: boolean;
    FTaxInclusiveAmount: TXSDecimal;
    FTaxInclusiveAmount_Specified: boolean;
    FTaxTotal_TaxAmount: TXSDecimal;
    FTaxTotal_TaxAmount_Specified: boolean;
    FUBLVersionID: string;
    FUBLVersionID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FUpdatedAt: TXSDateTime;
    FUpdatedAt_Specified: boolean;
    procedure SetAllowanceCharge_Amount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  AllowanceCharge_Amount_Specified(Index: Integer): boolean;
    procedure SetAllowanceTotalAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  AllowanceTotalAmount_Specified(Index: Integer): boolean;
    procedure SetApprovalHierarchyCode(Index: Integer; const Astring: string);
    function  ApprovalHierarchyCode_Specified(Index: Integer): boolean;
    procedure SetCode(Index: Integer; const AInteger: Integer);
    function  Code_Specified(Index: Integer): boolean;
    procedure SetCommercialDateTime(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CommercialDateTime_Specified(Index: Integer): boolean;
    procedure SetCommercialEnvelopeUUID(Index: Integer; const Astring: string);
    function  CommercialEnvelopeUUID_Specified(Index: Integer): boolean;
    procedure SetCommercialResponse(Index: Integer; const Astring: string);
    function  CommercialResponse_Specified(Index: Integer): boolean;
    procedure SetCommercialResponseUUID(Index: Integer; const Astring: string);
    function  CommercialResponseUUID_Specified(Index: Integer): boolean;
    procedure SetCompanyCode(Index: Integer; const Astring: string);
    function  CompanyCode_Specified(Index: Integer): boolean;
    procedure SetConnectionSettingCode(Index: Integer; const Astring: string);
    function  ConnectionSettingCode_Specified(Index: Integer): boolean;
    procedure SetCopyIndicator(Index: Integer; const ABoolean: Boolean);
    function  CopyIndicator_Specified(Index: Integer): boolean;
    procedure SetCustomizationID(Index: Integer; const Astring: string);
    function  CustomizationID_Specified(Index: Integer): boolean;
    procedure SetDescription(Index: Integer; const Astring: string);
    function  Description_Specified(Index: Integer): boolean;
    procedure SetDespatchDocumentReference_ID(Index: Integer; const Astring: string);
    function  DespatchDocumentReference_ID_Specified(Index: Integer): boolean;
    procedure SetDespatchDocumentReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  DespatchDocumentReference_IssueDate_Specified(Index: Integer): boolean;
    procedure SetDocumentCurrencyCode(Index: Integer; const Astring: string);
    function  DocumentCurrencyCode_Specified(Index: Integer): boolean;
    procedure SetDocumentNo(Index: Integer; const Astring: string);
    function  DocumentNo_Specified(Index: Integer): boolean;
    procedure SetERPInvoiceType(Index: Integer; const Astring: string);
    function  ERPInvoiceType_Specified(Index: Integer): boolean;
    procedure SetETTN(Index: Integer; const Astring: string);
    function  ETTN_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetInstanceIdentifier(Index: Integer; const Astring: string);
    function  InstanceIdentifier_Specified(Index: Integer): boolean;
    procedure SetInvoiceTypeCode(Index: Integer; const Astring: string);
    function  InvoiceTypeCode_Specified(Index: Integer): boolean;
    procedure SetIsApproved(Index: Integer; const ABoolean: Boolean);
    function  IsApproved_Specified(Index: Integer): boolean;
    procedure SetIssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  IssueDate_Specified(Index: Integer): boolean;
    procedure SetIssueTime(Index: Integer; const Astring: string);
    function  IssueTime_Specified(Index: Integer): boolean;
    procedure SetJobPositionCode(Index: Integer; const Astring: string);
    function  JobPositionCode_Specified(Index: Integer): boolean;
    procedure SetLineCountNumeric(Index: Integer; const AInteger: Integer);
    function  LineCountNumeric_Specified(Index: Integer): boolean;
    procedure SetLineExtensionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  LineExtensionAmount_Specified(Index: Integer): boolean;
    procedure SetNote1(Index: Integer; const Astring: string);
    function  Note1_Specified(Index: Integer): boolean;
    procedure SetNote2(Index: Integer; const Astring: string);
    function  Note2_Specified(Index: Integer): boolean;
    procedure SetNote3(Index: Integer; const Astring: string);
    function  Note3_Specified(Index: Integer): boolean;
    procedure SetNote4(Index: Integer; const Astring: string);
    function  Note4_Specified(Index: Integer): boolean;
    procedure SetNote5(Index: Integer; const Astring: string);
    function  Note5_Specified(Index: Integer): boolean;
    procedure SetOrderReference_ID(Index: Integer; const Astring: string);
    function  OrderReference_ID_Specified(Index: Integer): boolean;
    procedure SetOrderReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  OrderReference_IssueDate_Specified(Index: Integer): boolean;
    procedure SetPayableAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  PayableAmount_Specified(Index: Integer): boolean;
    procedure SetProfileID(Index: Integer; const Astring: string);
    function  ProfileID_Specified(Index: Integer): boolean;
    procedure SetReceiverAlias(Index: Integer; const Astring: string);
    function  ReceiverAlias_Specified(Index: Integer): boolean;
    procedure SetReceiver_CityName(Index: Integer; const Astring: string);
    function  Receiver_CityName_Specified(Index: Integer): boolean;
    procedure SetReceiver_Country(Index: Integer; const Astring: string);
    function  Receiver_Country_Specified(Index: Integer): boolean;
    procedure SetReceiver_Country_Code(Index: Integer; const Astring: string);
    function  Receiver_Country_Code_Specified(Index: Integer): boolean;
    procedure SetReceiver_ElectronicMail(Index: Integer; const Astring: string);
    function  Receiver_ElectronicMail_Specified(Index: Integer): boolean;
    procedure SetReceiver_PartyName(Index: Integer; const Astring: string);
    function  Receiver_PartyName_Specified(Index: Integer): boolean;
    procedure SetReceiver_PostalZone(Index: Integer; const Astring: string);
    function  Receiver_PostalZone_Specified(Index: Integer): boolean;
    procedure SetReceiver_TaxScheme(Index: Integer; const Astring: string);
    function  Receiver_TaxScheme_Specified(Index: Integer): boolean;
    procedure SetReceiver_Telephone(Index: Integer; const Astring: string);
    function  Receiver_Telephone_Specified(Index: Integer): boolean;
    procedure SetReceiver_VKN(Index: Integer; const Astring: string);
    function  Receiver_VKN_Specified(Index: Integer): boolean;
    procedure SetReceiver_WebsiteURI(Index: Integer; const Astring: string);
    function  Receiver_WebsiteURI_Specified(Index: Integer): boolean;
    procedure SetRecordDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  RecordDate_Specified(Index: Integer): boolean;
    procedure SetReferenceDocumentTypeCode(Index: Integer; const Astring: string);
    function  ReferenceDocumentTypeCode_Specified(Index: Integer): boolean;
    procedure SetReturnInvoiceID(Index: Integer; const Astring: string);
    function  ReturnInvoiceID_Specified(Index: Integer): boolean;
    procedure SetSenderAlias(Index: Integer; const Astring: string);
    function  SenderAlias_Specified(Index: Integer): boolean;
    procedure SetStatusMessage(Index: Integer; const Astring: string);
    function  StatusMessage_Specified(Index: Integer): boolean;
    procedure SetStatusProcessID(Index: Integer; const AInteger: Integer);
    function  StatusProcessID_Specified(Index: Integer): boolean;
    procedure SetSupplier_CityName(Index: Integer; const Astring: string);
    function  Supplier_CityName_Specified(Index: Integer): boolean;
    procedure SetSupplier_Country(Index: Integer; const Astring: string);
    function  Supplier_Country_Specified(Index: Integer): boolean;
    procedure SetSupplier_Country_Code(Index: Integer; const Astring: string);
    function  Supplier_Country_Code_Specified(Index: Integer): boolean;
    procedure SetSupplier_ElectronicMail(Index: Integer; const Astring: string);
    function  Supplier_ElectronicMail_Specified(Index: Integer): boolean;
    procedure SetSupplier_PartyName(Index: Integer; const Astring: string);
    function  Supplier_PartyName_Specified(Index: Integer): boolean;
    procedure SetSupplier_PostalZone(Index: Integer; const Astring: string);
    function  Supplier_PostalZone_Specified(Index: Integer): boolean;
    procedure SetSupplier_TaxScheme(Index: Integer; const Astring: string);
    function  Supplier_TaxScheme_Specified(Index: Integer): boolean;
    procedure SetSupplier_Telephone(Index: Integer; const Astring: string);
    function  Supplier_Telephone_Specified(Index: Integer): boolean;
    procedure SetSupplier_VKN(Index: Integer; const Astring: string);
    function  Supplier_VKN_Specified(Index: Integer): boolean;
    procedure SetSupplier_WebsiteURI(Index: Integer; const Astring: string);
    function  Supplier_WebsiteURI_Specified(Index: Integer): boolean;
    procedure SetTaxExclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxExclusiveAmount_Specified(Index: Integer): boolean;
    procedure SetTaxInclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxInclusiveAmount_Specified(Index: Integer): boolean;
    procedure SetTaxTotal_TaxAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TaxTotal_TaxAmount_Specified(Index: Integer): boolean;
    procedure SetUBLVersionID(Index: Integer; const Astring: string);
    function  UBLVersionID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetUpdatedAt(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  UpdatedAt_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AllowanceCharge_Amount:              TXSDecimal   Index (IS_OPTN) read FAllowanceCharge_Amount write SetAllowanceCharge_Amount stored AllowanceCharge_Amount_Specified;
    property AllowanceTotalAmount:                TXSDecimal   Index (IS_OPTN) read FAllowanceTotalAmount write SetAllowanceTotalAmount stored AllowanceTotalAmount_Specified;
    property ApprovalHierarchyCode:               string       Index (IS_OPTN or IS_NLBL) read FApprovalHierarchyCode write SetApprovalHierarchyCode stored ApprovalHierarchyCode_Specified;
    property Code:                                Integer      Index (IS_OPTN) read FCode write SetCode stored Code_Specified;
    property CommercialDateTime:                  TXSDateTime  Index (IS_OPTN or IS_NLBL) read FCommercialDateTime write SetCommercialDateTime stored CommercialDateTime_Specified;
    property CommercialEnvelopeUUID:              string       Index (IS_OPTN or IS_NLBL) read FCommercialEnvelopeUUID write SetCommercialEnvelopeUUID stored CommercialEnvelopeUUID_Specified;
    property CommercialResponse:                  string       Index (IS_OPTN or IS_NLBL) read FCommercialResponse write SetCommercialResponse stored CommercialResponse_Specified;
    property CommercialResponseUUID:              string       Index (IS_OPTN or IS_NLBL) read FCommercialResponseUUID write SetCommercialResponseUUID stored CommercialResponseUUID_Specified;
    property CompanyCode:                         string       Index (IS_OPTN or IS_NLBL) read FCompanyCode write SetCompanyCode stored CompanyCode_Specified;
    property ConnectionSettingCode:               string       Index (IS_OPTN or IS_NLBL) read FConnectionSettingCode write SetConnectionSettingCode stored ConnectionSettingCode_Specified;
    property CopyIndicator:                       Boolean      Index (IS_OPTN) read FCopyIndicator write SetCopyIndicator stored CopyIndicator_Specified;
    property CustomizationID:                     string       Index (IS_OPTN or IS_NLBL) read FCustomizationID write SetCustomizationID stored CustomizationID_Specified;
    property Description:                         string       Index (IS_OPTN or IS_NLBL) read FDescription write SetDescription stored Description_Specified;
    property DespatchDocumentReference_ID:        string       Index (IS_OPTN or IS_NLBL) read FDespatchDocumentReference_ID write SetDespatchDocumentReference_ID stored DespatchDocumentReference_ID_Specified;
    property DespatchDocumentReference_IssueDate: TXSDateTime  Index (IS_OPTN) read FDespatchDocumentReference_IssueDate write SetDespatchDocumentReference_IssueDate stored DespatchDocumentReference_IssueDate_Specified;
    property DocumentCurrencyCode:                string       Index (IS_OPTN or IS_NLBL) read FDocumentCurrencyCode write SetDocumentCurrencyCode stored DocumentCurrencyCode_Specified;
    property DocumentNo:                          string       Index (IS_OPTN or IS_NLBL) read FDocumentNo write SetDocumentNo stored DocumentNo_Specified;
    property ERPInvoiceType:                      string       Index (IS_OPTN or IS_NLBL) read FERPInvoiceType write SetERPInvoiceType stored ERPInvoiceType_Specified;
    property ETTN:                                string       Index (IS_OPTN or IS_NLBL) read FETTN write SetETTN stored ETTN_Specified;
    property ID:                                  string       Index (IS_OPTN or IS_NLBL) read FID write SetID stored ID_Specified;
    property InstanceIdentifier:                  string       Index (IS_OPTN or IS_NLBL) read FInstanceIdentifier write SetInstanceIdentifier stored InstanceIdentifier_Specified;
    property InvoiceTypeCode:                     string       Index (IS_OPTN or IS_NLBL) read FInvoiceTypeCode write SetInvoiceTypeCode stored InvoiceTypeCode_Specified;
    property IsApproved:                          Boolean      Index (IS_OPTN) read FIsApproved write SetIsApproved stored IsApproved_Specified;
    property IssueDate:                           TXSDateTime  Index (IS_OPTN) read FIssueDate write SetIssueDate stored IssueDate_Specified;
    property IssueTime:                           string       Index (IS_OPTN or IS_NLBL) read FIssueTime write SetIssueTime stored IssueTime_Specified;
    property JobPositionCode:                     string       Index (IS_OPTN or IS_NLBL) read FJobPositionCode write SetJobPositionCode stored JobPositionCode_Specified;
    property LineCountNumeric:                    Integer      Index (IS_OPTN) read FLineCountNumeric write SetLineCountNumeric stored LineCountNumeric_Specified;
    property LineExtensionAmount:                 TXSDecimal   Index (IS_OPTN) read FLineExtensionAmount write SetLineExtensionAmount stored LineExtensionAmount_Specified;
    property Note1:                               string       Index (IS_OPTN or IS_NLBL) read FNote1 write SetNote1 stored Note1_Specified;
    property Note2:                               string       Index (IS_OPTN or IS_NLBL) read FNote2 write SetNote2 stored Note2_Specified;
    property Note3:                               string       Index (IS_OPTN or IS_NLBL) read FNote3 write SetNote3 stored Note3_Specified;
    property Note4:                               string       Index (IS_OPTN or IS_NLBL) read FNote4 write SetNote4 stored Note4_Specified;
    property Note5:                               string       Index (IS_OPTN or IS_NLBL) read FNote5 write SetNote5 stored Note5_Specified;
    property OrderReference_ID:                   string       Index (IS_OPTN or IS_NLBL) read FOrderReference_ID write SetOrderReference_ID stored OrderReference_ID_Specified;
    property OrderReference_IssueDate:            TXSDateTime  Index (IS_OPTN) read FOrderReference_IssueDate write SetOrderReference_IssueDate stored OrderReference_IssueDate_Specified;
    property PayableAmount:                       TXSDecimal   Index (IS_OPTN) read FPayableAmount write SetPayableAmount stored PayableAmount_Specified;
    property ProfileID:                           string       Index (IS_OPTN or IS_NLBL) read FProfileID write SetProfileID stored ProfileID_Specified;
    property ReceiverAlias:                       string       Index (IS_OPTN or IS_NLBL) read FReceiverAlias write SetReceiverAlias stored ReceiverAlias_Specified;
    property Receiver_CityName:                   string       Index (IS_OPTN or IS_NLBL) read FReceiver_CityName write SetReceiver_CityName stored Receiver_CityName_Specified;
    property Receiver_Country:                    string       Index (IS_OPTN or IS_NLBL) read FReceiver_Country write SetReceiver_Country stored Receiver_Country_Specified;
    property Receiver_Country_Code:               string       Index (IS_OPTN or IS_NLBL) read FReceiver_Country_Code write SetReceiver_Country_Code stored Receiver_Country_Code_Specified;
    property Receiver_ElectronicMail:             string       Index (IS_OPTN or IS_NLBL) read FReceiver_ElectronicMail write SetReceiver_ElectronicMail stored Receiver_ElectronicMail_Specified;
    property Receiver_PartyName:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_PartyName write SetReceiver_PartyName stored Receiver_PartyName_Specified;
    property Receiver_PostalZone:                 string       Index (IS_OPTN or IS_NLBL) read FReceiver_PostalZone write SetReceiver_PostalZone stored Receiver_PostalZone_Specified;
    property Receiver_TaxScheme:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_TaxScheme write SetReceiver_TaxScheme stored Receiver_TaxScheme_Specified;
    property Receiver_Telephone:                  string       Index (IS_OPTN or IS_NLBL) read FReceiver_Telephone write SetReceiver_Telephone stored Receiver_Telephone_Specified;
    property Receiver_VKN:                        string       Index (IS_OPTN or IS_NLBL) read FReceiver_VKN write SetReceiver_VKN stored Receiver_VKN_Specified;
    property Receiver_WebsiteURI:                 string       Index (IS_OPTN or IS_NLBL) read FReceiver_WebsiteURI write SetReceiver_WebsiteURI stored Receiver_WebsiteURI_Specified;
    property RecordDate:                          TXSDateTime  Index (IS_OPTN) read FRecordDate write SetRecordDate stored RecordDate_Specified;
    property ReferenceDocumentTypeCode:           string       Index (IS_OPTN or IS_NLBL) read FReferenceDocumentTypeCode write SetReferenceDocumentTypeCode stored ReferenceDocumentTypeCode_Specified;
    property ReturnInvoiceID:                     string       Index (IS_OPTN or IS_NLBL) read FReturnInvoiceID write SetReturnInvoiceID stored ReturnInvoiceID_Specified;
    property SenderAlias:                         string       Index (IS_OPTN or IS_NLBL) read FSenderAlias write SetSenderAlias stored SenderAlias_Specified;
    property StatusMessage:                       string       Index (IS_OPTN or IS_NLBL) read FStatusMessage write SetStatusMessage stored StatusMessage_Specified;
    property StatusProcessID:                     Integer      Index (IS_OPTN) read FStatusProcessID write SetStatusProcessID stored StatusProcessID_Specified;
    property Supplier_CityName:                   string       Index (IS_OPTN or IS_NLBL) read FSupplier_CityName write SetSupplier_CityName stored Supplier_CityName_Specified;
    property Supplier_Country:                    string       Index (IS_OPTN or IS_NLBL) read FSupplier_Country write SetSupplier_Country stored Supplier_Country_Specified;
    property Supplier_Country_Code:               string       Index (IS_OPTN or IS_NLBL) read FSupplier_Country_Code write SetSupplier_Country_Code stored Supplier_Country_Code_Specified;
    property Supplier_ElectronicMail:             string       Index (IS_OPTN or IS_NLBL) read FSupplier_ElectronicMail write SetSupplier_ElectronicMail stored Supplier_ElectronicMail_Specified;
    property Supplier_PartyName:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_PartyName write SetSupplier_PartyName stored Supplier_PartyName_Specified;
    property Supplier_PostalZone:                 string       Index (IS_OPTN or IS_NLBL) read FSupplier_PostalZone write SetSupplier_PostalZone stored Supplier_PostalZone_Specified;
    property Supplier_TaxScheme:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_TaxScheme write SetSupplier_TaxScheme stored Supplier_TaxScheme_Specified;
    property Supplier_Telephone:                  string       Index (IS_OPTN or IS_NLBL) read FSupplier_Telephone write SetSupplier_Telephone stored Supplier_Telephone_Specified;
    property Supplier_VKN:                        string       Index (IS_OPTN or IS_NLBL) read FSupplier_VKN write SetSupplier_VKN stored Supplier_VKN_Specified;
    property Supplier_WebsiteURI:                 string       Index (IS_OPTN or IS_NLBL) read FSupplier_WebsiteURI write SetSupplier_WebsiteURI stored Supplier_WebsiteURI_Specified;
    property TaxExclusiveAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxExclusiveAmount write SetTaxExclusiveAmount stored TaxExclusiveAmount_Specified;
    property TaxInclusiveAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxInclusiveAmount write SetTaxInclusiveAmount stored TaxInclusiveAmount_Specified;
    property TaxTotal_TaxAmount:                  TXSDecimal   Index (IS_OPTN) read FTaxTotal_TaxAmount write SetTaxTotal_TaxAmount stored TaxTotal_TaxAmount_Specified;
    property UBLVersionID:                        string       Index (IS_OPTN or IS_NLBL) read FUBLVersionID write SetUBLVersionID stored UBLVersionID_Specified;
    property UUID:                                string       Index (IS_OPTN or IS_NLBL) read FUUID write SetUUID stored UUID_Specified;
    property UpdatedAt:                           TXSDateTime  Index (IS_OPTN) read FUpdatedAt write SetUpdatedAt stored UpdatedAt_Specified;
  end;



  // ************************************************************************ //
  // XML       : OutboxInvoiceHeader, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data
  // ************************************************************************ //
  OutboxInvoiceHeader2 = class(OutboxInvoiceHeader)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : InboxInvoiceHeader, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data
  // ************************************************************************ //
  InboxInvoiceHeader2 = class(InboxInvoiceHeader)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Contracts.ReportInvoiceListRequest, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_ReportInvoiceListRequest = class(TRemotable)
  private
    FBeginInvoiceDate: TXSDateTime;
    FBeginInvoiceDate_Specified: boolean;
    FBeginRecordDateTime: TXSDateTime;
    FBeginUpdateDate: TXSDateTime;
    FBeginUpdateDate_Specified: boolean;
    FCustomerVKN: ArrayOfstring;
    FCustomerVKN_Specified: boolean;
    FEndInvoiceDate: TXSDateTime;
    FEndInvoiceDate_Specified: boolean;
    FEndRecordDateTime: TXSDateTime;
    FEndUpdateDate: TXSDateTime;
    FEndUpdateDate_Specified: boolean;
    FExcludedExtensions: ArrayOfExtension;
    FExcludedExtensions_Specified: boolean;
    FID: ArrayOfstring;
    FID_Specified: boolean;
    FIncludedExtensions: ArrayOfExtension;
    FIncludedExtensions_Specified: boolean;
    FIsReaded: GlobalEnum_Bool;
    FIsUblDownLoaded: GlobalEnum_Bool;
    FOrderBy: GlobalEnum_OrderByType;
    FOrderBy_Specified: boolean;
    FProfile: Enums_InvoiceType;
    FRecordCount: Integer;
    FVKN: string;
    procedure SetBeginInvoiceDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  BeginInvoiceDate_Specified(Index: Integer): boolean;
    procedure SetBeginUpdateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  BeginUpdateDate_Specified(Index: Integer): boolean;
    procedure SetCustomerVKN(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  CustomerVKN_Specified(Index: Integer): boolean;
    procedure SetEndInvoiceDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndInvoiceDate_Specified(Index: Integer): boolean;
    procedure SetEndUpdateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  EndUpdateDate_Specified(Index: Integer): boolean;
    procedure SetExcludedExtensions(Index: Integer; const AArrayOfExtension: ArrayOfExtension);
    function  ExcludedExtensions_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetIncludedExtensions(Index: Integer; const AArrayOfExtension: ArrayOfExtension);
    function  IncludedExtensions_Specified(Index: Integer): boolean;
    procedure SetOrderBy(Index: Integer; const AGlobalEnum_OrderByType: GlobalEnum_OrderByType);
    function  OrderBy_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property BeginInvoiceDate:    TXSDateTime             Index (IS_OPTN or IS_NLBL) read FBeginInvoiceDate write SetBeginInvoiceDate stored BeginInvoiceDate_Specified;
    property BeginRecordDateTime: TXSDateTime             read FBeginRecordDateTime write FBeginRecordDateTime;
    property BeginUpdateDate:     TXSDateTime             Index (IS_OPTN or IS_NLBL) read FBeginUpdateDate write SetBeginUpdateDate stored BeginUpdateDate_Specified;
    property CustomerVKN:         ArrayOfstring           Index (IS_OPTN or IS_NLBL) read FCustomerVKN write SetCustomerVKN stored CustomerVKN_Specified;
    property EndInvoiceDate:      TXSDateTime             Index (IS_OPTN or IS_NLBL) read FEndInvoiceDate write SetEndInvoiceDate stored EndInvoiceDate_Specified;
    property EndRecordDateTime:   TXSDateTime             read FEndRecordDateTime write FEndRecordDateTime;
    property EndUpdateDate:       TXSDateTime             Index (IS_OPTN or IS_NLBL) read FEndUpdateDate write SetEndUpdateDate stored EndUpdateDate_Specified;
    property ExcludedExtensions:  ArrayOfExtension        Index (IS_OPTN or IS_NLBL) read FExcludedExtensions write SetExcludedExtensions stored ExcludedExtensions_Specified;
    property ID:                  ArrayOfstring           Index (IS_OPTN or IS_NLBL) read FID write SetID stored ID_Specified;
    property IncludedExtensions:  ArrayOfExtension        Index (IS_OPTN or IS_NLBL) read FIncludedExtensions write SetIncludedExtensions stored IncludedExtensions_Specified;
    property IsReaded:            GlobalEnum_Bool         read FIsReaded write FIsReaded;
    property IsUblDownLoaded:     GlobalEnum_Bool         read FIsUblDownLoaded write FIsUblDownLoaded;
    property OrderBy:             GlobalEnum_OrderByType  Index (IS_OPTN) read FOrderBy write SetOrderBy stored OrderBy_Specified;
    property Profile:             Enums_InvoiceType       read FProfile write FProfile;
    property RecordCount:         Integer                 read FRecordCount write FRecordCount;
    property VKN:                 string                  Index (IS_NLBL) read FVKN write FVKN;
  end;



  // ************************************************************************ //
  // XML       : Contracts.OutboundInvoiceListRequest, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_OutboundInvoiceListRequest = class(Contracts_ReportInvoiceListRequest)
  private
    FStatus: Enums_OutboundStatus;
    FUUIDList: ArrayOfstring;
    FUUIDList_Specified: boolean;
    procedure SetUUIDList(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  UUIDList_Specified(Index: Integer): boolean;
  published
    property Status:   Enums_OutboundStatus  read FStatus write FStatus;
    property UUIDList: ArrayOfstring         Index (IS_OPTN or IS_NLBL) read FUUIDList write SetUUIDList stored UUIDList_Specified;
  end;



  // ************************************************************************ //
  // XML       : Contracts.InboundInvoiceListRequest, global, <complexType>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_InboundInvoiceListRequest = class(Contracts_ReportInvoiceListRequest)
  private
    FIsIsisTrDownLoaded: GlobalEnum_Bool;
    FIsProcessed: GlobalEnum_Bool;
    FStatus: Enums_InboundStatus;
    FUUIDList: ArrayOfstring;
    FUUIDList_Specified: boolean;
    procedure SetUUIDList(Index: Integer; const AArrayOfstring: ArrayOfstring);
    function  UUIDList_Specified(Index: Integer): boolean;
  published
    property IsIsisTrDownLoaded: GlobalEnum_Bool      read FIsIsisTrDownLoaded write FIsIsisTrDownLoaded;
    property IsProcessed:        GlobalEnum_Bool      read FIsProcessed write FIsProcessed;
    property Status:             Enums_InboundStatus  read FStatus write FStatus;
    property UUIDList:           ArrayOfstring        Index (IS_OPTN or IS_NLBL) read FUUIDList write SetUUIDList stored UUIDList_Specified;
  end;



  // ************************************************************************ //
  // XML       : Contracts.OutboundInvoiceListRequest, global, <element>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_OutboundInvoiceListRequest2 = class(Contracts_OutboundInvoiceListRequest)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Contracts.ReportInvoiceListRequest, global, <element>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_ReportInvoiceListRequest2 = class(Contracts_ReportInvoiceListRequest)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Contracts.InboundInvoiceListRequest, global, <element>
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // ************************************************************************ //
  Contracts_InboundInvoiceListRequest2 = class(Contracts_InboundInvoiceListRequest)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://isisbilisim.com.tr/services/einvoice
  // soapAction: http://isisbilisim.com.tr/services/einvoice/IReportInvoiceList/%operationName%
  // style     : document
  // binding   : BasicHttpBinding_IReportInvoiceList
  // service   : ReportInvoiceList
  // port      : BasicHttpBinding_IReportInvoiceList
  // URL       : http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc
  // ************************************************************************ //
  IReportInvoiceList = interface(IInvokable)
  ['{2E7C0247-941F-973F-E747-5B3D15BFEB78}']
    function  OutboundInvoiceListByFilter(const request: Contracts_OutboundInvoiceListRequest): ArrayOfOutboxInvoiceHeader; stdcall;
    function  SetOutboundInvoiceAsUblDownload(const VKN: string; const UUID: string): Boolean; stdcall;
    function  SetOutboundInvoiceAsReaded(const VKN: string; const UUID: string): Boolean; stdcall;
    function  InboundInvoiceListByFilter(const request: Contracts_InboundInvoiceListRequest): ArrayOfInboxInvoiceHeader; stdcall;
    function  SetInboundInvoiceAsIsisTrDownload(const VKN: string; const UUID: string): Boolean; stdcall;
    function  SetInboundInvoiceAsUblDownload(const VKN: string; const UUID: string): Boolean; stdcall;
    function  SetInboundInvoiceAsReaded(const VKN: string; const UUID: string): Boolean; stdcall;
    function  GetInboundExtensions(const VKN: string; const UUID: string): ArrayOfInvoiceExtension; stdcall;
    function  GetOutboundExtensions(const VKN: string; const UUID: string): ArrayOfInvoiceExtension; stdcall;
  end;

function GetIReportInvoiceList(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IReportInvoiceList;


implementation
  uses SysUtils;

function GetIReportInvoiceList(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IReportInvoiceList;
const
  defWSDL = 'http://musteritestws.isisbilisim.com.tr/services/einvoice/ReportInvoiceList.svc?wsdl';
  defURL  = 'http://musteritestws.isisbilisim.com.tr/Services/einvoice/ReportInvoiceList.svc';
  defSvc  = 'ReportInvoiceList';
  defPrt  = 'BasicHttpBinding_IReportInvoiceList';
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
    Result := (RIO as IReportInvoiceList);
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


procedure Extension.SetStructure(Index: Integer; const Astring: string);
begin
  FStructure := Astring;
  FStructure_Specified := True;
end;

function Extension.Structure_Specified(Index: Integer): boolean;
begin
  Result := FStructure_Specified;
end;

procedure Extension.SetValuePart1(Index: Integer; const Astring: string);
begin
  FValuePart1 := Astring;
  FValuePart1_Specified := True;
end;

function Extension.ValuePart1_Specified(Index: Integer): boolean;
begin
  Result := FValuePart1_Specified;
end;

procedure Extension.SetValuePart2(Index: Integer; const Astring: string);
begin
  FValuePart2 := Astring;
  FValuePart2_Specified := True;
end;

function Extension.ValuePart2_Specified(Index: Integer): boolean;
begin
  Result := FValuePart2_Specified;
end;

procedure Extension.SetValuePart3(Index: Integer; const Astring: string);
begin
  FValuePart3 := Astring;
  FValuePart3_Specified := True;
end;

function Extension.ValuePart3_Specified(Index: Integer): boolean;
begin
  Result := FValuePart3_Specified;
end;

procedure Extension.SetValuePart4(Index: Integer; const Astring: string);
begin
  FValuePart4 := Astring;
  FValuePart4_Specified := True;
end;

function Extension.ValuePart4_Specified(Index: Integer): boolean;
begin
  Result := FValuePart4_Specified;
end;

destructor InvoiceExtension.Destroy;
begin
  SysUtils.FreeAndNil(FCreateDate);
  SysUtils.FreeAndNil(FUpdatedDate);
  inherited Destroy;
end;

procedure InvoiceExtension.SetCreateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCreateDate := ATXSDateTime;
  FCreateDate_Specified := True;
end;

function InvoiceExtension.CreateDate_Specified(Index: Integer): boolean;
begin
  Result := FCreateDate_Specified;
end;

procedure InvoiceExtension.SetETTN(Index: Integer; const Astring: string);
begin
  FETTN := Astring;
  FETTN_Specified := True;
end;

function InvoiceExtension.ETTN_Specified(Index: Integer): boolean;
begin
  Result := FETTN_Specified;
end;

procedure InvoiceExtension.SetIsActive(Index: Integer; const ABoolean: Boolean);
begin
  FIsActive := ABoolean;
  FIsActive_Specified := True;
end;

function InvoiceExtension.IsActive_Specified(Index: Integer): boolean;
begin
  Result := FIsActive_Specified;
end;

procedure InvoiceExtension.SetUpdatedDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FUpdatedDate := ATXSDateTime;
  FUpdatedDate_Specified := True;
end;

function InvoiceExtension.UpdatedDate_Specified(Index: Integer): boolean;
begin
  Result := FUpdatedDate_Specified;
end;

procedure InvoiceExtension.SetUserCode(Index: Integer; const AInteger: Integer);
begin
  FUserCode := AInteger;
  FUserCode_Specified := True;
end;

function InvoiceExtension.UserCode_Specified(Index: Integer): boolean;
begin
  Result := FUserCode_Specified;
end;

destructor OutboxInvoiceHeader.Destroy;
begin
  SysUtils.FreeAndNil(FAllowanceCharge_Amount);
  SysUtils.FreeAndNil(FAllowanceTotalAmount);
  SysUtils.FreeAndNil(FDespatchDocumentReference_IssueDate);
  SysUtils.FreeAndNil(FIssueDate);
  SysUtils.FreeAndNil(FLineExtensionAmount);
  SysUtils.FreeAndNil(FOrderReference_IssueDate);
  SysUtils.FreeAndNil(FPayableAmount);
  SysUtils.FreeAndNil(FRecordDate);
  SysUtils.FreeAndNil(FTaxExclusiveAmount);
  SysUtils.FreeAndNil(FTaxInclusiveAmount);
  SysUtils.FreeAndNil(FTaxTotal_TaxAmount);
  inherited Destroy;
end;

procedure OutboxInvoiceHeader.SetAllowanceCharge_Amount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAllowanceCharge_Amount := ATXSDecimal;
  FAllowanceCharge_Amount_Specified := True;
end;

function OutboxInvoiceHeader.AllowanceCharge_Amount_Specified(Index: Integer): boolean;
begin
  Result := FAllowanceCharge_Amount_Specified;
end;

procedure OutboxInvoiceHeader.SetAllowanceTotalAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAllowanceTotalAmount := ATXSDecimal;
  FAllowanceTotalAmount_Specified := True;
end;

function OutboxInvoiceHeader.AllowanceTotalAmount_Specified(Index: Integer): boolean;
begin
  Result := FAllowanceTotalAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetApprovalHieararcyCode(Index: Integer; const Astring: string);
begin
  FApprovalHieararcyCode := Astring;
  FApprovalHieararcyCode_Specified := True;
end;

function OutboxInvoiceHeader.ApprovalHieararcyCode_Specified(Index: Integer): boolean;
begin
  Result := FApprovalHieararcyCode_Specified;
end;

procedure OutboxInvoiceHeader.SetCode(Index: Integer; const AInteger: Integer);
begin
  FCode := AInteger;
  FCode_Specified := True;
end;

function OutboxInvoiceHeader.Code_Specified(Index: Integer): boolean;
begin
  Result := FCode_Specified;
end;

procedure OutboxInvoiceHeader.SetCompanyCode(Index: Integer; const Astring: string);
begin
  FCompanyCode := Astring;
  FCompanyCode_Specified := True;
end;

function OutboxInvoiceHeader.CompanyCode_Specified(Index: Integer): boolean;
begin
  Result := FCompanyCode_Specified;
end;

procedure OutboxInvoiceHeader.SetConnectionSettingCode(Index: Integer; const Astring: string);
begin
  FConnectionSettingCode := Astring;
  FConnectionSettingCode_Specified := True;
end;

function OutboxInvoiceHeader.ConnectionSettingCode_Specified(Index: Integer): boolean;
begin
  Result := FConnectionSettingCode_Specified;
end;

procedure OutboxInvoiceHeader.SetCopyIndicator(Index: Integer; const ABoolean: Boolean);
begin
  FCopyIndicator := ABoolean;
  FCopyIndicator_Specified := True;
end;

function OutboxInvoiceHeader.CopyIndicator_Specified(Index: Integer): boolean;
begin
  Result := FCopyIndicator_Specified;
end;

procedure OutboxInvoiceHeader.SetCustomizationID(Index: Integer; const Astring: string);
begin
  FCustomizationID := Astring;
  FCustomizationID_Specified := True;
end;

function OutboxInvoiceHeader.CustomizationID_Specified(Index: Integer): boolean;
begin
  Result := FCustomizationID_Specified;
end;

procedure OutboxInvoiceHeader.SetDespatchDocumentReference_ID(Index: Integer; const Astring: string);
begin
  FDespatchDocumentReference_ID := Astring;
  FDespatchDocumentReference_ID_Specified := True;
end;

function OutboxInvoiceHeader.DespatchDocumentReference_ID_Specified(Index: Integer): boolean;
begin
  Result := FDespatchDocumentReference_ID_Specified;
end;

procedure OutboxInvoiceHeader.SetDespatchDocumentReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FDespatchDocumentReference_IssueDate := ATXSDateTime;
  FDespatchDocumentReference_IssueDate_Specified := True;
end;

function OutboxInvoiceHeader.DespatchDocumentReference_IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FDespatchDocumentReference_IssueDate_Specified;
end;

procedure OutboxInvoiceHeader.SetDocumentCurrencyCode(Index: Integer; const Astring: string);
begin
  FDocumentCurrencyCode := Astring;
  FDocumentCurrencyCode_Specified := True;
end;

function OutboxInvoiceHeader.DocumentCurrencyCode_Specified(Index: Integer): boolean;
begin
  Result := FDocumentCurrencyCode_Specified;
end;

procedure OutboxInvoiceHeader.SetDocumentNo(Index: Integer; const Astring: string);
begin
  FDocumentNo := Astring;
  FDocumentNo_Specified := True;
end;

function OutboxInvoiceHeader.DocumentNo_Specified(Index: Integer): boolean;
begin
  Result := FDocumentNo_Specified;
end;

procedure OutboxInvoiceHeader.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function OutboxInvoiceHeader.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure OutboxInvoiceHeader.SetInstanceIdentifier(Index: Integer; const Astring: string);
begin
  FInstanceIdentifier := Astring;
  FInstanceIdentifier_Specified := True;
end;

function OutboxInvoiceHeader.InstanceIdentifier_Specified(Index: Integer): boolean;
begin
  Result := FInstanceIdentifier_Specified;
end;

procedure OutboxInvoiceHeader.SetInvoiceTypeCode(Index: Integer; const Astring: string);
begin
  FInvoiceTypeCode := Astring;
  FInvoiceTypeCode_Specified := True;
end;

function OutboxInvoiceHeader.InvoiceTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceTypeCode_Specified;
end;

procedure OutboxInvoiceHeader.SetIssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FIssueDate := ATXSDateTime;
  FIssueDate_Specified := True;
end;

function OutboxInvoiceHeader.IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FIssueDate_Specified;
end;

procedure OutboxInvoiceHeader.SetIssueTime(Index: Integer; const Astring: string);
begin
  FIssueTime := Astring;
  FIssueTime_Specified := True;
end;

function OutboxInvoiceHeader.IssueTime_Specified(Index: Integer): boolean;
begin
  Result := FIssueTime_Specified;
end;

procedure OutboxInvoiceHeader.SetJobPositionCode(Index: Integer; const Astring: string);
begin
  FJobPositionCode := Astring;
  FJobPositionCode_Specified := True;
end;

function OutboxInvoiceHeader.JobPositionCode_Specified(Index: Integer): boolean;
begin
  Result := FJobPositionCode_Specified;
end;

procedure OutboxInvoiceHeader.SetLineCountNumeric(Index: Integer; const AInteger: Integer);
begin
  FLineCountNumeric := AInteger;
  FLineCountNumeric_Specified := True;
end;

function OutboxInvoiceHeader.LineCountNumeric_Specified(Index: Integer): boolean;
begin
  Result := FLineCountNumeric_Specified;
end;

procedure OutboxInvoiceHeader.SetLineExtensionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FLineExtensionAmount := ATXSDecimal;
  FLineExtensionAmount_Specified := True;
end;

function OutboxInvoiceHeader.LineExtensionAmount_Specified(Index: Integer): boolean;
begin
  Result := FLineExtensionAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetNote1(Index: Integer; const Astring: string);
begin
  FNote1 := Astring;
  FNote1_Specified := True;
end;

function OutboxInvoiceHeader.Note1_Specified(Index: Integer): boolean;
begin
  Result := FNote1_Specified;
end;

procedure OutboxInvoiceHeader.SetNote2(Index: Integer; const Astring: string);
begin
  FNote2 := Astring;
  FNote2_Specified := True;
end;

function OutboxInvoiceHeader.Note2_Specified(Index: Integer): boolean;
begin
  Result := FNote2_Specified;
end;

procedure OutboxInvoiceHeader.SetNote3(Index: Integer; const Astring: string);
begin
  FNote3 := Astring;
  FNote3_Specified := True;
end;

function OutboxInvoiceHeader.Note3_Specified(Index: Integer): boolean;
begin
  Result := FNote3_Specified;
end;

procedure OutboxInvoiceHeader.SetNote4(Index: Integer; const Astring: string);
begin
  FNote4 := Astring;
  FNote4_Specified := True;
end;

function OutboxInvoiceHeader.Note4_Specified(Index: Integer): boolean;
begin
  Result := FNote4_Specified;
end;

procedure OutboxInvoiceHeader.SetNote5(Index: Integer; const Astring: string);
begin
  FNote5 := Astring;
  FNote5_Specified := True;
end;

function OutboxInvoiceHeader.Note5_Specified(Index: Integer): boolean;
begin
  Result := FNote5_Specified;
end;

procedure OutboxInvoiceHeader.SetOrderReference_ID(Index: Integer; const Astring: string);
begin
  FOrderReference_ID := Astring;
  FOrderReference_ID_Specified := True;
end;

function OutboxInvoiceHeader.OrderReference_ID_Specified(Index: Integer): boolean;
begin
  Result := FOrderReference_ID_Specified;
end;

procedure OutboxInvoiceHeader.SetOrderReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FOrderReference_IssueDate := ATXSDateTime;
  FOrderReference_IssueDate_Specified := True;
end;

function OutboxInvoiceHeader.OrderReference_IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FOrderReference_IssueDate_Specified;
end;

procedure OutboxInvoiceHeader.SetPayableAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FPayableAmount := ATXSDecimal;
  FPayableAmount_Specified := True;
end;

function OutboxInvoiceHeader.PayableAmount_Specified(Index: Integer): boolean;
begin
  Result := FPayableAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetProfileID(Index: Integer; const Astring: string);
begin
  FProfileID := Astring;
  FProfileID_Specified := True;
end;

function OutboxInvoiceHeader.ProfileID_Specified(Index: Integer): boolean;
begin
  Result := FProfileID_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_CityName(Index: Integer; const Astring: string);
begin
  FReceiver_CityName := Astring;
  FReceiver_CityName_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_CityName_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_CityName_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_Country(Index: Integer; const Astring: string);
begin
  FReceiver_Country := Astring;
  FReceiver_Country_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_Country_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Country_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_Country_Code(Index: Integer; const Astring: string);
begin
  FReceiver_Country_Code := Astring;
  FReceiver_Country_Code_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_Country_Code_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Country_Code_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_ElectronicMail(Index: Integer; const Astring: string);
begin
  FReceiver_ElectronicMail := Astring;
  FReceiver_ElectronicMail_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_ElectronicMail_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_ElectronicMail_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_PartyName(Index: Integer; const Astring: string);
begin
  FReceiver_PartyName := Astring;
  FReceiver_PartyName_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_PartyName_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_PartyName_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_PostalZone(Index: Integer; const Astring: string);
begin
  FReceiver_PostalZone := Astring;
  FReceiver_PostalZone_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_PostalZone_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_TaxScheme(Index: Integer; const Astring: string);
begin
  FReceiver_TaxScheme := Astring;
  FReceiver_TaxScheme_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_TaxScheme_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_TaxScheme_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_Telephone(Index: Integer; const Astring: string);
begin
  FReceiver_Telephone := Astring;
  FReceiver_Telephone_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_Telephone_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Telephone_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_VKN(Index: Integer; const Astring: string);
begin
  FReceiver_VKN := Astring;
  FReceiver_VKN_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_VKN_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_VKN_Specified;
end;

procedure OutboxInvoiceHeader.SetReceiver_WebsiteURI(Index: Integer; const Astring: string);
begin
  FReceiver_WebsiteURI := Astring;
  FReceiver_WebsiteURI_Specified := True;
end;

function OutboxInvoiceHeader.Receiver_WebsiteURI_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_WebsiteURI_Specified;
end;

procedure OutboxInvoiceHeader.SetRecordDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FRecordDate := ATXSDateTime;
  FRecordDate_Specified := True;
end;

function OutboxInvoiceHeader.RecordDate_Specified(Index: Integer): boolean;
begin
  Result := FRecordDate_Specified;
end;

procedure OutboxInvoiceHeader.SetReferenceDocumentTypeCode(Index: Integer; const Astring: string);
begin
  FReferenceDocumentTypeCode := Astring;
  FReferenceDocumentTypeCode_Specified := True;
end;

function OutboxInvoiceHeader.ReferenceDocumentTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FReferenceDocumentTypeCode_Specified;
end;

procedure OutboxInvoiceHeader.SetStatusMessage(Index: Integer; const Astring: string);
begin
  FStatusMessage := Astring;
  FStatusMessage_Specified := True;
end;

function OutboxInvoiceHeader.StatusMessage_Specified(Index: Integer): boolean;
begin
  Result := FStatusMessage_Specified;
end;

procedure OutboxInvoiceHeader.SetStatusProcessID(Index: Integer; const AInteger: Integer);
begin
  FStatusProcessID := AInteger;
  FStatusProcessID_Specified := True;
end;

function OutboxInvoiceHeader.StatusProcessID_Specified(Index: Integer): boolean;
begin
  Result := FStatusProcessID_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_CityName(Index: Integer; const Astring: string);
begin
  FSupplier_CityName := Astring;
  FSupplier_CityName_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_CityName_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_CityName_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_Country(Index: Integer; const Astring: string);
begin
  FSupplier_Country := Astring;
  FSupplier_Country_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_Country_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Country_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_Country_Code(Index: Integer; const Astring: string);
begin
  FSupplier_Country_Code := Astring;
  FSupplier_Country_Code_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_Country_Code_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Country_Code_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_ElectronicMail(Index: Integer; const Astring: string);
begin
  FSupplier_ElectronicMail := Astring;
  FSupplier_ElectronicMail_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_ElectronicMail_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_ElectronicMail_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_PartyName(Index: Integer; const Astring: string);
begin
  FSupplier_PartyName := Astring;
  FSupplier_PartyName_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_PartyName_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_PartyName_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_PostalZone(Index: Integer; const Astring: string);
begin
  FSupplier_PostalZone := Astring;
  FSupplier_PostalZone_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_PostalZone_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_TaxScheme(Index: Integer; const Astring: string);
begin
  FSupplier_TaxScheme := Astring;
  FSupplier_TaxScheme_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_TaxScheme_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_TaxScheme_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_Telephone(Index: Integer; const Astring: string);
begin
  FSupplier_Telephone := Astring;
  FSupplier_Telephone_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_Telephone_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Telephone_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_VKN(Index: Integer; const Astring: string);
begin
  FSupplier_VKN := Astring;
  FSupplier_VKN_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_VKN_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_VKN_Specified;
end;

procedure OutboxInvoiceHeader.SetSupplier_WebsiteURI(Index: Integer; const Astring: string);
begin
  FSupplier_WebsiteURI := Astring;
  FSupplier_WebsiteURI_Specified := True;
end;

function OutboxInvoiceHeader.Supplier_WebsiteURI_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_WebsiteURI_Specified;
end;

procedure OutboxInvoiceHeader.SetTaxExclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxExclusiveAmount := ATXSDecimal;
  FTaxExclusiveAmount_Specified := True;
end;

function OutboxInvoiceHeader.TaxExclusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxExclusiveAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetTaxInclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxInclusiveAmount := ATXSDecimal;
  FTaxInclusiveAmount_Specified := True;
end;

function OutboxInvoiceHeader.TaxInclusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxInclusiveAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetTaxTotal_TaxAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxTotal_TaxAmount := ATXSDecimal;
  FTaxTotal_TaxAmount_Specified := True;
end;

function OutboxInvoiceHeader.TaxTotal_TaxAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxTotal_TaxAmount_Specified;
end;

procedure OutboxInvoiceHeader.SetUBLVersionID(Index: Integer; const Astring: string);
begin
  FUBLVersionID := Astring;
  FUBLVersionID_Specified := True;
end;

function OutboxInvoiceHeader.UBLVersionID_Specified(Index: Integer): boolean;
begin
  Result := FUBLVersionID_Specified;
end;

procedure OutboxInvoiceHeader.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function OutboxInvoiceHeader.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

destructor InboxInvoiceHeader.Destroy;
begin
  SysUtils.FreeAndNil(FAllowanceCharge_Amount);
  SysUtils.FreeAndNil(FAllowanceTotalAmount);
  SysUtils.FreeAndNil(FCommercialDateTime);
  SysUtils.FreeAndNil(FDespatchDocumentReference_IssueDate);
  SysUtils.FreeAndNil(FIssueDate);
  SysUtils.FreeAndNil(FLineExtensionAmount);
  SysUtils.FreeAndNil(FOrderReference_IssueDate);
  SysUtils.FreeAndNil(FPayableAmount);
  SysUtils.FreeAndNil(FRecordDate);
  SysUtils.FreeAndNil(FTaxExclusiveAmount);
  SysUtils.FreeAndNil(FTaxInclusiveAmount);
  SysUtils.FreeAndNil(FTaxTotal_TaxAmount);
  SysUtils.FreeAndNil(FUpdatedAt);
  inherited Destroy;
end;

procedure InboxInvoiceHeader.SetAllowanceCharge_Amount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAllowanceCharge_Amount := ATXSDecimal;
  FAllowanceCharge_Amount_Specified := True;
end;

function InboxInvoiceHeader.AllowanceCharge_Amount_Specified(Index: Integer): boolean;
begin
  Result := FAllowanceCharge_Amount_Specified;
end;

procedure InboxInvoiceHeader.SetAllowanceTotalAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FAllowanceTotalAmount := ATXSDecimal;
  FAllowanceTotalAmount_Specified := True;
end;

function InboxInvoiceHeader.AllowanceTotalAmount_Specified(Index: Integer): boolean;
begin
  Result := FAllowanceTotalAmount_Specified;
end;

procedure InboxInvoiceHeader.SetApprovalHierarchyCode(Index: Integer; const Astring: string);
begin
  FApprovalHierarchyCode := Astring;
  FApprovalHierarchyCode_Specified := True;
end;

function InboxInvoiceHeader.ApprovalHierarchyCode_Specified(Index: Integer): boolean;
begin
  Result := FApprovalHierarchyCode_Specified;
end;

procedure InboxInvoiceHeader.SetCode(Index: Integer; const AInteger: Integer);
begin
  FCode := AInteger;
  FCode_Specified := True;
end;

function InboxInvoiceHeader.Code_Specified(Index: Integer): boolean;
begin
  Result := FCode_Specified;
end;

procedure InboxInvoiceHeader.SetCommercialDateTime(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCommercialDateTime := ATXSDateTime;
  FCommercialDateTime_Specified := True;
end;

function InboxInvoiceHeader.CommercialDateTime_Specified(Index: Integer): boolean;
begin
  Result := FCommercialDateTime_Specified;
end;

procedure InboxInvoiceHeader.SetCommercialEnvelopeUUID(Index: Integer; const Astring: string);
begin
  FCommercialEnvelopeUUID := Astring;
  FCommercialEnvelopeUUID_Specified := True;
end;

function InboxInvoiceHeader.CommercialEnvelopeUUID_Specified(Index: Integer): boolean;
begin
  Result := FCommercialEnvelopeUUID_Specified;
end;

procedure InboxInvoiceHeader.SetCommercialResponse(Index: Integer; const Astring: string);
begin
  FCommercialResponse := Astring;
  FCommercialResponse_Specified := True;
end;

function InboxInvoiceHeader.CommercialResponse_Specified(Index: Integer): boolean;
begin
  Result := FCommercialResponse_Specified;
end;

procedure InboxInvoiceHeader.SetCommercialResponseUUID(Index: Integer; const Astring: string);
begin
  FCommercialResponseUUID := Astring;
  FCommercialResponseUUID_Specified := True;
end;

function InboxInvoiceHeader.CommercialResponseUUID_Specified(Index: Integer): boolean;
begin
  Result := FCommercialResponseUUID_Specified;
end;

procedure InboxInvoiceHeader.SetCompanyCode(Index: Integer; const Astring: string);
begin
  FCompanyCode := Astring;
  FCompanyCode_Specified := True;
end;

function InboxInvoiceHeader.CompanyCode_Specified(Index: Integer): boolean;
begin
  Result := FCompanyCode_Specified;
end;

procedure InboxInvoiceHeader.SetConnectionSettingCode(Index: Integer; const Astring: string);
begin
  FConnectionSettingCode := Astring;
  FConnectionSettingCode_Specified := True;
end;

function InboxInvoiceHeader.ConnectionSettingCode_Specified(Index: Integer): boolean;
begin
  Result := FConnectionSettingCode_Specified;
end;

procedure InboxInvoiceHeader.SetCopyIndicator(Index: Integer; const ABoolean: Boolean);
begin
  FCopyIndicator := ABoolean;
  FCopyIndicator_Specified := True;
end;

function InboxInvoiceHeader.CopyIndicator_Specified(Index: Integer): boolean;
begin
  Result := FCopyIndicator_Specified;
end;

procedure InboxInvoiceHeader.SetCustomizationID(Index: Integer; const Astring: string);
begin
  FCustomizationID := Astring;
  FCustomizationID_Specified := True;
end;

function InboxInvoiceHeader.CustomizationID_Specified(Index: Integer): boolean;
begin
  Result := FCustomizationID_Specified;
end;

procedure InboxInvoiceHeader.SetDescription(Index: Integer; const Astring: string);
begin
  FDescription := Astring;
  FDescription_Specified := True;
end;

function InboxInvoiceHeader.Description_Specified(Index: Integer): boolean;
begin
  Result := FDescription_Specified;
end;

procedure InboxInvoiceHeader.SetDespatchDocumentReference_ID(Index: Integer; const Astring: string);
begin
  FDespatchDocumentReference_ID := Astring;
  FDespatchDocumentReference_ID_Specified := True;
end;

function InboxInvoiceHeader.DespatchDocumentReference_ID_Specified(Index: Integer): boolean;
begin
  Result := FDespatchDocumentReference_ID_Specified;
end;

procedure InboxInvoiceHeader.SetDespatchDocumentReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FDespatchDocumentReference_IssueDate := ATXSDateTime;
  FDespatchDocumentReference_IssueDate_Specified := True;
end;

function InboxInvoiceHeader.DespatchDocumentReference_IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FDespatchDocumentReference_IssueDate_Specified;
end;

procedure InboxInvoiceHeader.SetDocumentCurrencyCode(Index: Integer; const Astring: string);
begin
  FDocumentCurrencyCode := Astring;
  FDocumentCurrencyCode_Specified := True;
end;

function InboxInvoiceHeader.DocumentCurrencyCode_Specified(Index: Integer): boolean;
begin
  Result := FDocumentCurrencyCode_Specified;
end;

procedure InboxInvoiceHeader.SetDocumentNo(Index: Integer; const Astring: string);
begin
  FDocumentNo := Astring;
  FDocumentNo_Specified := True;
end;

function InboxInvoiceHeader.DocumentNo_Specified(Index: Integer): boolean;
begin
  Result := FDocumentNo_Specified;
end;

procedure InboxInvoiceHeader.SetERPInvoiceType(Index: Integer; const Astring: string);
begin
  FERPInvoiceType := Astring;
  FERPInvoiceType_Specified := True;
end;

function InboxInvoiceHeader.ERPInvoiceType_Specified(Index: Integer): boolean;
begin
  Result := FERPInvoiceType_Specified;
end;

procedure InboxInvoiceHeader.SetETTN(Index: Integer; const Astring: string);
begin
  FETTN := Astring;
  FETTN_Specified := True;
end;

function InboxInvoiceHeader.ETTN_Specified(Index: Integer): boolean;
begin
  Result := FETTN_Specified;
end;

procedure InboxInvoiceHeader.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function InboxInvoiceHeader.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure InboxInvoiceHeader.SetInstanceIdentifier(Index: Integer; const Astring: string);
begin
  FInstanceIdentifier := Astring;
  FInstanceIdentifier_Specified := True;
end;

function InboxInvoiceHeader.InstanceIdentifier_Specified(Index: Integer): boolean;
begin
  Result := FInstanceIdentifier_Specified;
end;

procedure InboxInvoiceHeader.SetInvoiceTypeCode(Index: Integer; const Astring: string);
begin
  FInvoiceTypeCode := Astring;
  FInvoiceTypeCode_Specified := True;
end;

function InboxInvoiceHeader.InvoiceTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceTypeCode_Specified;
end;

procedure InboxInvoiceHeader.SetIsApproved(Index: Integer; const ABoolean: Boolean);
begin
  FIsApproved := ABoolean;
  FIsApproved_Specified := True;
end;

function InboxInvoiceHeader.IsApproved_Specified(Index: Integer): boolean;
begin
  Result := FIsApproved_Specified;
end;

procedure InboxInvoiceHeader.SetIssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FIssueDate := ATXSDateTime;
  FIssueDate_Specified := True;
end;

function InboxInvoiceHeader.IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FIssueDate_Specified;
end;

procedure InboxInvoiceHeader.SetIssueTime(Index: Integer; const Astring: string);
begin
  FIssueTime := Astring;
  FIssueTime_Specified := True;
end;

function InboxInvoiceHeader.IssueTime_Specified(Index: Integer): boolean;
begin
  Result := FIssueTime_Specified;
end;

procedure InboxInvoiceHeader.SetJobPositionCode(Index: Integer; const Astring: string);
begin
  FJobPositionCode := Astring;
  FJobPositionCode_Specified := True;
end;

function InboxInvoiceHeader.JobPositionCode_Specified(Index: Integer): boolean;
begin
  Result := FJobPositionCode_Specified;
end;

procedure InboxInvoiceHeader.SetLineCountNumeric(Index: Integer; const AInteger: Integer);
begin
  FLineCountNumeric := AInteger;
  FLineCountNumeric_Specified := True;
end;

function InboxInvoiceHeader.LineCountNumeric_Specified(Index: Integer): boolean;
begin
  Result := FLineCountNumeric_Specified;
end;

procedure InboxInvoiceHeader.SetLineExtensionAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FLineExtensionAmount := ATXSDecimal;
  FLineExtensionAmount_Specified := True;
end;

function InboxInvoiceHeader.LineExtensionAmount_Specified(Index: Integer): boolean;
begin
  Result := FLineExtensionAmount_Specified;
end;

procedure InboxInvoiceHeader.SetNote1(Index: Integer; const Astring: string);
begin
  FNote1 := Astring;
  FNote1_Specified := True;
end;

function InboxInvoiceHeader.Note1_Specified(Index: Integer): boolean;
begin
  Result := FNote1_Specified;
end;

procedure InboxInvoiceHeader.SetNote2(Index: Integer; const Astring: string);
begin
  FNote2 := Astring;
  FNote2_Specified := True;
end;

function InboxInvoiceHeader.Note2_Specified(Index: Integer): boolean;
begin
  Result := FNote2_Specified;
end;

procedure InboxInvoiceHeader.SetNote3(Index: Integer; const Astring: string);
begin
  FNote3 := Astring;
  FNote3_Specified := True;
end;

function InboxInvoiceHeader.Note3_Specified(Index: Integer): boolean;
begin
  Result := FNote3_Specified;
end;

procedure InboxInvoiceHeader.SetNote4(Index: Integer; const Astring: string);
begin
  FNote4 := Astring;
  FNote4_Specified := True;
end;

function InboxInvoiceHeader.Note4_Specified(Index: Integer): boolean;
begin
  Result := FNote4_Specified;
end;

procedure InboxInvoiceHeader.SetNote5(Index: Integer; const Astring: string);
begin
  FNote5 := Astring;
  FNote5_Specified := True;
end;

function InboxInvoiceHeader.Note5_Specified(Index: Integer): boolean;
begin
  Result := FNote5_Specified;
end;

procedure InboxInvoiceHeader.SetOrderReference_ID(Index: Integer; const Astring: string);
begin
  FOrderReference_ID := Astring;
  FOrderReference_ID_Specified := True;
end;

function InboxInvoiceHeader.OrderReference_ID_Specified(Index: Integer): boolean;
begin
  Result := FOrderReference_ID_Specified;
end;

procedure InboxInvoiceHeader.SetOrderReference_IssueDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FOrderReference_IssueDate := ATXSDateTime;
  FOrderReference_IssueDate_Specified := True;
end;

function InboxInvoiceHeader.OrderReference_IssueDate_Specified(Index: Integer): boolean;
begin
  Result := FOrderReference_IssueDate_Specified;
end;

procedure InboxInvoiceHeader.SetPayableAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FPayableAmount := ATXSDecimal;
  FPayableAmount_Specified := True;
end;

function InboxInvoiceHeader.PayableAmount_Specified(Index: Integer): boolean;
begin
  Result := FPayableAmount_Specified;
end;

procedure InboxInvoiceHeader.SetProfileID(Index: Integer; const Astring: string);
begin
  FProfileID := Astring;
  FProfileID_Specified := True;
end;

function InboxInvoiceHeader.ProfileID_Specified(Index: Integer): boolean;
begin
  Result := FProfileID_Specified;
end;

procedure InboxInvoiceHeader.SetReceiverAlias(Index: Integer; const Astring: string);
begin
  FReceiverAlias := Astring;
  FReceiverAlias_Specified := True;
end;

function InboxInvoiceHeader.ReceiverAlias_Specified(Index: Integer): boolean;
begin
  Result := FReceiverAlias_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_CityName(Index: Integer; const Astring: string);
begin
  FReceiver_CityName := Astring;
  FReceiver_CityName_Specified := True;
end;

function InboxInvoiceHeader.Receiver_CityName_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_CityName_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_Country(Index: Integer; const Astring: string);
begin
  FReceiver_Country := Astring;
  FReceiver_Country_Specified := True;
end;

function InboxInvoiceHeader.Receiver_Country_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Country_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_Country_Code(Index: Integer; const Astring: string);
begin
  FReceiver_Country_Code := Astring;
  FReceiver_Country_Code_Specified := True;
end;

function InboxInvoiceHeader.Receiver_Country_Code_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Country_Code_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_ElectronicMail(Index: Integer; const Astring: string);
begin
  FReceiver_ElectronicMail := Astring;
  FReceiver_ElectronicMail_Specified := True;
end;

function InboxInvoiceHeader.Receiver_ElectronicMail_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_ElectronicMail_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_PartyName(Index: Integer; const Astring: string);
begin
  FReceiver_PartyName := Astring;
  FReceiver_PartyName_Specified := True;
end;

function InboxInvoiceHeader.Receiver_PartyName_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_PartyName_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_PostalZone(Index: Integer; const Astring: string);
begin
  FReceiver_PostalZone := Astring;
  FReceiver_PostalZone_Specified := True;
end;

function InboxInvoiceHeader.Receiver_PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_PostalZone_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_TaxScheme(Index: Integer; const Astring: string);
begin
  FReceiver_TaxScheme := Astring;
  FReceiver_TaxScheme_Specified := True;
end;

function InboxInvoiceHeader.Receiver_TaxScheme_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_TaxScheme_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_Telephone(Index: Integer; const Astring: string);
begin
  FReceiver_Telephone := Astring;
  FReceiver_Telephone_Specified := True;
end;

function InboxInvoiceHeader.Receiver_Telephone_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Telephone_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_VKN(Index: Integer; const Astring: string);
begin
  FReceiver_VKN := Astring;
  FReceiver_VKN_Specified := True;
end;

function InboxInvoiceHeader.Receiver_VKN_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_VKN_Specified;
end;

procedure InboxInvoiceHeader.SetReceiver_WebsiteURI(Index: Integer; const Astring: string);
begin
  FReceiver_WebsiteURI := Astring;
  FReceiver_WebsiteURI_Specified := True;
end;

function InboxInvoiceHeader.Receiver_WebsiteURI_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_WebsiteURI_Specified;
end;

procedure InboxInvoiceHeader.SetRecordDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FRecordDate := ATXSDateTime;
  FRecordDate_Specified := True;
end;

function InboxInvoiceHeader.RecordDate_Specified(Index: Integer): boolean;
begin
  Result := FRecordDate_Specified;
end;

procedure InboxInvoiceHeader.SetReferenceDocumentTypeCode(Index: Integer; const Astring: string);
begin
  FReferenceDocumentTypeCode := Astring;
  FReferenceDocumentTypeCode_Specified := True;
end;

function InboxInvoiceHeader.ReferenceDocumentTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FReferenceDocumentTypeCode_Specified;
end;

procedure InboxInvoiceHeader.SetReturnInvoiceID(Index: Integer; const Astring: string);
begin
  FReturnInvoiceID := Astring;
  FReturnInvoiceID_Specified := True;
end;

function InboxInvoiceHeader.ReturnInvoiceID_Specified(Index: Integer): boolean;
begin
  Result := FReturnInvoiceID_Specified;
end;

procedure InboxInvoiceHeader.SetSenderAlias(Index: Integer; const Astring: string);
begin
  FSenderAlias := Astring;
  FSenderAlias_Specified := True;
end;

function InboxInvoiceHeader.SenderAlias_Specified(Index: Integer): boolean;
begin
  Result := FSenderAlias_Specified;
end;

procedure InboxInvoiceHeader.SetStatusMessage(Index: Integer; const Astring: string);
begin
  FStatusMessage := Astring;
  FStatusMessage_Specified := True;
end;

function InboxInvoiceHeader.StatusMessage_Specified(Index: Integer): boolean;
begin
  Result := FStatusMessage_Specified;
end;

procedure InboxInvoiceHeader.SetStatusProcessID(Index: Integer; const AInteger: Integer);
begin
  FStatusProcessID := AInteger;
  FStatusProcessID_Specified := True;
end;

function InboxInvoiceHeader.StatusProcessID_Specified(Index: Integer): boolean;
begin
  Result := FStatusProcessID_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_CityName(Index: Integer; const Astring: string);
begin
  FSupplier_CityName := Astring;
  FSupplier_CityName_Specified := True;
end;

function InboxInvoiceHeader.Supplier_CityName_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_CityName_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_Country(Index: Integer; const Astring: string);
begin
  FSupplier_Country := Astring;
  FSupplier_Country_Specified := True;
end;

function InboxInvoiceHeader.Supplier_Country_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Country_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_Country_Code(Index: Integer; const Astring: string);
begin
  FSupplier_Country_Code := Astring;
  FSupplier_Country_Code_Specified := True;
end;

function InboxInvoiceHeader.Supplier_Country_Code_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Country_Code_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_ElectronicMail(Index: Integer; const Astring: string);
begin
  FSupplier_ElectronicMail := Astring;
  FSupplier_ElectronicMail_Specified := True;
end;

function InboxInvoiceHeader.Supplier_ElectronicMail_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_ElectronicMail_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_PartyName(Index: Integer; const Astring: string);
begin
  FSupplier_PartyName := Astring;
  FSupplier_PartyName_Specified := True;
end;

function InboxInvoiceHeader.Supplier_PartyName_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_PartyName_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_PostalZone(Index: Integer; const Astring: string);
begin
  FSupplier_PostalZone := Astring;
  FSupplier_PostalZone_Specified := True;
end;

function InboxInvoiceHeader.Supplier_PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_PostalZone_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_TaxScheme(Index: Integer; const Astring: string);
begin
  FSupplier_TaxScheme := Astring;
  FSupplier_TaxScheme_Specified := True;
end;

function InboxInvoiceHeader.Supplier_TaxScheme_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_TaxScheme_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_Telephone(Index: Integer; const Astring: string);
begin
  FSupplier_Telephone := Astring;
  FSupplier_Telephone_Specified := True;
end;

function InboxInvoiceHeader.Supplier_Telephone_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_Telephone_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_VKN(Index: Integer; const Astring: string);
begin
  FSupplier_VKN := Astring;
  FSupplier_VKN_Specified := True;
end;

function InboxInvoiceHeader.Supplier_VKN_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_VKN_Specified;
end;

procedure InboxInvoiceHeader.SetSupplier_WebsiteURI(Index: Integer; const Astring: string);
begin
  FSupplier_WebsiteURI := Astring;
  FSupplier_WebsiteURI_Specified := True;
end;

function InboxInvoiceHeader.Supplier_WebsiteURI_Specified(Index: Integer): boolean;
begin
  Result := FSupplier_WebsiteURI_Specified;
end;

procedure InboxInvoiceHeader.SetTaxExclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxExclusiveAmount := ATXSDecimal;
  FTaxExclusiveAmount_Specified := True;
end;

function InboxInvoiceHeader.TaxExclusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxExclusiveAmount_Specified;
end;

procedure InboxInvoiceHeader.SetTaxInclusiveAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxInclusiveAmount := ATXSDecimal;
  FTaxInclusiveAmount_Specified := True;
end;

function InboxInvoiceHeader.TaxInclusiveAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxInclusiveAmount_Specified;
end;

procedure InboxInvoiceHeader.SetTaxTotal_TaxAmount(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTaxTotal_TaxAmount := ATXSDecimal;
  FTaxTotal_TaxAmount_Specified := True;
end;

function InboxInvoiceHeader.TaxTotal_TaxAmount_Specified(Index: Integer): boolean;
begin
  Result := FTaxTotal_TaxAmount_Specified;
end;

procedure InboxInvoiceHeader.SetUBLVersionID(Index: Integer; const Astring: string);
begin
  FUBLVersionID := Astring;
  FUBLVersionID_Specified := True;
end;

function InboxInvoiceHeader.UBLVersionID_Specified(Index: Integer): boolean;
begin
  Result := FUBLVersionID_Specified;
end;

procedure InboxInvoiceHeader.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function InboxInvoiceHeader.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure InboxInvoiceHeader.SetUpdatedAt(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FUpdatedAt := ATXSDateTime;
  FUpdatedAt_Specified := True;
end;

function InboxInvoiceHeader.UpdatedAt_Specified(Index: Integer): boolean;
begin
  Result := FUpdatedAt_Specified;
end;

destructor Contracts_ReportInvoiceListRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FExcludedExtensions)-1 do
    SysUtils.FreeAndNil(FExcludedExtensions[I]);
  System.SetLength(FExcludedExtensions, 0);
  for I := 0 to System.Length(FIncludedExtensions)-1 do
    SysUtils.FreeAndNil(FIncludedExtensions[I]);
  System.SetLength(FIncludedExtensions, 0);
  SysUtils.FreeAndNil(FBeginInvoiceDate);
  SysUtils.FreeAndNil(FBeginRecordDateTime);
  SysUtils.FreeAndNil(FBeginUpdateDate);
  SysUtils.FreeAndNil(FEndInvoiceDate);
  SysUtils.FreeAndNil(FEndRecordDateTime);
  SysUtils.FreeAndNil(FEndUpdateDate);
  inherited Destroy;
end;

procedure Contracts_ReportInvoiceListRequest.SetBeginInvoiceDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FBeginInvoiceDate := ATXSDateTime;
  FBeginInvoiceDate_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.BeginInvoiceDate_Specified(Index: Integer): boolean;
begin
  Result := FBeginInvoiceDate_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetBeginUpdateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FBeginUpdateDate := ATXSDateTime;
  FBeginUpdateDate_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.BeginUpdateDate_Specified(Index: Integer): boolean;
begin
  Result := FBeginUpdateDate_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetCustomerVKN(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  FCustomerVKN := AArrayOfstring;
  FCustomerVKN_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.CustomerVKN_Specified(Index: Integer): boolean;
begin
  Result := FCustomerVKN_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetEndInvoiceDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndInvoiceDate := ATXSDateTime;
  FEndInvoiceDate_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.EndInvoiceDate_Specified(Index: Integer): boolean;
begin
  Result := FEndInvoiceDate_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetEndUpdateDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEndUpdateDate := ATXSDateTime;
  FEndUpdateDate_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.EndUpdateDate_Specified(Index: Integer): boolean;
begin
  Result := FEndUpdateDate_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetExcludedExtensions(Index: Integer; const AArrayOfExtension: ArrayOfExtension);
begin
  FExcludedExtensions := AArrayOfExtension;
  FExcludedExtensions_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.ExcludedExtensions_Specified(Index: Integer): boolean;
begin
  Result := FExcludedExtensions_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetID(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  FID := AArrayOfstring;
  FID_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetIncludedExtensions(Index: Integer; const AArrayOfExtension: ArrayOfExtension);
begin
  FIncludedExtensions := AArrayOfExtension;
  FIncludedExtensions_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.IncludedExtensions_Specified(Index: Integer): boolean;
begin
  Result := FIncludedExtensions_Specified;
end;

procedure Contracts_ReportInvoiceListRequest.SetOrderBy(Index: Integer; const AGlobalEnum_OrderByType: GlobalEnum_OrderByType);
begin
  FOrderBy := AGlobalEnum_OrderByType;
  FOrderBy_Specified := True;
end;

function Contracts_ReportInvoiceListRequest.OrderBy_Specified(Index: Integer): boolean;
begin
  Result := FOrderBy_Specified;
end;

procedure Contracts_OutboundInvoiceListRequest.SetUUIDList(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  FUUIDList := AArrayOfstring;
  FUUIDList_Specified := True;
end;

function Contracts_OutboundInvoiceListRequest.UUIDList_Specified(Index: Integer): boolean;
begin
  Result := FUUIDList_Specified;
end;

procedure Contracts_InboundInvoiceListRequest.SetUUIDList(Index: Integer; const AArrayOfstring: ArrayOfstring);
begin
  FUUIDList := AArrayOfstring;
  FUUIDList_Specified := True;
end;

function Contracts_InboundInvoiceListRequest.UUIDList_Specified(Index: Integer): boolean;
begin
  Result := FUUIDList_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IReportInvoiceList), 'http://isisbilisim.com.tr/services/einvoice', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IReportInvoiceList), 'http://isisbilisim.com.tr/services/einvoice/IReportInvoiceList/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IReportInvoiceList), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfExtension), 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfExtension');
  RemClassRegistry.RegisterXSClass(Extension, 'http://isisbilisim.com.tr/data/einvoice', 'Extension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInvoiceExtension), 'http://isisbilisim.com.tr/data/einvoice', 'ArrayOfInvoiceExtension');
  RemClassRegistry.RegisterXSClass(InvoiceExtension, 'http://isisbilisim.com.tr/data/einvoice', 'InvoiceExtension');
  RemClassRegistry.RegisterXSClass(Extension2, 'http://isisbilisim.com.tr/data/einvoice', 'Extension2', 'Extension');
  RemClassRegistry.RegisterXSClass(InvoiceExtension2, 'http://isisbilisim.com.tr/data/einvoice', 'InvoiceExtension2', 'InvoiceExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GlobalEnum_Bool), 'http://isisbilisim.com.tr/services', 'GlobalEnum_Bool', 'GlobalEnum.Bool');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GlobalEnum_OrderByType), 'http://isisbilisim.com.tr/enums/core', 'GlobalEnum_OrderByType', 'GlobalEnum.OrderByType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfOutboxInvoiceHeader), 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'ArrayOfOutboxInvoiceHeader');
  RemClassRegistry.RegisterXSClass(OutboxInvoiceHeader, 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'OutboxInvoiceHeader');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInboxInvoiceHeader), 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'ArrayOfInboxInvoiceHeader');
  RemClassRegistry.RegisterXSClass(InboxInvoiceHeader, 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'InboxInvoiceHeader');
  RemClassRegistry.RegisterXSClass(OutboxInvoiceHeader2, 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'OutboxInvoiceHeader2', 'OutboxInvoiceHeader');
  RemClassRegistry.RegisterXSClass(InboxInvoiceHeader2, 'http://schemas.datacontract.org/2004/07/ISIS.Einvoice.Framework.Data', 'InboxInvoiceHeader2', 'InboxInvoiceHeader');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Enums_OutboundStatus), 'http://isisbilisim.com.tr/services/einvoice', 'Enums_OutboundStatus', 'Enums.OutboundStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Enums_InvoiceType), 'http://isisbilisim.com.tr/services/einvoice', 'Enums_InvoiceType', 'Enums.InvoiceType');
  RemClassRegistry.RegisterXSClass(Contracts_ReportInvoiceListRequest, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_ReportInvoiceListRequest', 'Contracts.ReportInvoiceListRequest');
  RemClassRegistry.RegisterXSClass(Contracts_OutboundInvoiceListRequest, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_OutboundInvoiceListRequest', 'Contracts.OutboundInvoiceListRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Enums_InboundStatus), 'http://isisbilisim.com.tr/services/einvoice', 'Enums_InboundStatus', 'Enums.InboundStatus');
  RemClassRegistry.RegisterXSClass(Contracts_InboundInvoiceListRequest, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_InboundInvoiceListRequest', 'Contracts.InboundInvoiceListRequest');
  RemClassRegistry.RegisterXSClass(Contracts_OutboundInvoiceListRequest2, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_OutboundInvoiceListRequest2', 'Contracts.OutboundInvoiceListRequest');
  RemClassRegistry.RegisterXSClass(Contracts_ReportInvoiceListRequest2, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_ReportInvoiceListRequest2', 'Contracts.ReportInvoiceListRequest');
  RemClassRegistry.RegisterXSClass(Contracts_InboundInvoiceListRequest2, 'http://isisbilisim.com.tr/services/einvoice', 'Contracts_InboundInvoiceListRequest2', 'Contracts.InboundInvoiceListRequest');

end.