using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace gps_device
{
    class Program
    {
        public static void random_location()
        {
            tracker_service.WebService1SoapClient tracker_service = new tracker_service.WebService1SoapClient();
            string textFile = AppDomain.CurrentDomain.BaseDirectory + "\\Location_Source.txt";
            string[] line = File.ReadAllLines(textFile);
            //!!!!!!!Yeni personel eklenmesi veya çıkarılması halinde dizi boyutunu kişi_sayısı+1 şeklinde değiştir.
            int n = 5;
            string[] signal_list_x = new string[n];
            string[] signal_list_y = new string[n];
            string[] signal_list_a = new string[n];
            string[] signal_list_b = new string[n];
            int disciplined_lat = 0;
            int disciplined_lng = 0;
            int subtraction_or_addition_lat = 0;
            int subtraction_or_addition_lng = 0;
            int infinite = 0;
            int signal_id;
            //txt den okunan string değerin int değerine dönüştürülmesi.
            int signal_id_counter = Convert.ToInt32(line[0]);
            int cihaz_id;
            string lat;
            string lng;
            int x = 0, y = 0, a = 0, b = 0, i;

            Random random = new Random();
            //36°-42° kuzey enlemleri(paralelleri) ile, 26°-45° derece doğu boylamları(meridyenleri)
            //her cihaz için başlangıçta random değerler atanır.
            for (i = 1; i < signal_list_x.Length; i++)
            {
                x = random.Next(35, 43);
                y = random.Next(25, 46);
                a = random.Next(100000, 999999);
                b = random.Next(100000, 999999);
                signal_list_x[i] = "" + x + "";
                signal_list_y[i] = "" + y + "";
                signal_list_a[i] = "" + a + "";
                signal_list_b[i] = "" + b + "";
            }

            while (infinite < 1)
            {
                signal_id = signal_id_counter;
                signal_id_counter++;

                //!!!!!cihaz idleri random olarak her döngüde üretilir. yeni personel eklenmesi halinde random değer aralığını değiştir.
                cihaz_id = random.Next(1, 5);

                //Kişilerin her saniyede bir gerçek dışı hareketini engellemek için random değerle üretilerek lokasyonlara eklenir veya çıkartılır
                //web arayüzünde kişini rota seçeneğini seçerek random değerler üstünde gözlem yapabiliriz.
                disciplined_lat = random.Next(0, 999);
                disciplined_lng = random.Next(0, 999);
                //enlem ve boylam için random olarak çıkarma yada toplama seçeneklerinin üretilmesi.
                subtraction_or_addition_lat = random.Next(0, 2);
                subtraction_or_addition_lng = random.Next(0, 2);

                //Enlem ve boylam üzerindeki yapılacak işlemlerin kod bloğu satır 66-92
                if (subtraction_or_addition_lat == 0)
                {
                    a = Convert.ToInt32(signal_list_a[cihaz_id]) + disciplined_lat;
                }

                if (subtraction_or_addition_lat == 1)
                {
                    a = Convert.ToInt32(signal_list_a[cihaz_id]) - disciplined_lat;
                    if (a < 0)
                    {
                        a = Convert.ToInt32(signal_list_a[cihaz_id]) + disciplined_lat;
                    }
                }

                if (subtraction_or_addition_lng == 0)
                {
                    b = Convert.ToInt32(signal_list_b[cihaz_id]) + disciplined_lng;
                }

                if (subtraction_or_addition_lng == 1)
                {
                    b = Convert.ToInt32(signal_list_b[cihaz_id]) - disciplined_lng;
                    if (b < 0)
                    {
                        b = Convert.ToInt32(signal_list_b[cihaz_id]) + disciplined_lng;
                    }
                }

                //web servise gönderilecek veriler string olmalıdır çünkü double olarak tanımlanması; enlem ve boylamın ',' (virgül) karakteriyle veri tabanına gitmesine
                //sebep olur ve bu web projesi için sorun yaratır veritabanına kayıt olan veriler tam sayı olarak yazılacaktır, bu yüzden double sayının(enlem ve boylam)
                //'.' (nokta) ile string bir biçimde yazılması gerekir.
                //signal_list_x değerleri her cihaza özel sabit kalmalıdır.
                lat = "" + signal_list_x[cihaz_id] + "." + a + "";
                lng = "" + signal_list_y[cihaz_id] + "." + b + "";

                DateTime signal_time = DateTime.Now;
                //üretilen sinyal zamanı tamamen web projesindeki cache listesi içindir veri tabanına insert edilmemektedir.
                signal_time = Convert.ToDateTime(signal_time.ToString("yyy-MM-dd H:mm:ss"));

                Console.WriteLine("\t\t\t\t" + signal_id + "/" + cihaz_id + "/" + lat + "/" + lng + "/" + signal_time);

                //web servisteki metoda verinin iletilmesi için yazılmış kod satırı.
                tracker_service.get_Device_Data(signal_id, cihaz_id, lat, lng, signal_time);

                //konsol kapatılırken '-' tuşuna ve ardından enter tuşuna basılması halinde txt belgesine sinyal değeri kaydedilir ve konsol kapanır, bir sonraki
                //konsolu çalıştırma işleminde veritabanıyla senkron olabilmesi için kaldığı sinyal değerinden devam edecektir.
                //txt belgesi projenin debug dosyası altında yer almaktadır.

                //web servise kontrollü veri gönderimi için konsol enter tuşuna basınız.
                if (Console.ReadLine() == "-")
                {
                    line[0] = "" + signal_id_counter + "";
                    File.WriteAllLines(textFile, line);
                    infinite = 2;
                }
            }
        }

        static void Main(string[] args)
        {
            random_location();
        }
    }
}
