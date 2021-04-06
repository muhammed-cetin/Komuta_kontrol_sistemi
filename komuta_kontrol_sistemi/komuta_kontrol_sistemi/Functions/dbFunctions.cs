using System;
using System.Collections.Generic;
using Library;
using System.Data;
using Newtonsoft.Json;

namespace komuta_kontrol_sistemi.Functions
{
    public class dbFunctions
    {
        Station station = new Station();
        DataTable dt = new DataTable();

        public static int log_flag_03 = 0;
        public static string temp_03;
        //cihaz verilerinin veritabanından okunması için yazılmış fonksiyon. Sadece program ilk başlatıldığında bir kez bu fonksiyon çağırılacak.
        public List<Models.tracker_list> device_data()
        {
            List<Models.tracker_list> device_list = new List<Models.tracker_list>();
            try
            {
                dt = station.ExecuteDatatable("SELECT * FROM device_data");

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Models.tracker_list tracker = new Models.tracker_list();

                    tracker.signal_id = int.Parse(dt.Rows[i]["signal_id"].ToString());
                    tracker.cihaz_id = int.Parse(dt.Rows[i]["cihaz_id"].ToString()); ;
                    tracker.lat = double.Parse(dt.Rows[i]["lat"].ToString());
                    tracker.lng = double.Parse(dt.Rows[i]["lng"].ToString());
                    tracker.signal_time = DateTime.Parse(dt.Rows[i]["signal_time"].ToString());

                    device_list.Add(tracker);
                }
            }
            catch (Exception ex)
            {
                if (log_flag_03 == 0)
                {
                    temp_03 = ex.Message.ToString();
                    station.ExecuteDatatable("INSERT INTO system_log(mesagge,ex_location) VALUES('" + ex.Message.ToString() + "','" + JsonConvert.SerializeObject(ex.StackTrace.ToString()) + "');");
                    log_flag_03 = 1;
                }
                if (temp_02 != ex.Message.ToString())
                {
                    log_flag_03 = 0;
                }
            }
            return device_list;
        }

        public static int log_flag_02 = 0;
        public static string temp_02;
        //personel verilerinin veritabanından okunması için yazılmış fonksiyon. Sadece program ilk başlatıldığında bir kez bu fonksiyon çağırılır.
        public List<Models.person_list> person_list()
        {
            List<Models.person_list> person_list = new List<Models.person_list>();
            try
            {
                dt = station.ExecuteDatatable("SELECT * FROM followed_person");
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Models.person_list person = new Models.person_list();
                        person.person_id = int.Parse(dt.Rows[i]["person_id"].ToString());
                        person.person = dt.Rows[i]["person"].ToString();
                        person.cluster = dt.Rows[i]["cluster"].ToString();
                        person.cihaz_id = int.Parse(dt.Rows[i]["cihaz_id"].ToString());
                        person_list.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                if (log_flag_02 == 0)
                {
                    temp_02 = ex.Message.ToString();
                    station.ExecuteDatatable("INSERT INTO system_log(mesagge,ex_location) VALUES('" + ex.Message.ToString() + "','" + JsonConvert.SerializeObject(ex.StackTrace.ToString()) + "');");
                    log_flag_02 = 1;
                }
                if (temp_02 != ex.Message.ToString())
                {
                    log_flag_02 = 0;
                }
            }
            return person_list;
        }

        //veritabanında device_data tablosuna cihaz verilerini insert eden fonksiyon
        //fonksiyon web servis tarafından çağırılmakta. Veriler her geldiğinde bu fonksiyon çağırılır.
        public static int log_flag_01 = 0;
        public static string temp_01;
        public void Device_Data_Insert(int signal_id, int cihaz_id, string lat, string lng)
        {
            try
            {
                dt = station.ExecuteDatatable("INSERT INTO device_data (signal_id,cihaz_id,lat,lng) VALUES ('"
                                        + signal_id + "','"
                                        + cihaz_id + "','"
                                        + lat + "','"
                                        + lng + "'); ");

            }
            catch (Exception ex)
            {
                if (log_flag_01 == 0)
                {
                    temp_01 = ex.Message.ToString();
                    station.ExecuteDatatable("INSERT INTO system_log(mesagge,ex_location) VALUES('" + ex.Message.ToString() + "','" + JsonConvert.SerializeObject(ex.StackTrace.ToString()) + "');");
                    log_flag_01 = 1;
                }
                if (temp_01 != ex.Message.ToString())
                {
                    log_flag_01 = 0;
                }
            }
        }
    }
}