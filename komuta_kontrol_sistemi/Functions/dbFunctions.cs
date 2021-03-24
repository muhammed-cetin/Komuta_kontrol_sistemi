using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Net.Mail;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.Text.RegularExpressions;
using System.Net;
using System.IO;
using Library;
using MySql.Data.MySqlClient;
using System.Data;
using komuta_kontrol_sistemi.Functions;
using Newtonsoft.Json;
using komuta_kontrol_sistemi.Models;

namespace komuta_kontrol_sistemi.Functions
{
    public class dbFunctions
    {
        Station station = new Station();
        DataTable dt = new DataTable();

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