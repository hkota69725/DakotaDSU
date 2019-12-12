using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRA_I : System.Web.UI.Page
    {
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        protected void Page_Load(object sender, EventArgs e)
#pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
        {

        }
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        public void EmptyControlData(Control parent)
#pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
        {
            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {
                    ((TextBox)c).Text = "";
                }
                if ((c.GetType() == typeof(RadioButton)))
                {
                    ((RadioButton)c).Checked = false;
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
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        protected void Button2_Click(object sender, EventArgs e)
#pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
        {
            EmptyControlData(this);
        }
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
        protected void Button1_Click(object sender, EventArgs e)
#pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
        {
            Response.Redirect("GPRA_J.aspx");
        }
    }
}