using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRABehavioural_A : System.Web.UI.Page
    {
        GpraController gpraController = new GpraController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void EmptyControlData(Control parent)
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            EmptyControlData(this);
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            String primary = null, secondary = null, ternary = null, test = null;
            if (F210.Checked || F211.Checked)
            {
                if (F210.Checked)
                    test = F210.Text;
                else
                    test = F211.Text;
            }
            else
            {
                if (A1.Checked) primary = "1";
                else if (A2.Checked) primary = "2";
                else if (A3.Checked) primary = "3";
                else if (A4.Checked) primary = "4";
                else if (A5.Checked) primary = "5";
                else if (A6.Checked) primary = "6";
                else if (A7.Checked) primary = "7";
                else if (A8.Checked) primary = "8";
                else if (A9.Checked) primary = "9";
                else if (A10.Checked) primary = "10";
                else if (A11.Checked) primary = "11";
                else if (A12.Checked) primary = "12";
                else if (A13.Checked) primary = "13";
                else if (A14.Checked) primary = "14";
                else if (A15.Checked) primary = "15";
                else if (A16.Checked) primary = "16";
                else if (A17.Checked) primary = "17";
                else if (A18.Checked) primary = "18";
                else if (A19.Checked) primary = "19";
                else if (A20.Checked) primary = "20";
                else if (A21.Checked) primary = "21";
                else if (A22.Checked) primary = "22";
                else if (A23.Checked) primary = "23";
                else if (A24.Checked) primary = "24";
                else if (A25.Checked) primary = "25";
                else if (A26.Checked) primary = "26";
                else if (A27.Checked) primary = "27";
                else if (A28.Checked) primary = "28";
                else if (A29.Checked) primary = "29";
                else if (A30.Checked) primary = "30";
                else if (A31.Checked) primary = "31";
                else if (A32.Checked) primary = "32";
                else if (A33.Checked) primary = "33";
                else if (A34.Checked) primary = "34";
                else if (A35.Checked) primary = "35";
                else if (A36.Checked) primary = "36";
                else if (A37.Checked) primary = "37";
                else if (A38.Checked) primary = "38";
                else if (A39.Checked) primary = "39";
                else if (A40.Checked) primary = "40";
                else if (A41.Checked) primary = "41";
                else if (A42.Checked) primary = "42";
                else if (A43.Checked) primary = "43";
                else if (A44.Checked) primary = "44";
                else if (A45.Checked) primary = "45";
                else if (A46.Checked) primary = "46";
                else if (A47.Checked) primary = "47";
                else if (A48.Checked) primary = "48";
                else if (A49.Checked) primary = "49";
                else if (A50.Checked) primary = "50";
                else if (A51.Checked) primary = "51";
                else if (A52.Checked) primary = "52";
                else if (A53.Checked) primary = "53";
                else if (A54.Checked) primary = "54";
                else if (A55.Checked) primary = "55";
                else if (A56.Checked) primary = "56";
                else if (A57.Checked) primary = "57";
                else if (A58.Checked) primary = "58";
                else if (A59.Checked) primary = "59";
                else if (A60.Checked) primary = "60";
                else if (A61.Checked) primary = "61";
                else if (A62.Checked) primary = "62";
                else if (A63.Checked) primary = "63";
                else if (A64.Checked) primary = "64";
                else if (A65.Checked) primary = "65";
                else if (A66.Checked) primary = "66";
                else if (A67.Checked) primary = "67";
                else if (A68.Checked) primary = "68";
                else if (A69.Checked) primary = "69";
                else if (A70.Checked) primary = "70";
                else if (A71.Checked) primary = "71";
                else if (A72.Checked) primary = "72";
                else if (A73.Checked) primary = "73";
                else if (A74.Checked) primary = "74";
                else if (A75.Checked) primary = "75";
                else if (A76.Checked) primary = "76";
                else primary = null;

                if (B1.Checked) secondary = "1";
                else if (B2.Checked) secondary = "2";
                else if (B3.Checked) secondary = "3";
                else if (B4.Checked) secondary = "4";
                else if (B5.Checked) secondary = "5";
                else if (B6.Checked) secondary = "6";
                else if (B7.Checked) secondary = "7";
                else if (B8.Checked) secondary = "8";
                else if (B9.Checked) secondary = "9";
                else if (B10.Checked) secondary = "10";
                else if (B11.Checked) secondary = "11";
                else if (B12.Checked) secondary = "12";
                else if (B13.Checked) secondary = "13";
                else if (B14.Checked) secondary = "14";
                else if (B15.Checked) secondary = "15";
                else if (B16.Checked) secondary = "16";
                else if (B17.Checked) secondary = "17";
                else if (B18.Checked) secondary = "18";
                else if (B19.Checked) secondary = "19";
                else if (B20.Checked) secondary = "20";
                else if (B21.Checked) secondary = "21";
                else if (B22.Checked) secondary = "22";
                else if (B23.Checked) secondary = "23";
                else if (B24.Checked) secondary = "24";
                else if (B25.Checked) secondary = "25";
                else if (B26.Checked) secondary = "26";
                else if (B27.Checked) secondary = "27";
                else if (B28.Checked) secondary = "28";
                else if (B29.Checked) secondary = "29";
                else if (B30.Checked) secondary = "30";
                else if (B31.Checked) secondary = "31";
                else if (B32.Checked) secondary = "32";
                else if (B33.Checked) secondary = "33";
                else if (B34.Checked) secondary = "34";
                else if (B35.Checked) secondary = "35";
                else if (B36.Checked) secondary = "36";
                else if (B37.Checked) secondary = "37";
                else if (B38.Checked) secondary = "38";
                else if (B39.Checked) secondary = "39";
                else if (B40.Checked) secondary = "40";
                else if (B41.Checked) secondary = "41";
                else if (B42.Checked) secondary = "42";
                else if (B43.Checked) secondary = "43";
                else if (B44.Checked) secondary = "44";
                else if (B45.Checked) secondary = "45";
                else if (B46.Checked) secondary = "46";
                else if (B47.Checked) secondary = "47";
                else if (B48.Checked) secondary = "48";
                else if (B49.Checked) secondary = "49";
                else if (B50.Checked) secondary = "50";
                else if (B51.Checked) secondary = "51";
                else if (B52.Checked) secondary = "52";
                else if (B53.Checked) secondary = "53";
                else if (B54.Checked) secondary = "54";
                else if (B55.Checked) secondary = "55";
                else if (B56.Checked) secondary = "56";
                else if (B57.Checked) secondary = "57";
                else if (B58.Checked) secondary = "58";
                else if (B59.Checked) secondary = "59";
                else if (B60.Checked) secondary = "60";
                else if (B61.Checked) secondary = "61";
                else if (B62.Checked) secondary = "62";
                else if (B63.Checked) secondary = "63";
                else if (B64.Checked) secondary = "64";
                else if (B65.Checked) secondary = "65";
                else if (B66.Checked) secondary = "66";
                else if (B67.Checked) secondary = "67";
                else if (B68.Checked) secondary = "68";
                else if (B69.Checked) secondary = "69";
                else if (B70.Checked) secondary = "70";
                else if (B71.Checked) secondary = "71";
                else if (B72.Checked) secondary = "72";
                else if (B73.Checked) secondary = "73";
                else if (B74.Checked) secondary = "74";
                else if (B75.Checked) secondary = "75";
                else if (B76.Checked) secondary = "76";
                else secondary = null;

                if (C1.Checked) ternary = "1";
                else if (C2.Checked) ternary = "2";
                else if (C3.Checked) ternary = "3";
                else if (C4.Checked) ternary = "4";
                else if (C5.Checked) ternary = "5";
                else if (C6.Checked) ternary = "6";
                else if (C7.Checked) ternary = "7";
                else if (C8.Checked) ternary = "8";
                else if (C9.Checked) ternary = "9";
                else if (C10.Checked) ternary = "10";
                else if (C11.Checked) ternary = "11";
                else if (C12.Checked) ternary = "12";
                else if (C13.Checked) ternary = "13";
                else if (C14.Checked) ternary = "14";
                else if (C15.Checked) ternary = "15";
                else if (C16.Checked) ternary = "16";
                else if (C17.Checked) ternary = "17";
                else if (C18.Checked) ternary = "18";
                else if (C19.Checked) ternary = "19";
                else if (C20.Checked) ternary = "20";
                else if (C21.Checked) ternary = "21";
                else if (C22.Checked) ternary = "22";
                else if (C23.Checked) ternary = "23";
                else if (C24.Checked) ternary = "24";
                else if (C25.Checked) ternary = "25";
                else if (C26.Checked) ternary = "26";
                else if (C27.Checked) ternary = "27";
                else if (C28.Checked) ternary = "28";
                else if (C29.Checked) ternary = "29";
                else if (C30.Checked) ternary = "30";
                else if (C31.Checked) ternary = "31";
                else if (C32.Checked) ternary = "32";
                else if (C33.Checked) ternary = "33";
                else if (C34.Checked) ternary = "34";
                else if (C35.Checked) ternary = "35";
                else if (C36.Checked) ternary = "36";
                else if (C37.Checked) ternary = "37";
                else if (C38.Checked) ternary = "38";
                else if (C39.Checked) ternary = "39";
                else if (C40.Checked) ternary = "40";
                else if (C41.Checked) ternary = "41";
                else if (C42.Checked) ternary = "42";
                else if (C43.Checked) ternary = "43";
                else if (C44.Checked) ternary = "44";
                else if (C45.Checked) ternary = "45";
                else if (C46.Checked) ternary = "46";
                else if (C47.Checked) ternary = "47";
                else if (C48.Checked) ternary = "48";
                else if (C49.Checked) ternary = "49";
                else if (C50.Checked) ternary = "50";
                else if (C51.Checked) ternary = "51";
                else if (C52.Checked) ternary = "52";
                else if (C53.Checked) ternary = "53";
                else if (C54.Checked) ternary = "54";
                else if (C55.Checked) ternary = "55";
                else if (C56.Checked) ternary = "56";
                else if (C57.Checked) ternary = "57";
                else if (C58.Checked) ternary = "58";
                else if (C59.Checked) ternary = "59";
                else if (C60.Checked) ternary = "60";
                else if (C61.Checked) ternary = "61";
                else if (C62.Checked) ternary = "62";
                else if (C63.Checked) ternary = "63";
                else if (C64.Checked) ternary = "64";
                else if (C65.Checked) ternary = "65";
                else if (C66.Checked) ternary = "66";
                else if (C67.Checked) ternary = "67";
                else if (C68.Checked) ternary = "68";
                else if (C69.Checked) ternary = "69";
                else if (C70.Checked) ternary = "70";
                else if (C71.Checked) ternary = "71";
                else if (C72.Checked) ternary = "72";
                else if (C73.Checked) ternary = "73";
                else if (C74.Checked) ternary = "74";
                else if (C75.Checked) ternary = "75";
                else if (C76.Checked) ternary = "76";
                else ternary = null;
            }
            if(!String.IsNullOrEmpty(test))
                {
                    gpraController.addGPRABehavioural_A(test);
                }
                else
                {
                    if(!String.IsNullOrEmpty(primary))
                    {
                        gpraController.addGPRABehavioural_A1(primary, "Primary");
                    }
                    if(!String.IsNullOrEmpty(secondary))
                    {
                        gpraController.addGPRABehavioural_A1(secondary, "Secondary");
                    }
                    if(!String.IsNullOrEmpty(ternary))
                    {
                        gpraController.addGPRABehavioural_A1(ternary, "Tertiary");
                    }
                }
            Response.Redirect("GPRABehavioural_A1.aspx");
        }
    }
}