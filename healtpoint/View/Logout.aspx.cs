using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["status"].ToString().Equals("start")))
            {

                Response.Redirect("default1.aspx");
                
            }
            if (Session["firstname"] != null)
            {

                firstname.Text = Session["firstname"].ToString();

            }
            if (!IsPostBack)
            {
                if (Session["patientStatus"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["firstname"] = null;
            Session["patientStatus"] = "end";
            Response.Redirect("default1.aspx?status=end");
        }
    }
}