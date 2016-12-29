# SampleD2010
Delphi 2010 için örnek e-fatura/e-arşiv uygulaması
####UBL-TR dokümanları
http://www.efatura.gov.tr/dosyalar/kilavuzlar/UBLTR_1.2.1_Kilavuzlar.zip
####UBL-TR şema/şematron kontrol
http://mkysoft.com/ubltr/
####Uyarılar
wsdlimp.exe'deki bug nedeniyle servisleri -Ok parametresi ile oluşturunuz.

Örnek:
WSDLImp.exe -P -Ok http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl -D"C:\temp"
