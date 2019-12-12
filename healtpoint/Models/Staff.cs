using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace healtpoint.Models
{
    public class Staff
    {
        public string salt { get; set; }
        public string hashPW { get; set; }
        public string clinicNumber { get; set; }
        public string email { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string dob { get; set; }
        public string staff_id { get; set; }
        public string clinicAdminID { get; set; }
        public string activationCode { get; set; }
        public string phoneNum { get; set; }
        public string tempPassword { get; set; }

        public string firstName { get; set; }

        public string lastName { get; set; }

        public string status { get; set; }
        
    }

}