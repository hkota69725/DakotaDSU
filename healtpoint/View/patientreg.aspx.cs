using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
using healtpoint.Common;
using System.Text;
namespace healtpoint
{
    public partial class _default : System.Web.UI.Page
    {
        public HospitalController hospital = new HospitalController();
        Security security = new Security();
        public Patient user { get; set; }
        public static PatientController userController { get; set; }
        String rand = "bLUm017e";

        public ProviderController ProviderControl = new ProviderController();

        protected void Page_Load(object sender, EventArgs e)
        {
            string staffID = Session["staff_id"].ToString();
            List<Provider> Provider = ProviderControl.getAllProvider(staffID, "1");
            DropDownList1.Items.Add(new ListItem("Select: ", "Select"));
            if (!IsPostBack)
            {
                if (Session["statusStaff"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
            }
            foreach (Provider pro in Provider)
            {
                DropDownList1.Items.Add(new ListItem(pro.providerName, pro.npi));
            }
            GenderOthers.Style.Add("display", "none");
            genderDropDownList.Attributes.Add("onChange", "setTextBoxVisible(this.selectedIndex == 4);");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            user = new Patient();
            userController = new PatientController();
            user.mrnNum = mrn.Text;
            user.firstName = firstName1.Text.Trim();
            user.lastName = lastName1.Text.Trim();
            user.middleName = middleName.Text;
            user.staffAdminID = Session["staff_id"].ToString();
            user.clinic = hospital.getClinicName(Session["staff_id"].ToString());
            if (genderDropDownList.SelectedItem.Text != "Others")
                user.gender = genderDropDownList.SelectedItem.Text;
            else
                user.gender = GenderOthers.Text;
            String temp = ssn.Text.Replace("-", "");
            String testssn = "****" + temp.Substring(temp.Length - 5);
            user.emailAddress = emailAddress.Text;
            user.address1 = address1.Text;
            user.city = city.Text;
            if (list.SelectedValue == "")
                error.Style["display"] = "block";
            else
            {
                error.Style["display"] = "none";
                user.state = list.SelectedValue;
            }
            user.phoneNumber = phoneNumber.Text;
            user.salt = security.CreateSalt();
            user.ssn = EncryptDecyrptClass.EncryptString(testssn);
            int l = testssn.Length - 1;
            string ss1 = testssn;
            string pw = ss1.Substring(4, 5);
            string hash = security.GenerateHash(pw, user.salt + rand);
            user.hashPW = hash;
            DateTime oDate = Convert.ToDateTime(dob.Text);
            String date = oDate.Year + "-" + oDate.Month + "-" + oDate.Day;
            user.dob = date;
            user.postalCode = postalCode.Text;
            userController.insertUserDemoGraphics(user);
            string PatientID = ProviderControl.GetPatientID(user.ssn, user.dob);
            ProviderControl.insertPatientProv(DropDownList1.SelectedItem.ToString(), PatientID);

            Response.Redirect("PatientList.aspx?type="+1);
        }


    }

}