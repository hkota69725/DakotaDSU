using healtpoint.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace healtpoint.View
{
    public partial class GPRAMilitaryServices1 : System.Web.UI.Page
    {
        QuestionController QC = new QuestionController();
        GpraController GC = new GpraController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!ClientScript.IsStartupScriptRegistered("alert"))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(),
                    "alert", "CallMe();", true);
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
            int question_id = 0, option_id = 0;
            String quest1 = null, quest2 = null, quest3 = null, quest4 = null, quest5 = null;
            String quest1_option1 = null, quest1_option2 = null, quest1_option3 = null, quest1_option4 = null, quest1_option5 = null;
            String temp = null, temp1 = null, temp2 = null, temp3 = null, temp4 = null, temp5 = null;
            String pat1_quest2_option1 = null, pat1_quest2_option2 = null, pat1_quest2_option3 = null, pat1_quest2_option4 = null,
                pat1_quest3_option1 = null, pat1_quest3_option2 = null, pat1_quest3_option3 = null, pat1_quest3_option4 = null,
                pat1_quest4_option1 = null, pat1_quest4_option2 = null, pat1_quest4_option3 = null, pat1_quest4_option4 = null,
                pat1_quest5_option1 = null, pat1_quest5_option2 = null, pat1_quest5_option3 = null, pat1_quest5_option4 = null,
                pat2_quest2_option1 = null, pat2_quest2_option2 = null, pat2_quest2_option3 = null, pat2_quest2_option4 = null,
                pat2_quest3_option1 = null, pat2_quest3_option2 = null, pat2_quest3_option3 = null, pat2_quest3_option4 = null,
                pat2_quest4_option1 = null, pat2_quest4_option2 = null, pat2_quest4_option3 = null, pat2_quest4_option4 = null,
                pat2_quest5_option1 = null, pat2_quest5_option2 = null, pat2_quest5_option3 = null, pat2_quest5_option4 = null,
                pat3_quest2_option1 = null, pat3_quest2_option2 = null, pat3_quest2_option3 = null, pat3_quest2_option4 = null,
                pat3_quest3_option1 = null, pat3_quest3_option2 = null, pat3_quest3_option3 = null, pat3_quest3_option4 = null,
                pat3_quest4_option1 = null, pat3_quest4_option2 = null, pat3_quest4_option3 = null, pat3_quest4_option4 = null,
                pat3_quest5_option1 = null, pat3_quest5_option2 = null, pat3_quest5_option3 = null, pat3_quest5_option4 = null,
                pat4_quest2_option1 = null, pat4_quest2_option2 = null, pat4_quest2_option3 = null, pat4_quest2_option4 = null,
                pat4_quest3_option1 = null, pat4_quest3_option2 = null, pat4_quest3_option3 = null, pat4_quest3_option4 = null,
                pat4_quest4_option1 = null, pat4_quest4_option2 = null, pat4_quest4_option3 = null, pat4_quest4_option4 = null,
                pat4_quest5_option1 = null, pat4_quest5_option2 = null, pat4_quest5_option3 = null, pat4_quest5_option4 = null,
                pat5_quest2_option1 = null, pat5_quest2_option2 = null, pat5_quest2_option3 = null, pat5_quest2_option4 = null,
                pat5_quest3_option1 = null, pat5_quest3_option2 = null, pat5_quest3_option3 = null, pat5_quest3_option4 = null,
                pat5_quest4_option1 = null, pat5_quest4_option2 = null, pat5_quest4_option3 = null, pat5_quest4_option4 = null,
                pat5_quest5_option1 = null, pat5_quest5_option2 = null, pat5_quest5_option3 = null, pat5_quest5_option4 = null,
                pat6_quest2_option1 = null, pat6_quest2_option2 = null, pat6_quest2_option3 = null, pat6_quest2_option4 = null,
                pat6_quest3_option1 = null, pat6_quest3_option2 = null, pat6_quest3_option3 = null, pat6_quest3_option4 = null,
                pat6_quest4_option1 = null, pat6_quest4_option2 = null, pat6_quest4_option3 = null, pat6_quest4_option4 = null,
                pat6_quest5_option1 = null, pat6_quest5_option2 = null, pat6_quest5_option3 = null, pat6_quest5_option4 = null;

            quest1 = quest11.Text; quest2 = quest21.Text; quest3 = quest31.Text; quest4 = quest41.Text; quest5 = quest51.Text;
            temp = relationship.SelectedValue;
            temp1 = relationship1.SelectedValue;
            temp2 = relationship2.SelectedValue;
            temp3 = relationship3.SelectedValue;
            temp4 = relationship4.SelectedValue;
            temp5 = relationship5.SelectedValue;

            quest1_option1 = MFD1.Text.ToString();
            quest1_option2 = MFD2.Text.ToString();
            quest1_option3 = MFD3.Text.ToString();
            quest1_option4 = MFD4.Text.ToString();
            quest1_option5 = MFD5.Text.ToString();

            pat1_quest2_option1 = P1Q1O1.Text.ToString();   pat1_quest2_option2 = P1Q1O2.Text.ToString();   pat1_quest2_option3 = P1Q1O3.Text.ToString();
            pat1_quest2_option4 = P1Q1O4.Text.ToString();   pat2_quest2_option1 = P2Q1O1.Text.ToString();   pat2_quest2_option2 = P2Q1O2.Text.ToString();
            pat2_quest2_option3 = P2Q1O3.Text.ToString();   pat2_quest2_option4 = P2Q1O4.Text.ToString();   pat3_quest2_option1 = P3Q1O1.Text.ToString();
            pat3_quest2_option2 = P3Q1O2.Text.ToString();   pat3_quest2_option3 = P3Q1O3.Text.ToString();   pat3_quest2_option4 = P3Q1O4.Text.ToString();
            pat4_quest2_option1 = P4Q1O1.Text.ToString();   pat4_quest2_option2 = P4Q1O2.Text.ToString();   pat4_quest2_option3 = P4Q1O3.Text.ToString();
            pat4_quest2_option4 = P4Q1O4.Text.ToString();   pat5_quest2_option1 = P5Q1O1.Text.ToString();   pat5_quest2_option2 = P5Q1O2.Text.ToString();
            pat5_quest2_option3 = P5Q1O3.Text.ToString();   pat5_quest2_option4 = P5Q1O4.Text.ToString();   pat6_quest2_option1 = P6Q1O1.Text.ToString();
            pat6_quest2_option2 = P6Q1O2.Text.ToString();   pat6_quest2_option3 = P6Q1O3.Text.ToString();   pat6_quest2_option4 = P6Q1O4.Text.ToString();

            pat1_quest3_option1 = P1Q2O1.Text.ToString();   pat1_quest3_option2 = P1Q2O2.Text.ToString();   pat1_quest3_option3 = P1Q2O3.Text.ToString();
            pat1_quest3_option4 = P1Q2O4.Text.ToString();   pat2_quest3_option1 = P2Q2O1.Text.ToString();   pat2_quest3_option2 = P2Q2O2.Text.ToString();
            pat2_quest3_option3 = P2Q2O3.Text.ToString();   pat2_quest3_option4 = P2Q2O4.Text.ToString();   pat3_quest3_option1 = P3Q2O1.Text.ToString();
            pat3_quest3_option2 = P3Q2O2.Text.ToString();   pat3_quest3_option3 = P3Q2O3.Text.ToString();   pat3_quest3_option4 = P3Q2O4.Text.ToString();
            pat4_quest3_option1 = P4Q2O1.Text.ToString();   pat4_quest3_option2 = P4Q2O2.Text.ToString();   pat4_quest3_option3 = P4Q2O3.Text.ToString();
            pat4_quest3_option4 = P4Q2O4.Text.ToString();   pat5_quest3_option1 = P5Q2O1.Text.ToString();   pat5_quest3_option2 = P5Q2O2.Text.ToString();
            pat5_quest3_option3 = P5Q2O3.Text.ToString();   pat5_quest3_option4 = P5Q2O4.Text.ToString();   pat6_quest3_option1 = P6Q2O1.Text.ToString();
            pat6_quest3_option2 = P6Q2O2.Text.ToString();   pat6_quest3_option3 = P6Q2O3.Text.ToString();   pat6_quest3_option4 = P6Q2O4.Text.ToString();

            pat1_quest4_option1 = P1Q3O1.Text.ToString();   pat1_quest4_option2 = P1Q3O2.Text.ToString();   pat1_quest4_option3 = P1Q3O3.Text.ToString();
            pat1_quest4_option4 = P1Q3O4.Text.ToString();   pat2_quest4_option1 = P2Q3O1.Text.ToString();   pat2_quest4_option2 = P2Q3O2.Text.ToString();
            pat2_quest4_option3 = P2Q3O3.Text.ToString();   pat2_quest4_option4 = P2Q3O4.Text.ToString();   pat3_quest4_option1 = P3Q3O1.Text.ToString();
            pat3_quest4_option2 = P3Q3O2.Text.ToString();   pat3_quest4_option3 = P3Q3O3.Text.ToString();   pat3_quest4_option4 = P3Q3O4.Text.ToString();
            pat4_quest4_option1 = P4Q3O1.Text.ToString();   pat4_quest4_option2 = P4Q3O2.Text.ToString();   pat4_quest4_option3 = P4Q3O3.Text.ToString();
            pat4_quest4_option4 = P4Q3O4.Text.ToString();   pat5_quest4_option1 = P5Q3O1.Text.ToString();   pat5_quest4_option2 = P5Q3O2.Text.ToString();
            pat5_quest4_option3 = P5Q3O3.Text.ToString();   pat5_quest4_option4 = P5Q3O4.Text.ToString();   pat6_quest4_option1 = P6Q3O1.Text.ToString();
            pat6_quest4_option2 = P6Q3O2.Text.ToString();   pat6_quest4_option3 = P6Q3O3.Text.ToString();   pat6_quest4_option4 = P6Q3O4.Text.ToString();

            pat1_quest5_option1 = P1Q4O1.Text.ToString();   pat1_quest5_option2 = P1Q4O2.Text.ToString();   pat1_quest5_option3 = P1Q4O3.Text.ToString();
            pat1_quest5_option4 = P1Q4O4.Text.ToString();   pat2_quest5_option1 = P2Q4O1.Text.ToString();   pat2_quest5_option2 = P2Q4O2.Text.ToString();
            pat2_quest5_option3 = P2Q4O3.Text.ToString();   pat2_quest5_option4 = P2Q4O4.Text.ToString();   pat3_quest5_option1 = P3Q4O1.Text.ToString();
            pat3_quest5_option2 = P3Q4O2.Text.ToString();   pat3_quest5_option3 = P3Q4O3.Text.ToString();   pat3_quest5_option4 = P3Q4O4.Text.ToString();
            pat4_quest5_option1 = P4Q4O1.Text.ToString();   pat4_quest5_option2 = P4Q4O2.Text.ToString();   pat4_quest5_option3 = P4Q4O3.Text.ToString();
            pat4_quest5_option4 = P4Q4O4.Text.ToString();   pat5_quest5_option1 = P5Q4O1.Text.ToString();   pat5_quest5_option2 = P5Q4O2.Text.ToString();
            pat5_quest5_option3 = P5Q4O3.Text.ToString();   pat5_quest5_option4 = P5Q4O4.Text.ToString();   pat6_quest5_option1 = P6Q4O1.Text.ToString();
            pat6_quest5_option2 = P6Q4O2.Text.ToString();   pat6_quest5_option3 = P6Q4O3.Text.ToString();   pat6_quest5_option4 = P6Q4O4.Text.ToString();

            question_id = QC.getQuestion_ID(quest1);
            if (MFD1.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option1);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MFD2.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option2);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MFD3.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option3);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MFD4.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option4);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            else if (MFD5.Checked)
            {
                option_id = QC.getOption_ID(question_id, quest1_option5);
                GC.AddGPRAMiliraty(question_id, option_id);
            }
            
            if(((MFD2.Checked) || (MFD3.Checked)) && (!temp.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P1Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id,0, temp);
                }
                else if (P1Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P1Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P1Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P1Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
                else if (P1Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat1_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp);
                }
            }
            if (((MFD2.Checked) || (MFD3.Checked)) && (!temp1.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P2Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P2Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P2Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P2Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
                else if (P2Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat2_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp1);
                }
            }
            if (((MFD2.Checked) || (MFD3.Checked)) && (!temp2.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P3Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P3Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P3Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P3Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
                else if (P3Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat3_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp2);
                }
            }

            if (((MFD2.Checked) || (MFD3.Checked)) && (!temp3.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P4Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P4Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P4Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P4Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
                else if (P4Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat4_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp3);
                }
            }
            if (((MFD2.Checked) || (MFD3.Checked)) && (!temp4.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P5Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P5Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P5Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P5Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
                else if (P5Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat5_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp4);
                }
            }
            if (((MFD2.Checked) || (MFD3.Checked)) && (!temp5.Equals("-1")))
            {
                question_id = QC.getQuestion_ID(quest2);
                if (P6Q1O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest2_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q1O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest2_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q1O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest2_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q1O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest2_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                question_id = QC.getQuestion_ID(quest3);
                if (P6Q2O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest3_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q2O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest3_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q2O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest3_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q2O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest3_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                question_id = QC.getQuestion_ID(quest4);
                if (P6Q3O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest4_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q3O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest4_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q3O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest4_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q3O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest4_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                question_id = QC.getQuestion_ID(quest5);
                if (P6Q4O1.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest5_option1);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q4O2.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest5_option2);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q4O3.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest5_option3);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
                else if (P6Q4O4.Checked)
                {
                    option_id = QC.getOption_ID(question_id, pat6_quest5_option4);
                    GC.AddGPRABehavioural_A2(question_id, option_id, 0, temp5);
                }
            }
            Response.Redirect("GPRA_B.aspx");
        }
    }
}