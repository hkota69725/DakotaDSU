using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
namespace healtpoint.View
{
    public partial class StaffInitialLogin : System.Web.UI.Page
    {
        StaffController staffController = new StaffController();
        Staff staff = new Staff();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            staff.username = SuserName.Text;
            staff.tempPassword = StempPassword.Text.Trim();
            staff.password = nwPassword.Text.Trim();
            int check = staffController.updateStaff(staff,0);
            if (check == 1)
            {
                Response.Redirect("stafflogin.aspx");
            }
            else
                errorDiv.Visible = true;
        }
    }
}