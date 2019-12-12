using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRAPlannedServices : System.Web.UI.Page
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
            String question1 = null, question2 = null, question3 =null, question4 = null, question5 = null, question6 = null, question7=null, 
                question8=null, question9=null, question10=null, question11=null, question12=null, question13 = null, question14 = null, 
                question15 = null, question16 = null, question17 = null, question18 = null, question19 = null, question20 = null, question21 = null,
                question22 = null, question23 = null, question24 = null, question25 = null, question26 = null, question27 = null, question28 = null;

            String textarea1 = null, textarea2 = null;
            
            type = M.Text; type1 = TS.Text;
            
            question1 = M1.Text; question2 = M2.Text; question3 = M3.Text; question4 = M4.Text; question5 = M5.Text; question6 = M6.Text;
            question7 = M7.Text; question8 = M8.Text; question9 = M91.Text; question10 = M92.Text; question11 = M93.Text; question12 = M01.Text;
            question13 = M02.Text; question14 = M03.Text; question15 = M04.Text; question16 = TS1.Text; question17 = TS2.Text; question18 = TS3.Text;
            question19 = TS4.Text; question20 = TS5.Text; question21 = TS6.Text; question22 = TS7.Text; question23 = TS8.Text; question24 = TS9.Text;
            question25 = TS10.Text; question26 = TS01.Text; question27 = TS02.Text; question28 = TS03.Text;

            textarea1 = M04TB.Text; textarea2 = TS03TB.Text;
            question_id = QC.getQuestion_ID(type);
            if (M11.Checked || M12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question1);
                if(M11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M21.Checked || M22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question2);
                if (M21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M31.Checked || M32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question3);
                if (M31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M41.Checked || M42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question4);
                if (M41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M51.Checked || M52.Checked)
            {
                option_id = QC.getOption_ID(question_id, question5);
                if (M51.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M61.Checked || M62.Checked)
            {
                option_id = QC.getOption_ID(question_id, question6);
                if (M61.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M71.Checked || M72.Checked)
            {
                option_id = QC.getOption_ID(question_id, question7);
                if (M71.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M81.Checked || M82.Checked)
            {
                option_id = QC.getOption_ID(question_id, question8);
                if (M81.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M91A.Checked || M91B.Checked)
            {
                option_id = QC.getOption_ID(question_id, question9);
                if (M91A.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M92A.Checked || M92B.Checked)
            {
                option_id = QC.getOption_ID(question_id, question10);
                if (M92A.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M93A.Checked || M93B.Checked)
            {
                option_id = QC.getOption_ID(question_id, question11);
                if (M93A.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M101.Checked || M102.Checked)
            {
                option_id = QC.getOption_ID(question_id, question12);
                if (M101.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M111.Checked || M112.Checked)
            {
                option_id = QC.getOption_ID(question_id, question13);
                if (M111.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M121.Checked || M122.Checked)
            {
                option_id = QC.getOption_ID(question_id, question14);
                if (M121.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (M131.Checked || M132.Checked)
            {
                option_id = QC.getOption_ID(question_id, question15);
                if (M131.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea1);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea1);
            }
            question_id = QC.getQuestion_ID(type1);
            if (TS11.Checked || TS12.Checked)
            {
                option_id = QC.getOption_ID(question_id, question16);
                if (TS11.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS21.Checked || TS22.Checked)
            {
                option_id = QC.getOption_ID(question_id, question17);
                if (TS21.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS31.Checked || TS32.Checked)
            {
                option_id = QC.getOption_ID(question_id, question18);
                if (TS31.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS41.Checked || TS42.Checked)
            {
                option_id = QC.getOption_ID(question_id, question19);
                if (TS41.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS51.Checked || TS52.Checked)
            {
                option_id = QC.getOption_ID(question_id, question20);
                if (TS51.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS61.Checked || TS62.Checked)
            {
                option_id = QC.getOption_ID(question_id, question21);
                if (TS61.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS71.Checked || TS72.Checked)
            {
                option_id = QC.getOption_ID(question_id, question22);
                if (TS71.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS81.Checked || TS82.Checked)
            {
                option_id = QC.getOption_ID(question_id, question23);
                if (TS81.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS91.Checked || TS92.Checked)
            {
                option_id = QC.getOption_ID(question_id, question24);
                if (TS91.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            
            if (TS101.Checked || TS102.Checked)
            {
                option_id = QC.getOption_ID(question_id, question25);
                if (TS101.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS111.Checked || TS112.Checked)
            {
                option_id = QC.getOption_ID(question_id, question26);
                if (TS111.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS121.Checked || TS122.Checked)
            {
                option_id = QC.getOption_ID(question_id, question27);
                if (TS121.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", null);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", null);
            }
            if (TS131.Checked || TS132.Checked)
            {
                option_id = QC.getOption_ID(question_id, question28);
                if (M131.Checked)
                {
                    GC.addGPRABehavioural_Planned(question_id, option_id, "Yes", textarea2);
                }
                else
                    GC.addGPRABehavioural_Planned(question_id, option_id, "No", textarea2);
            }

            Response.Redirect("GPRAPlannedServices1.aspx");
        }
    }
}