using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace komuta_kontrol_sistemi.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult KKS()
        {
            return View();
        }



        //personel verileri için arayüzde çağırılan controller fonksiyonu
        private static List<Models.person_list> person_list;
        public string get_person()
        {
            Functions.dbFunctions db = new Functions.dbFunctions();

            person_list = db.person_list();

            return JsonConvert.SerializeObject(person_list);
        }


        //veritabanından okunan verilerin akatrıldığı liste
        private static List<Models.tracker_list> tracker_list = new List<Models.tracker_list>();
        private static int cache_flag = 0;
        private static int counter = 0;
        private static int tempcount_cache = 0;
        private static int i = 0;

        //cache verilerinin tutulduğu liste
        private static List<Models.tracker_list> device_data_list = new List<Models.tracker_list>();
        //cihaz verileri için arayüzde çağırılan controller fonksiyonu
        //bu fonksiyon 5 saniyede bir map_Event script dosyası taradından çağırılır.
        public string get_gpsData()
        {
            Functions.dbFunctions db = new Functions.dbFunctions();

            if (cache_flag == 0)//veritabanının okunması
            {
                tracker_list = db.device_data();
                cache_flag = 1;
            }
            else//cache listesinin okunması
            {
                komuta_kontrol_sistemi.WebService1 service = new komuta_kontrol_sistemi.WebService1();
                device_data_list = service.device_list_export;

                //veritabanının son indexi tutuldu
                counter = tracker_list.Count;

                if (device_data_list.Count > 0)
                {
                    if (tempcount_cache != device_data_list.Count)
                    {
                        for (i = 0; i < device_data_list.Count; i++)
                        {
                            if (device_data_list[i].signal_id > tracker_list[counter - 1].signal_id)
                            {
                                //verinin liste sonuna eklenmesi
                                tracker_list.Insert(counter, device_data_list[i]);
                                counter++;
                            }
                        }
                        tempcount_cache = service.device_list_export.Count;
                    }
                }
            }
            return JsonConvert.SerializeObject(tracker_list);
        }
    }
}