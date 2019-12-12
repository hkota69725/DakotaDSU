using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class SuperAdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String email = superEmail.Text;
            String email1 = email.ToLower();
            string pw = superPW.Text.ToLower();
            if ((email1.Equals("hemanth.polakampally@trojans.dsu.edu") || email1.Equals("breinne.baltzer@state.sd.us") || email1.Equals("ben@sageprojectconsultants.com") || email1.Equals("rachel@sageprojectconsultants.com")) && pw.Equals("admin")) {
                Random random = new Random();
                String activationCode = random.Next(10001, 99999).ToString();
                Session["activationCode"] = activationCode;
                sendCode(email, activationCode);
                
                Response.Redirect("SAVerification.aspx?emailaddress=" + email1);
            }

            else
                error.Style["display"] = "block";
        }

        public void sendCode(String email, string activationCode)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "Sbirt@123");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Verification code for SBIRT";
            msg.Body = "Dear Customer, please find your activation code here:" + activationCode;
            msg.To.Add(email);
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