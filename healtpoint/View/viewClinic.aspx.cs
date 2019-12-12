using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Controller;
using healtpoint.Models;
namespace healtpoint.View
{
    public partial class viewClinic : System.Web.UI.Page
    {
        List<HospitalDetails> allHospital = new List<HospitalDetails>();
        HospitalController hospitalController = new HospitalController();
        bool check=false;
        protected void Page_Load(object sender, EventArgs e)
        {
            allHospital = hospitalController.getListOfHospital();
            if (allHospital!=null) {
                check= true;

                
            }
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
        }

        public string cilnicDetails() {
            string tableData = null;
            if (check)
            {
                tableData += "<table style='width: 100 %;' class='table table-hover text-centered' border='1' runat='server' >"
                + "<tr style='color:green; font-weight: bold;'><td>Clinic Number</td> <td>Clinic Name</td> </tr>";
                foreach (HospitalDetails hd in allHospital)
                {
                    tableData += "<tr><td>" + hd.clinicNum + "</td><td>" + hd.nameOfClinic + "</td></tr>";

                }
                tableData += "</table>";

            }
            else
            {
                tableData = "<asp:Label runat='server' style='color:red' >Please add clinic to view clinic details</ asp:Label >";
                
            }
                return tableData;
        }
    }
}