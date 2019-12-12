using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRABehavioural_A3 : System.Web.UI.Page
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
            int quest1_days1 = 0, quest1_days2 = 0, quest1_days3 = 0, quest1_days4 = 0, quest1_days5 = 0, quest1_days6 = 0, quest1_days7 = 0;
            String quest1 = null, quest1_option1 = null, quest1_option2 = null;
            String quest2 = null, quest2_option1 = null, quest2_option2 = null, quest2_option3 = null, quest2_option4 = null, quest2_option5 = null, quest2_option6 = null, quest2_option7 = null, quest2_option71 = null;
            String quest3 = null, quest3_option1 = null, quest3_option2 = null;
            String quest2_option1_days = null, quest2_option2_days = null, quest2_option3_days = null, quest2_option4_days = null, quest2_option5_days = null, quest2_option6_days = null, quest2_option7_days = null;
            quest1 = quest_1.Text.ToString();
            quest1_option1 = BHD4Y.Text.ToString();
            quest1_option2 = BHD4N.Text.ToString();
            quest2 = quest_2.Text.ToString();
            quest2_option1 = BHD4AL1.Text.ToString();
            quest2_option2 = BHD4AL2.Text.ToString();
            quest2_option3 = BHD4AL3.Text.ToString();
            quest2_option4 = BHD4AL4.Text.ToString();
            quest2_option5 = BHD4AL5.Text.ToString();
            quest2_option6 = BHD4AL6.Text.ToString();
            quest2_option7 = BHD4AL7.Text.ToString();
            quest2_option71 = BHD4AL71.Text.ToString();
            quest3 = quest_3.Text.ToString();
            quest3_option1 = BHD5Y.Text.ToString();
            quest3_option2 = BHD5N.Text.ToString();
            if (BHD4Y.Checked)
            {
                question_id = QC.getQuestion_ID(quest1);
                option_id = QC.getOption_ID(question_id, quest1_option1);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                quest2_option1_days = BHD4A1T1.Text.ToString();
                quest2_option2_days = BHD4A1T2.Text.ToString();
                quest2_option3_days = BHD4A1T3.Text.ToString();
                quest2_option4_days = BHD4A1T4.Text.ToString();
                quest2_option5_days = BHD4A1T5.Text.ToString();
                quest2_option6_days = BHD4A1T6.Text.ToString();
                quest2_option7_days = BHD4A1T7.Text.ToString();
                question_id = QC.getQuestion_ID(quest2);
                if (!string.IsNullOrEmpty(quest2_option1_days))
                {
                    quest1_days1 = Convert.ToInt32(quest2_option1_days);
                    option_id = QC.getOption_ID(question_id, quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days1,null);
                }
                else if (!string.IsNullOrEmpty(quest2_option2_days))
                {
                    quest1_days2 = Convert.ToInt32(quest2_option2_days);
                    option_id = QC.getOption_ID(question_id, quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days2, null);
                }
                else if (!string.IsNullOrEmpty(quest2_option3_days))
                {
                    quest1_days3 = Convert.ToInt32(quest2_option3_days);
                    option_id = QC.getOption_ID(question_id, quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days3, null);
                }
                else if (!string.IsNullOrEmpty(quest2_option4_days))
                {
                    quest1_days4 = Convert.ToInt32(quest2_option4_days);
                    option_id = QC.getOption_ID(question_id, quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days4, null);
                }
                else if (!string.IsNullOrEmpty(quest2_option5_days))
                {
                    quest1_days5 = Convert.ToInt32(quest2_option5_days);
                    option_id = QC.getOption_ID(question_id, quest2_option5);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days5, null);
                }
                else if (!string.IsNullOrEmpty(quest2_option6_days))
                {
                    quest1_days6 = Convert.ToInt32(quest2_option6_days);
                    option_id = QC.getOption_ID(question_id, quest2_option6);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days6, null);
                }
                else if (!string.IsNullOrEmpty(quest2_option7_days))
                {
                    quest1_days7 = Convert.ToInt32(quest2_option7_days);
                    option_id = QC.getOption_ID(question_id, quest2_option7);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days7, quest2_option71);
                }
            }
            else if(BHD4N.Checked)
            {
                question_id = QC.getQuestion_ID(quest1);
                option_id = QC.getOption_ID(question_id, quest1_option2);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
            }
            if(BHD5Y.Checked)
            {
                question_id = QC.getQuestion_ID(quest3);
                option_id = QC.getOption_ID(question_id, quest3_option1);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
            }
            else if(BHD5N.Checked)
            {
                question_id = QC.getQuestion_ID(quest3);
                option_id = QC.getOption_ID(question_id, quest3_option2);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
            }
            Response.Redirect("GPRAPlannedServices.aspx");
        }
    }
}