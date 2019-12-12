using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRAMilitaryServices : System.Web.UI.Page
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
            String quest1 = null, quest2 = null, quest3 = null;
            String quest1_option1 = null, quest1_option2 = null, quest1_option3 = null, quest1_option4 = null, quest1_option5 = null, quest1_option6 = null;
            String quest2_option1 = null, quest2_option2 = null, quest2_option3 = null, quest2_option4 = null, quest2_option5 = null, quest2_option6 = null;
            String quest3_option1 = null, quest3_option2 = null, quest3_option3 = null, quest3_option4 = null, quest3_option5 = null, quest3_option6 = null, 
                quest3_option7 = null, quest3_option8 = null, quest3_option9 = null;
            quest1 = quest11.Text;  quest2 = quest21.Text;  quest3 = quest31.Text;
            quest1_option1 = MS011.Text.ToString();
            quest1_option2 = MS012.Text.ToString();
            quest1_option3 = MS013.Text.ToString();
            quest1_option4 = MS014.Text.ToString();
            quest1_option5 = MS015.Text.ToString();
            quest1_option6 = MS016.Text.ToString();
            quest2_option1 = MS021.Text.ToString();
            quest2_option2 = MS022.Text.ToString();
            quest2_option3 = MS023.Text.ToString();
            quest2_option4 = MS024.Text.ToString();
            quest2_option5 = MS025.Text.ToString();
            quest2_option6 = MS026.Text.ToString();
            quest3_option1 = MS031.Text.ToString();
            quest3_option2 = MS032.Text.ToString();
            quest3_option3 = MS033.Text.ToString();
            quest3_option4 = MS034.Text.ToString();
            quest3_option5 = MS035.Text.ToString();
            quest3_option6 = MS036.Text.ToString();
            quest3_option7 = MS037.Text.ToString();
            quest3_option8 = MS038.Text.ToString();
            quest3_option9 = MS039.Text.ToString();

            question_id = QC.getQuestion_ID(quest1);
            if (MS011.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option1);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MS012.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option2);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MS013.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option3);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MS014.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option4);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MS015.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option5);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MS016.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option6);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            question_id = QC.getQuestion_ID(quest2);
            if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS021.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option1);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS022.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option2);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS023.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option3);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS024.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option4);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS025.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option5);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS026.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest2_option6);
                GC.AddGPRAMiliraty(question_id, option_id);
            }

            question_id = QC.getQuestion_ID(quest3);
            if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS031.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option1);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS032.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option2);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS033.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option3);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS034.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option4);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS035.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option5);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS036.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option6);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS037.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option7);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS038.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option8);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (((MS012.Checked) || (MS013.Checked) || (MS014.Checked)) && MS039.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest3_option9);
                GC.AddGPRAMiliraty(question_id, option_id);
            }

            Response.Redirect("GPRAMilitaryServices1.aspx");
        }
    }
}