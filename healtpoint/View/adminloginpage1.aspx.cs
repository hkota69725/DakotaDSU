using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint
{
    public partial class adminloginpage : System.Web.UI.Page
    {
        protected void Button5_Click(object sender, EventArgs e)
        {
            String username = Request.Form["AdminLoginID"];
            String password = Request.Form["AdminPassword"];
            if (username.Equals("admin") && password.Equals("admin"))
            {
                Response.Redirect("Hospital.aspx");
            }

        }
    }
}