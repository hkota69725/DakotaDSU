using healtpoint.Common;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace healtpoint.Controller
{
    public class GpraController 
    {
        static MySqlConnection connection = CommonDB.con();
        // GET: Gpra

        public void AddGPRABehavioural_A2(int quest, int option, int days, String others)
        {
            connection.Open();
            try
            {
                if(String.IsNullOrEmpty(others))
                {
                    if (days == 0)
                    {
                        String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health_diagnosis(Question_ID, Option_ID) VALUES('" + quest + "','" + option + "')";
                        MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                        int result = cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health_diagnosis(Question_ID, Option_ID, Days) VALUES('" + quest + "','" + option + "','" + days + "')";
                        MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                        int result = cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    if (days == 0)
                    {
                        String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health_diagnosis(Question_ID, Option_ID, Others) VALUES('" + quest + "','" + option + "','" + others + "')";
                        MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                        int result = cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health_diagnosis(Question_ID, Option_ID, Days, Others) VALUES('" + quest + "','" + option + "','" + days + "','" + others + "' )";
                        MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                        int result = cmd.ExecuteNonQuery();
                    }

                }
                
            }
            finally
            {
                connection.Close();
            }
        }
        public void addGPRABehavioural_A(string test)
        {
            int value = 0, value1 = 1;
            connection.Open();
            try
            {
                if (test.Equals("Don't Know"))
                {
                    String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health(Patient_ID, Dont_Know) VALUES('"+value+"','" + value1 + "')";
                    MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
                else
                {
                    String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health(Patient_ID, Refused) VALUES('" + value + "','" + value1 + "')";
                    MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                connection.Close();
            }
            
        }
        public void AddGPRAMiliraty(int questionID, int optionID)
        {
            connection.Open();
            try
            {
                   String inserQuery = "INSERT INTO sbirt_gpra_behavioral_health_diagnosis(Question_ID, Option_ID) VALUES('" + questionID + "','" + optionID + "')";
                    MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                    int result = cmd.ExecuteNonQuery();

            }
            finally
            {
                connection.Close();
            }

        }
        public void addGPRABehavioural_A1(string test, string name)
        {
            int Question_ID = 0, Option_ID = 0, value1 = 0, value2 = 0;
            string question = null, option = null;
            connection.Open();

            try
            {
                int value = Convert.ToInt16(test);
                MySqlDataReader dr;
                String selectQuery = "Select Option_ID, Ques_ID from sbirt_gpra_option where ID='" + value + "';";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    option = dr[0].ToString();
                    question = dr[1].ToString();
                }
                Question_ID = Convert.ToInt16(question);
                Option_ID = Convert.ToInt16(option);
            }
            finally
            {
                connection.Close();
            }

            connection.Open();
            try
            {
                String insertQuery = null;
                if (name.Equals("Primary"))
                {
                    insertQuery = "INSERT INTO sbirt_gpra_behavioral_health(Patient_ID, Primary_option, Question_ID, Option_ID) VALUES('"+value1+"','"+value2+ "','" + Question_ID+"','"+Option_ID+"')";
                
                }
                else if(name.Equals("Secondary"))
                {
                    insertQuery = "INSERT INTO sbirt_gpra_behavioral_health(Patient_ID, Secondary_option, Question_ID, Option_ID) VALUES('" + value1 + "','" + value2 + "','" + Question_ID + "','" + Option_ID + "')";
                }
                else if (name.Equals("Tertiary"))
                {
                    insertQuery = "INSERT INTO sbirt_gpra_behavioral_health(Patient_ID, Tertiary_option, Question_ID, Option_ID) VALUES('" + value1 + "','" + value2 + "','" + Question_ID + "','" + Option_ID + "')";
                }
                MySqlCommand cmd = new MySqlCommand(insertQuery, connection);
                int result = cmd.ExecuteNonQuery();

            }

            finally
            {
                connection.Close();
            }

        }

        public void addGPRABehavioural_Planned(int question_id, int option_id, string answer, String others)
        {
            connection.Open();
            try
            {
                if (String.IsNullOrEmpty(others))
                {
                    String inserQuery = "INSERT INTO sbirt_gpra_behavioural_health_planned(Question_ID, Option_ID, Answer) VALUES('" + question_id + "','" + option_id + "','" + answer +"')";
                    MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
                else
                {
                    String inserQuery = "INSERT INTO sbirt_gpra_behavioural_health_planned(Question_ID, Option_ID, Answer, Others) VALUES('" + question_id + "','" + option_id + "','" + answer + "','" + others + "')";
                    MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                    int result = cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                connection.Close();
            }
        }
    }
}