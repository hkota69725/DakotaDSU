using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRABehavioural_A2 : System.Web.UI.Page
    {
        QuestionController QC = new QuestionController();
        GpraController GC = new GpraController();
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            EmptyControlData(this);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int question_id = 0, option_id = 0, days = 0;
            String quest1 = null, quest1_option1 = null, quest1_option2 = null;
            String quest2 = null, quest2_option1 = null, quest2_option2 = null;
            quest1 = quest_1.Text.ToString();
            quest1_option1 = BHD1Y.Text.ToString();
            quest1_option2 = BHD1N.Text.ToString();
            quest2 = quest_2.Text.ToString();
            quest2_option1 = BHD1AY.Text.ToString();
            quest2_option2 = BHD1AN.Text.ToString();
            
            if (BHD1Y.Checked)
                {
                    question_id = QC.getQuestion_ID(quest2);
                    option_id = QC.getOption_ID(question_id, quest1_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                    question_id = QC.getQuestion_ID(quest2);
                    if (BHD1AY.Checked)
                    {
                           option_id = QC.getOption_ID(question_id, quest2_option1);
                           GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                    }
                    else if(BHD1AN.Checked)
                    {
                        option_id = QC.getOption_ID(question_id, quest2_option2);
                        GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                    }
                }
            else if(BHD1N.Checked)
            {
                question_id = QC.getQuestion_ID(quest2);
                option_id = QC.getOption_ID(question_id, quest1_option2);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
            }

        Response.Redirect("GPRABehavioural_A3.aspx");
        }
    }
}