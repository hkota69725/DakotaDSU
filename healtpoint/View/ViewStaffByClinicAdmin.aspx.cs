using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
using System.Web.Services;
using healtpoint.Common;
using System.Net.Mail;
namespace healtpoint
{
    public partial class ViewStaffByClinicAdmin : System.Web.UI.Page
    {
        AdminController AdminController = new AdminController();
        HospitalController hospitalController = new HospitalController();
        static StaffController staffController = new StaffController();
        static Security security = new Security();
        static String rand = "b26fYr5Q";
        string type;
        string tabledata { get; set; }

        public String getStaff()
        {
            String data = "<table style='width: 100 %;' border='1' class='table table-hover text-centered' id='searchTable' runat='server' visible='false'>"
                + "<tr style='color:green; font-weight: bold;'><td>Staff FirstName</td><td>Staff EmailID</td><td> Status</td><td> </td></tr>" +
                tabledata + "</table>";

            return data;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"].ToString();
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
            if (type.Equals("1"))
            {
                string cID = Session["adminId"].ToString();
                //string cID = "11";
                tabledata = AdminController.GetStaff(cID, type);
            }
            else if (type.Equals("2"))
            {
                selectClinic.Visible = true;
                staffDetail.Visible = false;
                List<HospitalDetails> hospitalList = hospitalController.getListOfHospital();
                if (ClinicDropDownList1.Items.Count == 0)
                {
                    ClinicDropDownList1.Items.Add(new ListItem("----Select----", "----Select----"));
                    foreach (HospitalDetails hsp in hospitalList)
                    {
                        ClinicDropDownList1.Items.Add(new ListItem(hsp.nameOfClinic, hsp.clinicNum));
                    }
                }
            }
        }


        [WebMethod]
        public static void Update_Click(String emailAddHF, string staffIDHF, string nameHF,
            string stsHF, string Ename, string Eaddress, string stsLbl
          )
        {

            if (!(stsLbl.Equals("1")) && !(stsLbl.Equals("0")))
            {
                stsLbl = stsHF;
            }
            Staff staff = new Staff();
            Admin admin = new Admin();
            if (!(emailAddHF.Equals(Eaddress)) || !(stsLbl.Equals(stsHF)) || !(Ename.Equals(nameHF)))
            {
                staff.staff_id = staffIDHF;
                staff.email = Eaddress;
                staff.status = stsLbl;
                staff.firstName = Ename;
                staffController.updateStaff(staff, 4);

            }

            if (!(emailAddHF.Equals(Eaddress)))
            {

                string pw = security.GeneratePassword();
                Staff staffDetails = new Staff();
                staffDetails = staffController.getSaltAndUsername(staff.staff_id);
                staff.hashPW = security.GenerateHash(pw, staffDetails.salt + rand);
                staff.username = staffDetails.username;
                staffController.updateStaff(staff, 2);
                sendEmail(staff, pw);

            }


        }

        private static void sendEmail(Staff staff, string pw)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "123sbirt");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Welcome to SBIRT";
            msg.Body = "Dear Customer, please find follow the link:  http://localhost:50433/View/staffInitialLogin.aspx  . Here is your username: <b>"
                + staff.username + " </b> and temporary password: <b> " + pw + "</b>";
            msg.To.Add(staff.email);
            string fromAddress = "No Reply SBIRT <noreplysbirt@gmail.com>";
            msg.From = new MailAddress(fromAddress);
            try
            {
                smtp.Send(msg);
            }
            catch { throw; }
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            String clinic = ClinicDropDownList1.SelectedItem.Value;
            tabledata = AdminController.GetStaff(clinic, type);
            if (tabledata != null)
            {
                staffDetail.Visible = true;
            }
            else
                noRecDiv.Visible = true;


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
