﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
namespace healtpoint
{
    public partial class alcohol_quest_final_page : System.Web.UI.Page
    {
        QuestionController questionController = new QuestionController();
        List<Question> finalQuestion { get; set; } = new List<Question>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] != null)
            {

                firstname.Text = Session["firstname"].ToString();
            }
            if (!IsPostBack)
            {
                if (Session["patientStatus"].ToString().Equals("end"))
                    Response.Redirect("default1.aspx");
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("alcohol_quest_initial_page.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            /*finalQuestion = new List<Question>();
            if (Session["intitalAlcoholQuest"] != null)
            {
                finalQuestion = Session["intitalAlcoholQuest"] as List<Question>;
            }*/
            String response4 = hdnfldVariable4.Value;
            String question4 = quest_4.Text;
            setQuestion(question4, response4);
            String question5 = quest_5.Text;
            String response5 = hdnfldVariable5.Value;
            setQuestion(question5, response5);
            String question6 = quest_6.Text;
            String response6 = hdnfldVariable6.Value;
            setQuestion(question6, response6);
            String response7 = hdnfldVariable7.Value;
            String question7 = quest_7.Text;
            setQuestion(question7, response7);
            String question8 = quest_8.Text;
            String response8 = hdnfldVariable8.Value;
            setQuestion(question8, response8);
            String question9 = quest_9.Text;
            String response9 = hdnfldVariable9.Value;
            setFinalQuestion(question9, response9);
            String question10 = quest_10.Text;
            String response10 = hdnfldVariable10.Value;
            setFinalQuestion(question10, response10);
            finalQuestion = questionController.GetQuestionID(finalQuestion);

            questionController.insertQuestion(finalQuestion, Session["pid"].ToString());

            Response.Redirect("tobacco_quest_page.aspx");

        }
        public void setQuestion(String question, String response)
        {

            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "Never":
                    quest.answerValue = 0;
                    break;
                case "Less than monthly":
                    quest.answerValue = 1;
                    break;
                case "Monthly":
                    quest.answerValue = 2;
                    break;
                case "Weekly":
                    quest.answerValue = 3;
                    break;
                case "Daily or almost daily":
                    quest.answerValue = 4;
                    break;

            }
            finalQuestion.Add(quest);
        }

        public void setFinalQuestion(String question, String response)
        {

            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "No":
                    quest.answerValue = 0;
                    break;
                case "Yes, but not in the last year":
                    quest.answerValue = 2;
                    break;
                case "Yes, in the last year":
                    quest.answerValue = 4;
                    break;


            }
            finalQuestion.Add(quest);
        }
    }
}