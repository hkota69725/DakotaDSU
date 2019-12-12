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
    public partial class tobacco_quest_page : System.Web.UI.Page
    {
        QuestionController questionController = new QuestionController();
        
        List<Question> Question { get; set; } = new List<Question>();
       
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
            int count = questionController.GetAlcoholQues(Session["pid"].ToString());
            if (count >= 4 && Session["gender"].ToString().Equals("M"))
            {
                Response.Redirect("alcohol_quest_final_page.aspx");
            }
            if (count >= 3 && Session["gender"].ToString().Equals("F"))
            {
                Response.Redirect("alcohol_quest_final_page.aspx");
            }
            else
            {
                Response.Redirect("alcohol_quest_initial_page.aspx");
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            string ques = quest_1.Text;
            string response = hdnfldVariable1.Value;
            setQuestion(ques, response);
            Question = questionController.GetQuestionID(Question);
            questionController.insertQuestion(Question, Session["pid"].ToString());

            Response.Redirect("dast_quest_second_page.aspx");
        }        
        public void setQuestion(String question, string response)
        {
            Question quest = new Question();
            quest.question = question;
            quest.answer = response;
            switch (response)
            {
                case "No":
                    quest.answerValue = 0;
                    break;
                case "Yes":
                    quest.answerValue = 1;
                    break;
            }
            Question.Add(quest);
        }
    }
}