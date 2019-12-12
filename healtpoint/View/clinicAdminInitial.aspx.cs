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
    public partial class clinicAdminInitial : System.Web.UI.Page
    {
        Admin admin = new Admin();
        AdminController adminController = new AdminController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            admin.adminUsername = userName.Text;
            admin.tempPasword = AtempPassword.Text.Trim();
            admin.adminPassword = nwPassword.Text.Trim();
            int result = adminController.updateAdmin(admin,0);
            if (result == 1)
            {
                Response.Redirect("clinicAdminlogin.aspx");
            }
            else
                errorDiv.Visible = true;
        }
    }
}