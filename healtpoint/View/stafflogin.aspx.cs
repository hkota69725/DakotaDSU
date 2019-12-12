using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
using System.Net.Mail;

namespace healtpoint
{
    public partial class stafflogin : System.Web.UI.Page
    {
        public Staff staff = new Staff();
        StaffController staffController = new StaffController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Button5_Click(object sender, EventArgs e)
        {
            Staff staffDetails = new Staff();
            staff.username = StaffLoginID.Text;
            staff.password = StaffPassword.Text;
            staffDetails = staffController.verifyStaff(staff);
            if (!(staffDetails.staff_id == null))
            {
                Session["statusStaff"] = "Staffstart";
                Session["SadminStatus"] = "test";
                Session["statusClinic"] = "test";
                Session["staff_id"] = staffDetails.staff_id;
                Response.Redirect("PatientList.aspx?type=1");
            }
            else
            {
                error.Style["display"] = "block";
            }
        }

    }
}