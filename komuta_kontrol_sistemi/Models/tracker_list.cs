using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace komuta_kontrol_sistemi.Models
{
    public class tracker_list
    {
        public int cihaz_id { get; set; }
        public int signal_id { get; set; }
        public double lat { get; set; }
        public double lng { get; set; }
        public DateTime signal_time { get; set; }
        public int person_id { get; set; }
        public string person { get; set; }
        public string cluster { get; set; }
    }
}