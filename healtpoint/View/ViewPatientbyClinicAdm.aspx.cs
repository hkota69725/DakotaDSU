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
    public partial class ViewPatientbyClinicAdm : System.Web.UI.Page
    {

        PatientController patientController = new PatientController();
        string tabledata1 { get; set; }
        string tabledata2 { get; set; }

        String cid;
        public String getPatients()
        {
            String data = "<table class='table table-hover text-centered' style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td>MRN_Number</td> <td>Name</td><td>Gender</td><td>Date of Birth</td> </tr>" +
                tabledata1 + "</table>";

            return data;
        }
        public String getSelectedPatient()
        {
            String data = "<table class='table table-hover text-centered' style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td>MRN_Number</td> <td>Name</td><td>Gender</td><td>Date of Birth</td> </tr>" +
                tabledata2 + "</table>";

            return data;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            cid = Session["adminId"].ToString();
            tabledata1 = patientController.AllPatient(cid);
            if (!IsPostBack)
            {
                if (Session["statusClinic"].ToString().Equals("end"))
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
            string MRN = mrn.Text;
            tabledata2 = patientController.SelectedPatient(cid, MRN);
            if (tabledata2 != null)

            {
                All.Visible = false;
                SelectedPatient.Visible = true;
            }
        }
    }
}