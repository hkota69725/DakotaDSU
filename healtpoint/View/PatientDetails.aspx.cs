using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
using healtpoint.Common;
using MySql.Data.MySqlClient;

namespace healtpoint.View
{
    public partial class PatientDetails : System.Web.UI.Page
    {
        PatientController patientController = new PatientController();
        string tabledata { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PatientDemographics patient = new PatientDemographics();
                String mrn = Request.QueryString["id"].ToString();
                patient = patientController.getPatientDetails1(mrn);

                MRNN.Text = patient.MRN_Number;
                DOB.Text = patient.dateOfBirth;
                GEND.Text = patient.Gender;
                PETH.Text = patient.Patient_Ethics;
                PRAC.Text = patient.Patient_Race;
                SDATE.Text = patient.reportingDate;
                tabledata = patientController.findPatient1(patient.MRN_Number);
            }
        }
        public String getPatientInfo()
        {
            String data = "<table class='own-table' id ='searchTable' runat='server' visible='false' border='1' >"
                + "<tr style='color:green; font-weight: bold;'><td>Visit Type</td> <td>Strucutred Data Name</td><td>Structured Data Value</td></tr>" +
                tabledata + "</table>";

            return data;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientList.aspx?type=1");
        }


    }
}