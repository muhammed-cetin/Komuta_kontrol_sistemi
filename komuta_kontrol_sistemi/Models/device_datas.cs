using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace komuta_kontrol_sistemi.Models
{
    public class device_datas
    {
        public int signal_id { get; set; }
        public int cihaz_id { get; set; }
        public string lat { get; set; }
        public string lng { get; set; }
        public DateTime signal_time { get; set; }
    }
}