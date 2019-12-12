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
    public partial class clinicAdminLogin : System.Web.UI.Page
    {
        Admin admin = new Admin();
        AdminController adminController = new AdminController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Admin verifiedAdmin = new Admin();
            admin.adminUsername = AuserName.Text;
            admin.adminPassword = Apassword.Text;
            verifiedAdmin = adminController.getAdminID(admin);
            if (!(verifiedAdmin.adminId == null))
            {
                Session["statusClinic"] = "Clinicstart";
                Session["statusStaff"] = "test";
                Session["SadminStatus"] = "test";
                Session["adminId"] = verifiedAdmin.adminId;
                Session["clinicID"] = verifiedAdmin.clinicID;
                Response.Redirect("clinicAdminIndex.aspx");
            }
            else
                error.Style["display"] = "block";
        }
    }
}