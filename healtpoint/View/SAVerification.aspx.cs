using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
namespace healtpoint
{
    public partial class StaffVerification : System.Web.UI.Page
    {
          StaffController staffController = new StaffController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String email = Request.QueryString["emailaddress"].ToString();
          
            verificationMessgae.Text = "An activation code has been sent to <strong>" + email + "</strong>.Please enter it below to proceed ahead";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string actCode = Session["activationCode"].ToString();
            string tempCode = code.Text;
            if (actCode.Equals(tempCode)) {
                Session["SadminStatus"] = "SadminStart";
                Session["statusStaff"] = "test";
                Session["statusClinic"] = "test";
                Response.Redirect("SuperAdminIndex.aspx");
            }
            }
            

        }
    }
