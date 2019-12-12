using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
#pragma warning disable CS1591 // Missing XML comment for publicly visible type or member
    public partial class GPRAPlannedServices2 : System.Web.UI.Page
#pragma warning restore CS1591 // Missing XML comment for publicly visible type or member
    {
        QuestionController QC = new QuestionController();
        GpraController GC = new GpraController();

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
            int question_id = 0, option_id = 0;

            String type = null, type1 = null, type2 = null;
            String question1 = null, question2 = null, question3 = null, question4 = null, question5 = null, question6 = null, question7 = null,
                question8 = null, question9 = null, question10 = null, question11 = null, question12 = null, question13 = null, question14 = null;

            String textarea1 = null, textarea2 = null, textarea3 = null;

            type = ACS.Text; type1 = ES.Text; type2 = PPR.Text;

            question1 = ACS1.Text; question2 = ACS2.Text; question3 = ACS3.Text; question4 = ACS4.Text; question5 = ACS5.Text; question6 = ACS6.Text;
            question7 = ES1.Text; question8 = ES2.Text; question9 = ES3.Text; question10 = PPR1.Text; question11 = PPR2.Text; question12 = PPR3.Text;
            question13 = PPR4.Text; question14 = PPR5.Text;

            textarea1 = ACS6TB.Text; textarea2 = ES3TB.Text; textarea3 = PPR5.Text;
            question_id = QC.getQuestion_ID(type);
            if (ACS11.Checked || ACS12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question1);
                if (ACS11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ACS21.Checked || ACS22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question2);
                if (ACS21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ACS31.Checked || ACS32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question3);
                if (ACS31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ACS41.Checked || ACS42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question4);
                if (ACS41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ACS51.Checked || ACS52.Checked)
            {
                option_id = QC.getOption_ID(question_id, question5);
                if (ACS51.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ACS61.Checked || ACS62.Checked)
            {
                option_id = QC.getOption_ID(question_id, question6);
                if (ACS61.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea1);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea1);
            }

            question_id = QC.getQuestion_ID(type1);
            if (ES11.Checked || ES12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question7);
                if (ES11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ES21.Checked || ES22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question8);
                if (ES21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (ES31.Checked || ES32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question9);
                if (ES31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea2);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea2);
            }

            question_id = QC.getQuestion_ID(type2);
            if (PPR11.Checked || PPR12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question10);
                if (PPR11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (PPR21.Checked || PPR22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question11);
                if (PPR21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (PPR31.Checked || PPR32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question12);
                if (PPR31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (PPR41.Checked || PPR42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question13);
                if (PPR41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (PPR51.Checked || PPR52.Checked)
            {
                option_id = QC.getOption_ID(question_id, question14);
                if (PPR51.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea3);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea3);
            }

            Response.Redirect("GPRAMilitaryServices.aspx");
        }
    }
}