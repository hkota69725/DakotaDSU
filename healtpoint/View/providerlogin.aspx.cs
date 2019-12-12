using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
namespace healtpoint.View
{
    public partial class providerlogin : System.Web.UI.Page
    {
        public Provider provider = new Provider();
        public ProviderController providerController = new ProviderController();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Button5_Click(object sender, EventArgs e)
        {
            Provider providerDetails = new Provider();
            provider.username = providerLoginID.Text;
            provider.password = providerPassword.Text;

            providerDetails = providerController.verifyProvider(provider);
            if (providerDetails.npi != null)
            {
                Session["npi"] = providerDetails.npi;
                Session["clinicID"] = providerDetails.clinicNumber;
                Response.Redirect("PatientList.aspx?type=2");
            }
            else
            {
                error.Style["display"] = "block";
            }
        }
    }
}
