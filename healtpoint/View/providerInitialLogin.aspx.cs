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
    public partial class providerInitialLogin : System.Web.UI.Page
    {
        Provider provider = new Provider();
        ProviderController providerController = new ProviderController();
        Admin admin = new Admin();
        AdminController adminController = new AdminController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            provider.username = userName.Text;
            provider.tempPassword = AtempPassword.Text;
            provider.password = nwPassword.Text;
            int result = providerController.updateProvider(provider, 0);
            if (result == 1)
            {
                Response.Redirect("providerlogin.aspx");
            }
            else
                errorDiv.Visible = true;
        }
    }
}