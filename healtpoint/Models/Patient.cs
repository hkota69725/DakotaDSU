using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace healtpoint.Models
{
    public class Patient
    {
        public string pid { get; set; }
        public string salt { get; set; }
        public string hashPW { get; set; }
        public string name { get; set; }
        public string mrnNum { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string nickName { get; set; }
        public string middleName { get; set; }
        public string clinic { get; set; }
        public string gender { get; set; }
        public string suffix { get; set; }
        public string ssn { get; set; }
        public string phoneNumber { get; set; }
        public string emailAddress { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string postalCode { get; set; }
        public string address1 { get; set; }
        public String dob { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string staffAdminID { get; set; }

    }
}