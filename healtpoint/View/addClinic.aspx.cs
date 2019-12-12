using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
namespace healtpoint
{
    public partial class Hospital : System.Web.UI.Page
    {


        HospitalDetails hospital { get; set; }

        HospitalController hospitalController = new HospitalController();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["SadminStatus"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            bool check = false;
            hospital = new HospitalDetails();
            hospital.clinicNum = confirmClinicNum.Text;
            hospital.nameOfClinic = clinic.Text;
             check = hospitalController.checkClinicNum(hospital.clinicNum);
            if (!check)
            {

                hospitalController.insertClinic(hospital);
                Response.Redirect("superAdminIndex.aspx");
            }
            else
            {
                error.Style["display"] = "block";
            }
        }
    }
}