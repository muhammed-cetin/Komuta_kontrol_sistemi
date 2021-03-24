using Library;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace komuta_kontrol_sistemi
{
    /// <summary>
    /// WebService1 için özet açıklama
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Bu Web Hizmeti'nin, ASP.NET AJAX kullanılarak komut dosyasından çağrılmasına, aşağıdaki satırı açıklamadan kaldırmasına olanak vermek için.
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        public static int flag = 0;
        public static int log_flag = 0;
        public static string temp;

        //Cache için oluşturulan listeler. Asıl cache listesi 'device_list_export' listesidir. 
        public static List<Models.tracker_list> device_list = new List<Models.tracker_list>();
        public List<Models.tracker_list> device_list_export = device_list;

        Station station = new Station();

        [WebMethod]
        public void get_Device_Data(int signal_id, int cihaz_id, string lat, string lng, DateTime signal_time)
        {
            try
            {
                Models.tracker_list tracker = new Models.tracker_list();
                Models.device_datas device = new Models.device_datas();
                Functions.dbFunctions db = new Functions.dbFunctions();

                device.signal_id = signal_id;
                device.cihaz_id = cihaz_id;
                device.lat = lat;
                device.lng = lng;
                //gelen veriler veri tabanına insert edilir.
                db.Device_Data_Insert(device.signal_id, device.cihaz_id, device.lat, device.lng);

                tracker.signal_id = signal_id;
                tracker.cihaz_id = cihaz_id;
                //string olarak gelen enlem boylam verileri direkt olarak script taradından okunacağı için double değere dönüştürldü fakat 
                //veri tam sayı olarak convert edildi bu yüzden verilerin virgülden sonra 6 haneli olabilmesi için sayı 1 milyona bölündü.
                tracker.lat = Convert.ToDouble(lat) / 1000000;
                tracker.lng = Convert.ToDouble(lng) / 1000000;
                tracker.signal_time = signal_time;

                //gelen veriler cache içeriğine yazılır.
                device_list_export.Add(tracker);
            }
            catch (Exception ex)
            {
                if (log_flag == 0)
                {
                    temp = ex.Message.ToString();
                    station.ExecuteDatatable("INSERT INTO system_log(mesagge,ex_location) VALUES('" + ex.Message.ToString() + "','" + JsonConvert.SerializeObject(ex.StackTrace.ToString()) + "');");
                    log_flag = 1;
                }
                if (temp != ex.Message.ToString())
                {
                    log_flag = 0;
                }
            }
        }
    }
}
