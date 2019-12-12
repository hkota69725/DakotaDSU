using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
using System.Net.Mail;
using healtpoint.Common;
namespace healtpoint.View
{
    public partial class AddProvider : System.Web.UI.Page
    {
        String rand = "1Klb1vB8";
        ProviderController ProvdController = new ProviderController();
        Provider provider = new Provider();
        Security security = new Security();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            provider.email = emailAdd.Text;
            provider.username = Pusername.Text;
            provider.phoneNum = Pphone.Text;
            provider.clinicNumber = Session["clinicID"].ToString();
            provider.clinicAdminID = Session["adminId"].ToString();
            provider.npi = npitxt.Text;
            provider.providerName = providerNametxt.Text;
            string npi = ProvdController.checkNPI(provider);
            if (npi==null)
            {
                String password = security.GeneratePassword();
                provider.salt = security.CreateSalt();
                provider.password = password;
                provider.tempPassword = security.GenerateHash(password, provider.salt + rand);
                ProvdController.insertProviDetails(provider);
                sendEmail(provider);
                Response.Redirect("clinicAdminIndex.aspx");
            }

            else
                Response.Redirect("clinicAdminIndex.aspx");


        }

        private void sendEmail(Provider provider)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "123sbirt");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Welcome to SBIRT";
            msg.Body = "Dear Customer, please find follow the link:  https://dss-dg.sd.gov/View/providerInitialLogin.aspx  . Here is your username: <b>"
                + provider.username + " </b> and temporary password: <b> " + provider.password + "</b>";
            msg.To.Add(provider.email);
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