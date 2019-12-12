using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Common;
using healtpoint.Controller;
namespace healtpoint.View
{
    public partial class ChangePW : System.Web.UI.Page
    {
        String type;
        String adminSalt;
        string staffSalt;
        String username;
        string id;
        AdminController adminController = new AdminController();
        StaffController staffController = new StaffController();
        Security security = new Security();
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"].ToString();
            String email = Request.QueryString["email"].ToString();
            Staff changePWStaff = new Staff();
            Admin changePWAdmin = new Admin();
            if (type.Equals("1"))
            {
                changePWAdmin= adminController.getAdminDetail(email,1);
                adminSalt = changePWAdmin.salt;
                id = changePWAdmin.adminId;
                username = changePWAdmin.adminUsername;
            }
            else
            {
                changePWStaff= staffController.getStaffDetails(email,1);
                staffSalt = changePWStaff.salt;
                id = changePWStaff.staff_id;
                username = changePWStaff.username;
            }
            msg.Text = "A temporary password has been sent to <b>" + email + "</b> . Please enter it below to proceeed ahead";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            Staff staff = new Staff();
            if (type.Equals("1")) {
                admin.adminId = id;
                admin.tempPasword = temp.Text.Trim();
                admin.adminPassword = nwPass.Text.Trim();
                admin.adminUsername = username;
                int result = adminController.updateAdmin(admin,0);
                if (result == 1)
                {
                    Response.Redirect("clinicAdminlogin.aspx");
                }
                else
                {
                    error.Style["display"] = "block";
                }

            }
            if (type.Equals("2"))
            {
                staff.tempPassword = temp.Text;
                staff.password = nwPass.Text;
                staff.staff_id = id;
                staff.username = username;
                int result = staffController.updateStaff(staff, 0);
                if (result == 1)
                {
                    Response.Redirect("stafflogin.aspx");
                }
                else
                {
                    error.Style["display"] = "block";
                }

            }

        }
    }
}