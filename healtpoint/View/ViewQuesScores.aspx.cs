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
    public partial class ViewAuditQuestions : System.Web.UI.Page
    {
        PatientController patientController = new PatientController();
        String pid;
        ScoreController scoreController = new ScoreController();
        string Audit_data { get; set; }
        string Dast_data { get; set; }
        string Phq_data { get; set; }
        string Score_data { get; set; }
        string Audit_score { get; set; }
        string Dast_score { get; set; }
        string Phq_score { get; set; }
        string Tobacco_score { get; set; }
        string SingleDrug { get; set; }

        public String getAssmtScore()
        {
            String data = "<table class='table table-hover text-centered' style='width: 100 %;' border='1' runat='server'>"
                            + "<tr style='color:green; font-weight: bold;'><td>Screening Date</td><td>Audit</td><td>DAST</td><td>PHQ</td><td>Tobacco</td></tr>"
                            + Score_data + "</table>";

            return data;
        }

        public String getAuditQuestnScore()
        {
            String data = "<table class='table table-hover text-left' style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td  class='text-center'>Question</td><td class='text-center'>Response</td><td class='text-center'>Score</td> </tr>" +
                Audit_data + "</table>";

            return data;
        }

        public string getTobaccoQuestnScore()
        {
            String data = "<table class='table table-hover text-left' style='width: 100 %;' class='table table-hover text-centered' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td class='text-center'>Question</td><td class='text-center'>Response</td></tr>" + "<tr><td>Are you a current Tobacco user? </td> <td>" +
                Tobacco_score + "</td></tr></table>";
            return data;
        }

        public String getDastQuestnScore()
        {
            String data = null;
            if (Dast_data != null)
            {
                data = "<table class='table table-hover text-left' style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                    + "<tr style='color:green; font-weight: bold;'><td class='text-center'>Question</td><td class='text-center'>Response</td><td class='text-center'>Score</td> </tr>" +
                    Dast_data + "</table>";
            }
            return data;
        }

        public String getPHQQuestnScore()
        {
            String data = "<table  class='table table-hover text-left' style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td class='text-center'>Question</td><td class='text-center'>Response</td><td class='text-center'>Score</td> </tr>" +
                Phq_data + "</table>";

            return data;
        }
        public String getAuditSingleScore()
        {
            String data = "The Audit Score is : " + Audit_score;

            return data;
        }
        public String getDastSingleScore()
        {
            String data = "The Dast Score is : " + Dast_score;

            return data;
        }
        public String getPHQSingleScore()
        {
            String data = "The PHQ Score is : " + Phq_score;

            return data;
        }

        public String getSingleDrugQuestnScore()
        {
            String data = "<table  style='width: 100 %;' border='1' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td>Question</td><td>Response</td></tr>" +
                SingleDrug + "</table>";

            return data;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Patient patient = new Patient();
            pid = Request.QueryString["pid"].ToString();
            String SrnDt = Request.QueryString["date"].ToString();
            patient = patientController.getPatientDetails(pid);
            Score score = new Score();
            if (Session["SadminStatus"].ToString().Equals("SadminStart"))
            {
                myDIV1.Style["display"] = "none";
                myDIV2.Style["display"] = "none";
                lbGdr.Text = patient.gender;
                lbDOB.Text = patient.dob;
                Audit_data = scoreController.GetQuesAns(pid, "1", SrnDt);
                Dast_data = scoreController.GetQuesAns(pid, "3", SrnDt);
                Phq_data = scoreController.GetQuesAns(pid, "2", SrnDt);
                Score_data = scoreController.GetAssmtScore(pid, SrnDt);
                Tobacco_score = scoreController.GetTobaccoScore(pid, SrnDt);
                Audit_score = scoreController.AuditSingleScore(pid, SrnDt);
                Dast_score = scoreController.DastSingleScore(pid, SrnDt);
                Phq_score = scoreController.PhqSingleScore(pid, SrnDt);
                SingleDrug = scoreController.GetSingleDrugQues(pid, SrnDt);
            }
            else
            {
                lbFN.Text = patient.firstName;
                lbLNm.Text = patient.lastName;
                lbGdr.Text = patient.gender;
                lbDOB.Text = patient.dob;
                Audit_data = scoreController.GetQuesAns(pid, "1", SrnDt);
                Dast_data = scoreController.GetQuesAns(pid, "3", SrnDt);
                Phq_data = scoreController.GetQuesAns(pid, "2", SrnDt);
                Score_data = scoreController.GetAssmtScore(pid, SrnDt);
                Tobacco_score = scoreController.GetTobaccoScore(pid, SrnDt);
                Audit_score = scoreController.AuditSingleScore(pid, SrnDt);
                Dast_score = scoreController.DastSingleScore(pid, SrnDt);
                Phq_score = scoreController.PhqSingleScore(pid, SrnDt);
                SingleDrug = scoreController.GetSingleDrugQues(pid, SrnDt);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Patient patient = new Patient();
            String pid = Request.QueryString["pid"].ToString();
            patient = patientController.getPatientAllDetails(pid);
            Response.Redirect("ViewPatientInfoScore.aspx?id=" + pid);
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