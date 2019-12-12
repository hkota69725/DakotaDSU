using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["statusClinic"] = "test";
            Session["statusStaff"] = "test";
            Session["status"] = "start";
            Session["patientStatus"] = "start";
            Session["SadminStatus"] = "start";
            Session["providerStatus"] = "start";
        }
    }
}