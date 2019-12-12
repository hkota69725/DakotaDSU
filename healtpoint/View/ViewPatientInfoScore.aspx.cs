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

namespace healtpoint
{
    public partial class ViewPatientInfoScore : System.Web.UI.Page
    {
        PatientController patientController = new PatientController();

        ScoreController scoreController = new ScoreController();

        ProviderController ProviderControl = new ProviderController();
        string tabledata { get; set; }
        String PatientID = null;

        string Provider { get; set; }
        public String getScore()
        {
            String data = "<table class='table table-hover text-centered' style='width: 100 %;' border='1' runat='server'>"
                            + "<tr style='color:green; font-weight: bold;'><td>Screening Date</td><td>AUDIT</td><td>DAST</td><td>PHQ</td><td>Tobacco</td></tr>"
                            + tabledata + "</table>";

            return data;
        }

        public String getProvider()
        {
            String data = Provider;
            return data;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Patient patient = new Patient();
                List<Provider> ProviderLst = new List<Provider>();
                String mrn = Request.QueryString["id"].ToString();
                patient = patientController.getPatientDetails(mrn);

                if (Session["statusStaff"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else if (Session["SadminStatus"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else if (Session["statusClinic"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
                if (Session["SadminStatus"].ToString().Equals("SadminStart"))
                {
                    myDIV1.Style["display"] = "none";
                    myDIV2.Style["display"] = "none";
                    lbGdr.Text = patient.gender;
                    lbDOB.Text = patient.dob;
                    tabledata = scoreController.GetScore(patient.pid);
                    Provider = ProviderControl.getProvider(patient.pid);
                    ProviderLst = ProviderControl.getAllProvider(patient.pid, "2");
                    DropDownList1.Items.Add(new ListItem("Select: ", "Select"));
                    foreach (Provider pro in ProviderLst)
                    {
                        DropDownList1.Items.Add(new ListItem(pro.providerName, pro.npi));
                    }
                }
                else
                {
                    lbFN.Text = patient.firstName;
                    lbLNm.Text = patient.lastName;
                    lbGdr.Text = patient.gender;
                    lbDOB.Text = patient.dob;
                    tabledata = scoreController.GetScore(patient.pid);
                    Provider = ProviderControl.getProvider(patient.pid);
                    ProviderLst = ProviderControl.getAllProvider(patient.pid, "2");
                    DropDownList1.Items.Add(new ListItem("Select: ", "Select"));
                    foreach (Provider pro in ProviderLst)
                    {
                        DropDownList1.Items.Add(new ListItem(pro.providerName, pro.npi));
                    }
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Patient patient = new Patient();
            String mrn = Request.QueryString["id"].ToString();
            patient = patientController.getPatientDetails(mrn);
            PatientID = patient.pid;
            ProviderControl.insertPatientProv(DropDownList1.SelectedItem.ToString(), PatientID);
            Response.Redirect("ViewPatientInfoScore.aspx?id=" + PatientID);
        }
        protected void Button6_Click(object sender, EventArgs e)
        {

            if (Session["statusClinic"].ToString().Equals("Clinicstart"))
                Response.Redirect("ViewPatientbyClinicAdm.aspx");
            if (Session["statusStaff"].ToString().Equals("Staffstart"))
                Response.Redirect("patientList.aspx?type=1");
        }
        protected void Button8_Click(object sender, ImageClickEventArgs e)
        {

            if (Session["SadminStatus"].ToString().Equals("SadminStart"))
                Response.Redirect("SuperAdminIndex.aspx");
            if (Session["statusClinic"].ToString().Equals("Clinicstart"))
                Response.Redirect("clinicAdminIndex.aspx");
            if (Session["statusStaff"].ToString().Equals("Staffstart"))
                Response.Redirect("patientList.aspx?type=1");
        }
    }
}