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
    public partial class selectClinic : System.Web.UI.Page
    {
        HospitalController hospitalController = new HospitalController();
        PatientController patientController = new PatientController();
        string clinic;
        string tableData;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HospitalDetails> hospitalList = hospitalController.getListOfHospital();
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
            if (ClinicDropDownList1.Items.Count == 0)
            {
                ClinicDropDownList1.Items.Add(new ListItem("----Select----", "----Select----"));
                foreach (HospitalDetails hsp in hospitalList)
                {
                    ClinicDropDownList1.Items.Add(new ListItem(hsp.nameOfClinic, hsp.nameOfClinic));
                }
            }
        }

        public String getPatientList()
        {
            String data = null;
            if (tableData != null)
            {
                data = "<table class='table table-hover text-centered' id ='searchTable' runat='server' visible='false' border='1' >"
                 + "<tr style='color:green; font-weight: bold;'><td>MRN_Number</td> <td>Gender</td><td>Date of Birth</td> </tr>" +
                 tableData + "</table>";
            }
            else
            { data = "No records found"; }

            return data;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            clinic = ClinicDropDownList1.SelectedItem.Value;
            tableData = patientController.getPatientList(clinic);

            if (tableData != null)

            {
                patientDetails.Visible = true;

                info.Text = "List of patients linked to " + clinic;
            }
            else
                patientDetails.Visible = true;

        }
    }
}