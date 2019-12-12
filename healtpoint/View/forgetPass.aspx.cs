using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
using healtpoint.Common;
using System.Net.Mail;
namespace healtpoint.View
{
    public partial class forgetPass : System.Web.UI.Page
    {
        String id = null;
        Security security = new Security();
        StaffController staffController = new StaffController();
        AdminController adminController = new AdminController();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"].ToString();
            Session["type"] = id;            
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String username = credential.Text;
            String email=null;
            string tempPW = null;
            Admin admin = new Admin();
            Staff staff = new Staff();
            if (id.Equals("1")) {
                String Arand = "o6v2W2jR";
                admin = adminController.getAdminDetail(username,2);
                 tempPW = security.GeneratePassword();
                admin.hashPW = security.GenerateHash(tempPW, admin.salt+Arand);
                adminController.updateAdmin(admin,2);
                email = admin.adminEmail;
                sendEmail(email, tempPW,1);
                Response.Redirect("ChangePW.aspx?type=" + id + "&email=" + email);

            }
           else if (id.Equals("2")) {
                staff = staffController.getStaffDetails(username,2);
                String rand = "b26fYr5Q";
                tempPW = security.GeneratePassword();
                staff.hashPW = security.GenerateHash(tempPW, staff.salt+rand);
                staffController.updateStaff(staff,2);
                email = staff.email;
                Session["staffSalt"] = staff.salt;
                sendEmail(email, tempPW,2);
                Response.Redirect("ChangePW.aspx?type=" + id + "&email=" + email);

            }

        }

        private void sendEmail(String email, String tempPW, int type)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "Sbirt@123");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Temporary password";
            if(type == 1)
            {
                msg.Body = "Dear Customer,  Follow this link to change password https://dss-dg.sd.gov/View/clinicAdminInitial.aspx Use this  temporary password to create new password:  <b> " + tempPW + "   </b>";

            }
            if(type == 2)
            {
                msg.Body = "Dear Customer,  Follow this link to change password https://dss-dg.sd.gov/View/StaffInitialLogin.aspx Use this  temporary password to create new password:  <b> " + tempPW + "   </b>";

            }
            msg.To.Add(email);
            string fromAddress = "No Reply SBIRT <noreplysbirt@gmail.com>";
            msg.From = new MailAddress(fromAddress);
            msg.IsBodyHtml = true;
            
            try
            {
                smtp.Send(msg);
            }
            catch { throw; }
        }
    }
}