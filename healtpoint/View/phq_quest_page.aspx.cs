using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
using healtpoint.Common;
using MySql.Data.MySqlClient;

namespace healtpoint
{
    public partial class phq_quest_page : System.Web.UI.Page
    {
        List<Question> allQuestion { get; set; }
        QuestionController questController = new QuestionController();
        Question Questn = new Question();
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
            Questn = questController.GetDrugQues(Session["pid"].ToString());
            Response.Redirect("dast_quest_second_page.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            allQuestion = new List<Question>();

            String question1 = quest_1.Text;
            String response1 = hdnfldVariable1.Value;
            setQuestion(question1, response1);

            String question2 = quest_2.Text;
            String response2 = hdnfldVariable2.Value;
            setQuestion(question2, response2);

            String question3 = quest_3.Text;
            String response3 = hdnfldVariable3.Value;
            setQuestion(question3, response3);

            String question4 = quest_4.Text;
            String response4 = hdnfldVariable4.Value;
            setQuestion(question4, response4);

            String question5 = quest_5.Text;
            String response5 = hdnfldVariable5.Value;
            setQuestion(question5, response5);

            String question6 = quest_6.Text;
            String response6 = hdnfldVariable6.Value;
            setQuestion(question6, response6);

            String question7 = quest_7.Text;
            String response7 = hdnfldVariable7.Value;
            setQuestion(question7, response7);

            String question8 = quest_8.Text;
            String response8 = hdnfldVariable8.Value;
            setQuestion(question8, response8);

            String question9 = quest_9.Text;
            String response9 = hdnfldVariable9.Value;
            setQuestion(question9, response9);

            String question10 = checked_1.Text;
            String response10 = hdnfldVariable10.Value;
            setQuestion(question10, response10);


            allQuestion = questController.GetQuestionID(allQuestion);

            questController.insertQuestion(allQuestion, Session["pid"].ToString());

            Response.Redirect("Logout.aspx");

        }

        public void setQuestion(String question, string response)
        {
            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "Not at all":
                    quest.answerValue = 0;
                    break;
                case "Several days":
                    quest.answerValue = 1;
                    break;
                case "More than half the days":
                    quest.answerValue = 2;
                    break;
                case "Nearly every day":
                    quest.answerValue = 3;
                    break;
                case null:
                    quest.answerValue = 5;
                    break;
            }
            allQuestion.Add(quest);
        }
    }
}