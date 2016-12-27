# SampleD2010
Delphi 10 için örnek e-fatura/e-arşiv uygulaması
####UBL-TR Dokümanları
http://www.efatura.gov.tr/dosyalar/kilavuzlar/UBLTR_1.2.1_Kilavuzlar.zip<br/>
####Uyarılar
wsdlimp.exe'deki bug nedeniyle servisleri -Ok parametresi ile oluşturunuz.

Örnek:
WSDLImp.exe -P -Ok http://musteritestws.isisbilisim.com.tr/services/TaxPayerQuery.svc?wsdl -D"C:\temp"
