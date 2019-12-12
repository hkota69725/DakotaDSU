using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Common;
using MySql.Data.MySqlClient;
using healtpoint.Controller;
using healtpoint.Models;

namespace healtpoint
{
    public partial class PatientLoginClinic : System.Web.UI.Page
    {
        MySqlConnection connection = new MySqlConnection();
        PatientController patientController = new PatientController();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            Session["status"] = "start";
            string FirstNm = Session["firstName"].ToString();
            string LastNm = Session["lastName"].ToString();
            string ssn = Session["ssn"].ToString();
            List<HospitalDetails> Clinic = patientController.getPatientClinic(FirstNm,LastNm,ssn);
            DropDownList1.Items.Add(new ListItem("Select: ", "Select"));
            foreach (HospitalDetails hsp in Clinic)
            {
                DropDownList1.Items.Add(new ListItem(hsp.nameOfClinic, hsp.clinicNum));
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            string clinic = DropDownList1.SelectedItem.Value;
            string FirstNm = Session["firstName"].ToString();
            string LastNm = Session["lastName"].ToString();
            string ssn = Session["ssn"].ToString();
            string pid = patientController.getPatientID(FirstNm, LastNm, ssn, clinic);
            Session["clinic"] = clinic.ToString();
            Session["pid"] = pid.ToString();
            Response.Redirect("patientInfo.aspx");
        }
    }
}