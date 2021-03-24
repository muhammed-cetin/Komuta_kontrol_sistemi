using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace komuta_kontrol_sistemi.Models
{
    public class person_list
    {
        public int person_id { get; set; }
        public string person { get; set; }
        public string cluster { get; set; }
        public int cihaz_id { get; set; }
    }
}