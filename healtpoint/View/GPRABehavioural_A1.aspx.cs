using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRABehavioural_A1 : System.Web.UI.Page
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
            int quest1_days1 = 0, quest1_days2 = 0, quest1_days3 = 0, quest1_days4 = 0, quest2_days1 = 0, quest2_days2 = 0, quest2_days3 = 0, quest2_days4 = 0;
            String quest1 = null, quest1_option1 = null, quest1_option2 = null, quest1_option3 = null;
            String quest2 = null, quest2_option1 = null, quest2_option2 = null, quest2_option3 = null, quest2_option4 = null, quest2_option5 = null, quest2_option6 = null;
            String quest3 = null, quest3_option1 = null, quest3_option2 = null, quest3_option3 = null;
            String quest4 = null, quest4_option1 = null, quest4_option2 = null, quest4_option3 = null, quest4_option4 = null, quest4_option5 = null, quest4_option6 = null;
            String quest2_option1_days = null, quest2_option2_days = null, quest2_option3_days = null, quest2_option4_days = null;
            String quest4_option1_days = null, quest4_option2_days = null, quest4_option3_days = null, quest4_option4_days = null;
            quest1 = quest_1.Text.ToString();
            quest1_option1 = BHD1Y.Text.ToString();
            quest1_option2 = BHD1N.Text.ToString();
            quest1_option3 = BHD1DK.Text.ToString();
            
            quest3 = quest_3.Text.ToString();
            quest3_option1 = BHD2Y.Text.ToString();
            quest3_option2 = BHD2N.Text.ToString();
            quest3_option3 = BHD2DK.Text.ToString();
            

            if(BHD1Y.Checked)
            {
                quest2 = quest_2.Text.ToString();
                quest2_option1 = BHD1A1.Text.ToString();
                quest2_option2 = BHD1A2.Text.ToString();
                quest2_option3 = BHD1A3.Text.ToString();
                quest2_option4 = BHD1A4.Text.ToString();
                quest2_option5 = BHD1A5.Text.ToString();
                quest2_option6 = BHD1A6.Text.ToString();


                question_id = QC.getQuestion_ID(quest1);
                option_id = QC.getOption_ID(question_id, quest1_option1);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
            }
            else if (BHD1N.Checked || BHD1DK.Checked)
            {
                question_id = QC.getQuestion_ID(quest1);
                if (BHD1N.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest1_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
                else
                {
                    option_id = QC.getOption_ID(question_id, quest1_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
            }
            if (!String.IsNullOrEmpty(quest2))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (BHD1A1.Checked)
                {
                    quest2_option1_days = BHD1A1T1.Text.ToString();
                    quest1_days1 = Convert.ToInt32(quest2_option1_days);
                    option_id = QC.getOption_ID(question_id, quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days1, null);
                }
                else if (BHD1A2.Checked)
                {
                    quest2_option2_days = BHD1A1T2.Text.ToString();
                    quest1_days2 = Convert.ToInt32(quest2_option2_days);
                    option_id = QC.getOption_ID(question_id, quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days2, null);
                }
                else if (BHD1A3.Checked)
                {
                    quest2_option3_days = BHD1A1T3.Text.ToString();
                    quest1_days3 = Convert.ToInt32(quest2_option3_days);
                    option_id = QC.getOption_ID(question_id, quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days3, null);
                }
                else if (BHD1A4.Checked)
                {
                    quest2_option4_days = BHD1A1T4.Text.ToString();
                    quest1_days4 = Convert.ToInt32(quest2_option4_days);
                    option_id = QC.getOption_ID(question_id, quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest1_days4, null);
                }
                else if (BHD1A5.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest2_option5);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
                else if (BHD1A6.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest2_option6);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }

            }

            if (BHD2Y.Checked)
            {
                quest4 = quest_4.Text.ToString();
                quest4_option1 = BHD2A1.Text.ToString();
                quest4_option2 = BHD2A2.Text.ToString();
                quest4_option3 = BHD2A3.Text.ToString();
                quest4_option4 = BHD2A4.Text.ToString();
                quest4_option5 = BHD2A5.Text.ToString();
                quest4_option6 = BHD2A6.Text.ToString();
                question_id = QC.getQuestion_ID(quest3);
                option_id = QC.getOption_ID(question_id, quest3_option1);
                GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);

            }
            else if (BHD2N.Checked || BHD2DK.Checked)
            {
                question_id = QC.getQuestion_ID(quest3);
                if (BHD2N.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
                else
                {
                    option_id = QC.getOption_ID(question_id, quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
            }
            if (!String.IsNullOrEmpty(quest4))
            {
                question_id = QC.getQuestion_ID(quest4);
                if (BHD2A1.Checked)
                {
                    quest4_option1_days = BHD2A1T1.Text.ToString();
                    quest2_days1 = Convert.ToInt32(quest4_option1_days);
                    option_id = QC.getOption_ID(question_id, quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest2_days1, null);
                }
                else if (BHD2A2.Checked)
                {
                    quest4_option2_days = BHD2A1T2.Text.ToString();
                    quest2_days2 = Convert.ToInt32(quest4_option2_days);
                    option_id = QC.getOption_ID(question_id, quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest2_days2, null);
                }
                else if (BHD2A3.Checked)
                {
                    quest4_option3_days = BHD2A1T3.Text.ToString();
                    quest2_days3 = Convert.ToInt32(quest4_option3_days);
                    option_id = QC.getOption_ID(question_id, quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest2_days3, null);
                }
                else if (BHD2A4.Checked)
                {
                    quest4_option4_days = BHD2A1T4.Text.ToString();
                    quest2_days4 = Convert.ToInt32(quest4_option4_days);
                    option_id = QC.getOption_ID(question_id, quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, quest2_days4, null);
                }
                else if (BHD2A5.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest4_option5);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }
                else if (BHD2A6.Checked)
                {
                    option_id = QC.getOption_ID(question_id, quest4_option6);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, null);
                }

            }
            Response.Redirect("GPRABehavioural_A2.aspx");
        }
    }
}