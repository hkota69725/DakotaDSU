using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRAPlannedServices1 : System.Web.UI.Page
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

            String type = null, type1 = null;
            String question1 = null, question2 = null, question3 = null, question4 = null, question5 = null, question6 = null, question7 = null,
                question8 = null, question9 = null, question10 = null, question11 = null, question12 = null, question13 = null;

            String textarea1 = null, textarea2 = null;

            type = CMS.Text; type1 = MS.Text;

            question1 = CMS1.Text; question2 = CMS2.Text; question3 = CMS3A.Text; question4 = CMS3B.Text; question5 = CMS4.Text; question6 = CMS5.Text;
            question7 = CMS6.Text; question8 = CMS7.Text; question9 = CMS8.Text; question10 = MS1.Text; question11 = MS2.Text; question12 = MS3.Text;
            question13 = MS4.Text;

            textarea1 = CMS8TB.Text; textarea2 = MS4TB.Text;
            question_id = QC.getQuestion_ID(type);
            if (CMS11.Checked || CMS12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question1);
                if (CMS11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS21.Checked || CMS22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question2);
                if (CMS21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS3A1.Checked || CMS3A2.Checked)
            {
                option_id = QC.getOption_ID(question_id, question3);
                if (CMS3A1.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS3B1.Checked || CMS3B2.Checked)
            {
                option_id = QC.getOption_ID(question_id, question4);
                if (CMS3B1.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS41.Checked || CMS42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question5);
                if (CMS41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS51.Checked || CMS52.Checked)
            {
                option_id = QC.getOption_ID(question_id, question6);
                if (CMS51.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS61.Checked || CMS62.Checked)
            {
                option_id = QC.getOption_ID(question_id, question7);
                if (CMS61.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS71.Checked || CMS72.Checked)
            {
                option_id = QC.getOption_ID(question_id, question8);
                if (CMS71.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (CMS81.Checked || CMS82.Checked)
            {
                option_id = QC.getOption_ID(question_id, question9);
                if (CMS81.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea1);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea1);
            }

            question_id = QC.getQuestion_ID(type1);
            if (MS11.Checked || MS12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question10);
                if (MS11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (MS21.Checked || MS22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question11);
                if (MS21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (MS31.Checked || MS32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question12);
                if (MS31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (MS41.Checked || MS42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question13);
                if (MS41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea2);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea2);
            }
            Response.Redirect("GPRAPlannedServices2.aspx");
        }
    }
}