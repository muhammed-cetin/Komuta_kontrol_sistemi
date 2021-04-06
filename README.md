# Komuta_kontrol_sistemi
ASP.NET MVC - Google Map API work.

Hafta 1 - > Veri tabanı çalışmalarına [dbConnection](komuta_kontrol_sistemi/komuta_kontrol_sistemi/dbconnection), [dbFunctions](komuta_kontrol_sistemi/komuta_kontrol_sistemi/Functions) uzantılarından ulaşabilirsiniz.
Web Servisi fonksiyonlarına [webService](komuta_kontrol_sistemi/komuta_kontrol_sistemi/WebService1.asmx.cs) uzantısı üzerinden ulaşabilirsiniz.

Hafta 2 - > Random GPS verisi simülasyonu konsol uygulamasına [GPS_data](gps_device/gps_device) uzantısından ulaşabilirsiniz. Uygulumanın web servisle aktif olarak çalıştırılabilmesi için önce lokalinizde [webService](komuta_kontrol_sistemi/komuta_kontrol_sistemi/WebService1.asmx.cs) uzantısındaki kodların run edilmesi gerekmektedir.

Hafta 3 - > Controller üzerindeki optimize çalışmalarına [Controllers](komuta_kontrol_sistemi/komuta_kontrol_sistemi/Controllers/HomeController.cs) uzantısından ulaşabilirsiniz. Verilerinin Web sayfasına iletilmesi için oluşturulan JS dosyasına [mapEvent.js](komuta_kontrol_sistemi/komuta_kontrol_sistemi/Scripts/mapEvent.js) uzantısından ulaşabilirsiniz. Bu script dosyasında verilerin okunması için 5 saniyelik puls ayarlanmıştır. Eklenen yeni veritabanı fonksiyonlarını görüntülemek için [dbFunctions](komuta_kontrol_sistemi/komuta_kontrol_sistemi/Functions/dbFunctions.cs) uzantısına gidiniz. [HTML](komuta_kontrol_sistemi/komuta_kontrol_sistemi/Views/Home/KKS.cshtml) değişiklikleri.
