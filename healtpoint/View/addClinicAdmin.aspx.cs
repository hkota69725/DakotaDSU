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
using System.Web.Helpers;

namespace healtpoint.View
{
    public partial class addClinicAdmin : System.Web.UI.Page
    {
       
        HospitalController hospitalController = new HospitalController();
        AdminController adminController = new AdminController();
        Admin admin = new Admin();
        Security security = new Security();
        String rand = "o6v2W2jR";
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HospitalDetails> hospitalList = hospitalController.getListOfHospital();
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
            ClinicDropDownList1.Items.Add(new ListItem("----Select----", "----Select----"));
            foreach (HospitalDetails hsp in hospitalList)
            {
                ClinicDropDownList1.Items.Add(new ListItem(hsp.nameOfClinic, hsp.clinicNum));
            }
        }


        protected void Button5_Click(object sender, EventArgs e)
        {

            admin.adminUsername = Ausername.Text;
            admin.adminEmail = Aemail.Text;
            admin.clinicID = ClinicDropDownList1.SelectedItem.Value;
            bool check = adminController.checkUsername(admin);
            if (!check)
            {
                string salt = security.CreateSalt();
                string temp = security.GeneratePassword();
                admin.salt = salt;
                admin.tempPasword = security.GenerateHash(temp, salt + rand);
                admin.clinicID = ClinicDropDownList1.SelectedItem.Value;
                adminController.addAdmin(admin);
                sendEmail(admin, temp);
                Response.Redirect("superAdminIndex.aspx");
            }

            else
            {
                error.Style["display"] = "block";
            }
        }

        private void sendEmail(Admin admin, string temp)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "123sbirt");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Welcome to SBIRT";
            msg.Body = "Dear Customer, please find follow the link:  https://dss-dg.sd.gov/View/clinicAdminInitial.aspx  . Here is your username:  <b>"
                + admin.adminUsername + " </b> and temporary password:  <b> " + temp +"</b>";
            msg.To.Add(admin.adminEmail);
            string fromAddress = "No Reply SBIRT <noreplysbirt@gmail.com>";
            msg.From = new MailAddress(fromAddress);
            try
            {
                smtp.Send(msg);
            }
            catch { throw; }
        }
        //Request.Url.AbsoluteUri
        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }


    }
}