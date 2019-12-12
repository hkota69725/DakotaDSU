using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint
{
    public partial class default1 : System.Web.UI.Page
    {
        protected void Page_Init(object Sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
            try
            {
                if (Session["statusClinic"].ToString().Equals("Clinicstart"))
                {
                    String status = Request.QueryString["status"].ToString();

                    if (status.Equals("end"))
                    {
                        Session["statusClinic"] = "end";
                    }
                    else if (status.Equals("end"))
                    {
                        Session["statusClinic"] = "end";
                    }
                }
                if (Session["statusStaff"].ToString().Equals("Staffstart"))
                {
                    String status = Request.QueryString["status"].ToString();
                    if (status.Equals("endStaff"))
                    {
                        Session["statusStaff"] = "end";
                    }
                    else if (status.Equals("end"))
                    {
                        Session["statusStaff"] = "end";
                    }
                }
                if (Session["patientStatus"].ToString().Equals("patientStart"))
                {
                    String status = Request.QueryString["status"].ToString();
                    if (status.Equals("end"))
                    {
                        Session["patientStatus"] = "end";
                    }
                }

                if (Session["SadminStatus"].ToString().Equals("SadminStart"))
                {
                    String status = Request.QueryString["status"].ToString();
                    if (status.Equals("end"))
                    {
                        Session["SadminStatus"] = "end";
                    }
                    else if (status.Equals("end"))
                    {
                        Session["SadminStatus"] = "end";
                    }
                }
            }
            catch (Exception)
            {
               
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("patientlogin.aspx");

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("stafflogin.aspx");

        }
    }
}