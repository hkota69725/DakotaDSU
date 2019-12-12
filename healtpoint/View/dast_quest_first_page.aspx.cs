using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using healtpoint.Models;
using healtpoint.Controller;
namespace healtpoint

{
    public partial class dast_quest_first_page1 : System.Web.UI.Page
    {
        QuestionController questionController = new QuestionController();

        List<Question> Question { get; set; } = new List<Question>();
        List<Question> quesList = new List<Models.Question>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] != null)
            {

                firstname.Text = Session["firstname"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("tobacco_quest_page.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Question = new List<Question>();
            Question quest = new Question();
            string ques = quest_1.Text;
            string response = TxtBox1.Text;
            quest.question = ques;
            quest.answer = response;
            quest.answerValue = Convert.ToInt32(response);
            Question.Add(quest);
            Question = questionController.GetQuestionID(Question);
            questionController.insertQuestion(Question, Session["pid"].ToString());
            if (quest.answerValue >= 1)
            {
                Response.Redirect("dast_quest_second_page.aspx");
            }
            else
            {
                Response.Redirect("phq_quest_page.aspx");
            }

        }
    }
}