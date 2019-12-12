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
namespace healtpoint.View
{
    public partial class viewClinicAdmin : System.Web.UI.Page
    {
        HospitalController hospitalController = new HospitalController();
        static AdminController adminController = new AdminController();
        string detail;
        static String rand = "o6v2W2jR";
        static Security security = new Security();
        protected void Page_Load(object sender, EventArgs e)
        {
            String tableData = null;
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
            tableData = adminController.getAllAdmin();
            if (tableData != null)
            {
                detail = "<table class='table table-hover text-centered' style='width: 100 %;' border='1' runat='server' >"
                  + "<tr style='color:green; font-weight: bold;'><td>Username</td> <td>Email</td> <td> Clinic</td> <td> Status</td> <td> </td> <td></td></tr>" + tableData + "</table>";

            }
            else
                detail = "<asp:Label runat='server' style='color:red'>Please add clinic admin to view their details</asp:Label>";

        }

        public string allAdminDetail()
        {
            return detail;
        }

        public void Delete_Click(String UserName)
        {
            adminController.deleteAdmin(UserName);
        }
        [WebMethod]
        public static void Update_Click(String adminIdHF, string emailAddHField, string stsHidden,
              string nwEmail, string nm, string status, string uNm)
        {

            if (!(status.Equals("1")) && !(status.Equals("0")))
            {
                status = stsHidden;
            }
            Admin admin = new Admin();
            if (!(emailAddHField.Equals(nwEmail)) || !(status.Equals(stsHidden)) || !(uNm.Equals(nm)))
            {
                admin.adminId = adminIdHF;
                admin.adminEmail = nwEmail;
                admin.status = status;
                admin.adminUsername = nm;
                adminController.updateAdmin(admin, 4);

            }

            if (!(emailAddHField.Equals(nwEmail)))
            {

                string pw = security.GeneratePassword();
                Admin adminDetail = new Admin();
                adminDetail = adminController.getSaltAndUsername(admin.adminId);
                admin.hashPW = security.GenerateHash(pw, adminDetail.salt + rand);
                admin.adminUsername = adminDetail.adminUsername;
                adminController.updateAdmin(admin, 2);
                sendEmail(admin, pw);

            }


        }





        private static void sendEmail(Admin admin, string temp)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "123sbirt");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Welcome to SBIRT";
            msg.Body = "Dear Customer, please find follow the link:   http://localhost:50433/View/clinicAdminInitial.aspx  . Here is your username:  <b>"
                + admin.adminUsername + " </b> and temporary password:  <b> " + temp + "</b>";
            msg.To.Add(admin.adminEmail);
            string fromAddress = "No Reply SBIRT <noreplysbirt@gmail.com>";
            msg.From = new MailAddress(fromAddress);
            try
            {
                smtp.Send(msg);
            }
            catch { throw; }
        }
    }
}