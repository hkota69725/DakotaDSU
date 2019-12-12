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
    public partial class patientlogin : System.Web.UI.Page
    {
        public Patient patient { get; set; }
        public PatientController patientController = new PatientController();
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if(Session["pid"].ToString()!=null)
            {
                Response.Redirect("PatientLoginClinic.aspx");
            }*/
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Patient patientDetails = new Patient();
            patient = new Patient();
            patient.ssn = PatientSSN.Text;
            if (String.IsNullOrEmpty(PatientDOB.Text))
            {
                error1.Style["display"] = "block";
            }
            else
            {
                DateTime oDate = Convert.ToDateTime(PatientDOB.Text);
                String date = oDate.Year + "-" + oDate.Month + "-" + oDate.Day;
                patient.dob = date;
                patientDetails = patientController.checkLogin(patient);
                if (patientDetails.pid != null)
                {
                    Session["firstName"] = patientDetails.firstName;
                    Session["lastName"] = patientDetails.lastName;
                    Session["ssn"] = patientDetails.ssn;
                    Session["gender"] = patientDetails.gender;
                    Session["patientStatus"] = "patientStart";
                    Response.Redirect("PatientLoginClinic.aspx");
                }

                else
                {
                    error.Style["display"] = "block";
                }
            }
            
        }
    }
}