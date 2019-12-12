using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Common;
using MySql.Data.MySqlClient;
using healtpoint.Controller;
namespace healtpoint
{
    public partial class alcohol_quest_initial_page : System.Web.UI.Page
    {
        List<Question> allQuestion { get; set; } = new List<Question>();
        List<Question> allQuestion1 { get; set; } = new List<Question>();

        QuestionController questController = new QuestionController();

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
            Response.Redirect("patientInfo.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            String question1 = quest_1.Text;
            String response1 = hdnfldVariable1.Value;
            String question2 = quest_2.Text;
            String response2 = hdnfldVariable2.Value;
            String question3 = quest_3.Text;
            String response3 = hdnfldVariable3.Value;
            setQuestion1(question1, response1);
            setQuestion2(question2, response2);
            setQuestion3(question3, response3);
            Question temp = new Question();
            Question temp1 = new Question();
            Question temp2 = new Question();
            Question temp3 = new Question();
            Question temp4 = new Question();
            Question temp5 = new Question();
            Question temp6 = new Question();

            temp.question = "How often during the last year have you found that you were not able to stop drinking once you had started?";
            allQuestion1.Add(temp);
            temp1.question = "How often during the last year have you failed to do what was normally expected of you because of drinking?";
            allQuestion1.Add(temp1);
            temp2.question = "How often during the last year have you needed a first drink in the morning to get yourself going after a heavy drinking session?";
            allQuestion1.Add(temp2);
            temp3.question = "How often during the last year have you had a feeling of guilt or remorse after drinking?";
            allQuestion1.Add(temp3);
            temp4.question = "How often during the last year have you been unable to remember what happened the night before because of your drinking?";
            allQuestion1.Add(temp4);
            temp5.question = "Have you or someone else been injured because of your drinking?";
            allQuestion1.Add(temp5);
            temp6.question = "Has a relative, friend, doctor, or other health care worker been concerned about your drinking or suggested you cut down?";
            allQuestion1.Add(temp6);
            allQuestion = questController.GetQuestionID(allQuestion);
            allQuestion1 = questController.GetQuestionID(allQuestion1);
            questController.deleteQuestion(allQuestion1, Session["pid"].ToString());
            questController.insertQuestion(allQuestion, Session["pid"].ToString());
            

            int count = findCount(allQuestion);
            if (count > 4 && Session["gender"].ToString().Equals("M"))
            {
                Session["intitalAlcoholQuest"] = allQuestion;
                Response.Redirect("alcohol_quest_final_page.aspx");
            }
            if (count > 3 && Session["gender"].ToString().Equals("F"))
            {
                Session["intitalAlcoholQuest"] = allQuestion;
                Response.Redirect("alcohol_quest_final_page.aspx");
            }
            else
            {
                Response.Redirect("tobacco_quest_page.aspx");
            }

        }

        private int findCount(List<Question> allQuestion)
        {
            int count = 0;
            foreach (Question quest in allQuestion)
            {
                count += quest.answerValue;
            }
            return count;
        }

        public void setQuestion1(String question, string response)
        {
            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "Never":
                    quest.answerValue = 0;
                    break;
                case "Monthly or less":
                    quest.answerValue = 1;
                    break;
                case "2 - 4 times a month":
                    quest.answerValue = 2;
                    break;
                case "2 – 3 times a week":
                    quest.answerValue = 3;
                    break;
                case "4 or more times a week":
                    quest.answerValue = 4;
                    break;

            }
            allQuestion.Add(quest);
        }
        public void setQuestion2(String question, String response)
        {
            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "0 or 2":
                    quest.answerValue = 0;
                    break;
                case "3 or 4":
                    quest.answerValue = 1;
                    break;
                case "5 or 6":
                    quest.answerValue = 2;
                    break;
                case "7 - 9":
                    quest.answerValue = 3;
                    break;
                case "10 or more":
                    quest.answerValue = 4;
                    break;

            }
            allQuestion.Add(quest);
        }

        public void setQuestion3(String question, String response)
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
            allQuestion.Add(quest);
        }
    }
}