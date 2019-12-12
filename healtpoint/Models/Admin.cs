using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace healtpoint.Models
{
    public class Admin
    {
        public string salt { get; set; }
        public string hashPW { get; set; }
        public string adminUsername { get; set; }
        public string adminPassword { get; set; }
        public string adminEmail{ get; set; }
        public string tempPasword { get; set; }
        public string clinicID { get; set; }
        public string status { get; set; }
        public string adminId { get; set; }
    }

}