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
    public partial class addStaff : System.Web.UI.Page
    {
        String rand = "b26fYr5Q";
        StaffController staffController = new StaffController();
        Staff staff = new Staff();
        Security security = new Security();
        string type = null;
        HospitalController hospitalController = new HospitalController();

        AdminController adminController = new AdminController();
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
                clinicDiv.Visible = true;
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


        protected void Button5_Click(object sender, EventArgs e)
        {
            staff.firstName = firstName.Text.Trim();
            staff.lastName = lastName.Text.Trim();
            staff.email = emailAdd.Text;
            staff.username = Susername.Text;
            String name = staff.username;
            staff.phoneNum = sphone.Text;
            if (type.Equals("0"))
            {
                staff.clinicNumber = Session["clinicID"].ToString();
                staff.clinicAdminID = Session["adminId"].ToString();
                bool check = staffController.checkUsername(staff);
                if(!string.IsNullOrEmpty(name))
                {
                    if (!check)
                    {
                        String password = security.GeneratePassword();
                        staff.salt = security.CreateSalt();
                        staff.password = password;
                        staff.tempPassword = security.GenerateHash(password, staff.salt + rand);
                        staffController.insertStaffDetails(staff);
                        sendEmail(staff);
                        Response.Redirect("clinicAdminIndex.aspx");
                    }

                    else
                        error.Text = "Try again by selecting new username.";
                }
                
            }
            else
            {
                staff.clinicNumber = ClinicDropDownList1.SelectedItem.Value;
                List<Admin> listAdmin = new List<Admin>();
                listAdmin = adminController.getClinicAllAdminID(staff.clinicNumber);
                if (listAdmin.Count >= 1)
                {

                    staff.clinicAdminID = listAdmin[0].adminId;
                    bool check = staffController.checkUsername(staff);
                    if (!string.IsNullOrEmpty(name))
                    {
                        if (!check)
                        {
                            String password = security.GeneratePassword();
                            staff.salt = security.CreateSalt();
                            staff.password = password;
                            staff.tempPassword = security.GenerateHash(password, staff.salt + rand);
                            staffController.insertStaffDetails(staff);
                            sendEmail(staff);
                            Response.Redirect("SuperAdminIndex.aspx");
                        }
                        else
                            error.Text = "Try again by selecting new username.";
                    }
                        
                }
                else
                    error.Text = "Please add clinic admin first before adding staff to the clinic.";
            }

        }

        private void sendEmail(Staff staff)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("noreplysbirt@gmail.com", "123sbirt");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.Subject = "Welcome to SBIRT";
            msg.Body = "Dear Customer, please find follow the link:  https://dss-dg.sd.gov/View/staffInitialLogin.aspx  . Here is your username: <b>"
                + staff.username + " </b> and temporary password: <b> " + staff.password + "</b>";
            msg.To.Add(staff.email);
            string fromAddress = "No Reply SBIRT <noreplysbirt@gmail.com>";
            msg.From = new MailAddress(fromAddress);
            try
            {
                smtp.Send(msg);
            }
            catch { throw; }
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

