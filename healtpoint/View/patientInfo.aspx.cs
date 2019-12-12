using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
using healtpoint.Common;
using System.Text;
namespace healtpoint
{
    public partial class patientInfo : System.Web.UI.Page
    {
        PatientController patientController = new PatientController();
        Patient patient = new Patient();
        Security security = new Security();
       //static EncryptDecyrpt encryptDecyrpt = new EncryptDecyrpt();
       // private  readonly EncryptDecyrpt encryptDecyrpt = new EncryptDecyrpt();
        //String rand = "bLUm017e";
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
            String pid = Session["pid"].ToString();
            patient = patientController.getPatientAllDetails(pid);
            lbFN.Text = patient.firstName;
            lbLNm.Text = patient.lastName;
            lbGdr.Text = patient.gender;
            lblmrn.Text = patient.mrnNum;
            lbDOB.Text = patient.dob;
            lbSsn.Text = EncryptDecyrptClass.DecryptString(patient.ssn);
            lbAdd.Text = patient.address1;
            lbPh.Text = patient.phoneNumber;
            lbClNm.Text = patient.clinic;
            lbEml.Text = patient.emailAddress;
            city.Text = patient.city;
            state.Text = patient.state;
            postalCode.Text = patient.postalCode;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Patient newDetail = new Patient();
            if (!string.IsNullOrEmpty(hdfnAddress1.Value))
            {
                /* newDetail.firstName = hdnfFN.Value;
                 newDetail.suffix = hdfnSuffix.Value;
                 newDetail.middleName = hdnfMN.Value;
                 newDetail.lastName = hdnfLN.Value;
                 newDetail.gender = hdfnGender.Value;
                 DateTime oDate = Convert.ToDateTime(hdfnDOB.Value);
                 String date = oDate.Year + "-" + oDate.Month + "-" + oDate.Day;
                 newDetail.dob = date;
                 newDetail.ssn = hdfnSSN.Value; */
                newDetail.address1 = hdfnAddress1.Value;
                newDetail.city = hdfnCity.Value;
                newDetail.state = hdfnState.Value;
                newDetail.postalCode = hdfnPostal.Value;
                newDetail.phoneNumber = hdfnPhn.Value;
                //newDetail.clinic = hdfnClinic.Value;
                newDetail.emailAddress = hdfnEmail.Value;
                //newDetail.mrnNum = hdfnmrn.Value;
                //newDetail.hashPW = security.GenerateHash(hdfnSSN.Value.Substring(4, 5), patient.salt+rand);
                patientController.updateDetails(newDetail, Session["pid"].ToString());
                Response.Redirect("patientInfo.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("alcohol_quest_initial_page.aspx");
        }


    }
}


