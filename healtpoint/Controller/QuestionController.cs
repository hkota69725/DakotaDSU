using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using healtpoint.Models;
using MySql.Data.MySqlClient;
using healtpoint.Common;

namespace healtpoint.Controller
    
{
    public class QuestionController
    {
        static MySqlConnection connection = CommonDB.con();
        List<Question> Quests { get; set; }

        public void insertQuestion(List<Question> alcoholQuestion, string pid) {

            connection.Open();
            try
            {
                foreach (Question quest in alcoholQuestion)
                {
                    String preDelQuery = "DELETE FROM sbirt_screening_dtls WHERE Patient_ID ='" + pid + "' and Question_ID ='" + quest.questionID + "' and Screening_Date = CURRENT_DATE;";

                    MySqlCommand cmd = new MySqlCommand(preDelQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                String insertQuery = null;
                foreach (Question quest in alcoholQuestion)
                {
                    if (quest.answerValue != 5)
                    {
                        insertQuery = "INSERT INTO sbirt_screening_dtls(Patient_ID, Question_ID, Answer, Score, Screening_Date) VALUES ('" + pid + "','" + quest.questionID + "','" + quest.answer + "'," + quest.answerValue + ",CURRENT_DATE);";
                    }
                    else
                    {
                        insertQuery = "INSERT INTO sbirt_screening_dtls(Patient_ID, Question_ID, Answer, Screening_Date) VALUES ('" + pid + "','" + quest.questionID + "','" + quest.answer + "',CURRENT_DATE);";
                    }
                    MySqlCommand cmd = new MySqlCommand(insertQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                connection.Close();
            }
        }

        public void deleteQuestion(List<Question> alcoholQuestion, string pid)
        {

            connection.Open();
            try
            {
                foreach (Question quest in alcoholQuestion)
                {
                    String preDelQuery = "DELETE FROM sbirt_screening_dtls WHERE Patient_ID ='" + pid + "' and Question_ID ='" + quest.questionID + "' and Screening_Date = CURRENT_DATE;";

                    MySqlCommand cmd = new MySqlCommand(preDelQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                connection.Close();
            }
        }

        public int getQuestion_ID(String quest)
        {
            int num = 0;
            connection.Open();
            try
            {
                
                    String GetQuery = "select Question_ID from sbirt_gpra_question where Question='" + quest + "'";
                    MySqlCommand cmd = new MySqlCommand(GetQuery, connection);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    bool recordfound = dr.Read();
                    if (recordfound)
                    {
                        num = Convert.ToInt32(dr[0]);
                    }
                    dr.Close();

            }
            finally
            {
                connection.Close();
            }
            return num;
        }
        public int getOption_ID(int quest, String option)
        {
            int num = 0;
            connection.Open();
            try
            {

                String GetQuery = "select Option_ID from sbirt_gpra_option where Ques_ID='" + quest + "' and Option_Value='" + option + "'";
                MySqlCommand cmd = new MySqlCommand(GetQuery, connection);
                MySqlDataReader dr = cmd.ExecuteReader();
                bool recordfound = dr.Read();
                if (recordfound)
                {
                    num = Convert.ToInt32(dr[0]);
                }
                dr.Close();

            }
            finally
            {
                connection.Close();
            }
            return num;
        }
        public List<Question> GetQuestionID(List<Question> Question)
        {
            connection.Open();
            try
            {
                foreach (Question quest in Question)
                {
                    String GetQuery = "select question_id from sbirt_question where question='" + quest.question + "'";
                    MySqlCommand cmd = new MySqlCommand(GetQuery, connection);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    bool recordfound = dr.Read();
                    if (recordfound)
                    {
                        quest.questionID = Convert.ToInt32(dr[0]);
                    }
                    dr.Close();
                }
            }
            finally
            {
                connection.Close();
            }
            return Question;
        }

        public int GetAlcoholQues(string pid)
        {
            int count = 0;
            connection.Open();
            try
            {
                String SelQuery = "Select sum(Score) as score From sbirt_screening_dtls where Patient_ID = '" + pid + "' and Question_ID in ('1','2','3') and Screening_Date = CURRENT_DATE;";
                MySqlCommand cmd = new MySqlCommand(SelQuery, connection);
                MySqlDataReader dr = cmd.ExecuteReader();
                bool recordfound = dr.Read();
                count = Convert.ToInt32(dr[0]);
            }
            finally
            {
                connection.Close();
            }
            return count;
        }

        public Question GetDrugQues(string pid)
        {
            Question quest = new Question();
            connection.Open();
            try
            {
                String SelQuery = "Select Question_ID, Answer, Score From sbirt_screening_dtls where Patient_ID = '" + pid + "'and Question_ID = '20' and Screening_Date = CURRENT_DATE;";
                MySqlCommand cmd = new MySqlCommand(SelQuery, connection);
                MySqlDataReader dr = cmd.ExecuteReader();
                bool recordfound = dr.Read();
                if (recordfound)
                {
                    quest.questionID = Convert.ToInt32(dr[0]);
                    quest.answer = Convert.ToString(dr[1]);
                    quest.answerValue = Convert.ToInt32(dr[2]);
                }
                dr.Close();
            }
            finally
            {
                connection.Close();
            }
            return quest;
        }
    }
}