using System;
using System.Collections.Generic;
using healtpoint.Common;
using healtpoint.Models;
using MySql.Data.MySqlClient;
using healtpoint.Controller;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint
{
    public partial class PatientList : System.Web.UI.Page
    {

        MySqlConnection connection = CommonDB.con();
        PatientController userController = new PatientController();
        String tableData { get; set; }
        string type;
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"].ToString();
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
        }
        public void EmptyControlData(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {
                    ((TextBox)c).Text = "";
                }
                if ((c.GetType() == typeof(DropDownList)))
                {
                    ((DropDownList)c).SelectedIndex = -1;
                    //((DropDownList)c).Items.Clear();
                }
                if (c.HasControls())
                {
                    EmptyControlData(c);
                }
            }
        }
        public String getPatientList()
        {
            String data = "<table class='own-table' id ='searchTable' runat='server' visible='false' border='1' >"
                + "<tr style='color:green; font-weight: bold;'><td>MRN_Number</td> <td>Name</td><td>Gender</td><td>Date of Birth</td> </tr>" +
                tableData + "</table>";

            return data;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String firstname = name1.Text.Trim();
            String mrnNum = mrn1.Text;
            String mrnNum1 = mrn2.Text;
            string check = RadioButtonSearch.Text;
            if (type.Equals("1"))
            {
                error.Style["display"] = "none";
                String staffID = Session["staff_id"].ToString();
                if (!String.IsNullOrEmpty(mrnNum1))
                {
                    String sample = "PatientDetails.aspx?type=1&id=" + mrnNum1;
                    Response.Redirect(sample);
                }
                else if (String.IsNullOrEmpty(firstname) && String.IsNullOrEmpty(mrnNum))
                {
                    error.Style["display"] = "block";
                }
                else
                {
                    tableData = userController.searchPatient(firstname, mrnNum, check, staffID, type);

                    if (tableData != null)

                    {
                        searchDetails.Visible = true;
                    }

                    else
                    {
                        error.Style["display"] = "block";
                    }
                }
            }

            else if (type.Equals("2"))
            {
                error.Style["display"] = "none";
                String npi = Session["npi"].ToString();
                string cid = Session["clinicID"].ToString();
                tableData = userController.searchPatient(firstname, mrnNum, check, npi, type, cid);

                if (tableData != null)

                {
                    searchDetails.Visible = true;
                }

                else
                {
                    error.Style["display"] = "block";
                }
            }
            EmptyControlData(this);
        }
    }

}