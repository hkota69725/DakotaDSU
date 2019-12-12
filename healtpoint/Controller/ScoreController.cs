using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using healtpoint.Common;
using healtpoint.Models;

namespace healtpoint.Controller
{
    public class ScoreController
    {
        static MySqlConnection connection = CommonDB.con();

        public String GetScore(string pid)
        {
            String tableData = null;
            List<string> DateList = new List<string>();
            connection.Open();
            try
            {
                String selectQuery = "Select distinct DATE_FORMAT(Screening_Date,'%d-%b-%Y') as Screening_Date from sbirt.sbirt_screening_dtls where Patient_ID='" + pid + "' order by Screening_Date desc;";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DateList.Add(dr[0].ToString());
                };
            }
            finally
            {
                connection.Close();
            }
            
            foreach (string StrDT in DateList)
            {
                Score score = new Score();
                string AuditScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 1) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and Patient_ID ='" + pid + "';";
                string DrugScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 3) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and question_id <> 20 and Patient_ID ='" + pid + "';";
                string PhqScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 2) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and Patient_ID = '" + pid + "';";
                string TobaccoQury = "Select Answer as Score from sbirt.sbirt_screening_dtls where Question_ID = '31' and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and Patient_ID = '" + pid + "';";
                string TotalScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID <> 20 and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and Patient_ID = '" + pid + "';";
                string SingleDrugQury = "Select COALESCE(Score,-1) as Score from sbirt.sbirt_screening_dtls where Question_ID = 20 and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + StrDT + "' and Patient_ID = '" + pid + "';";
                tableData += "<tr><td><a runat='server' href='ViewQuesScores.aspx?date=" + StrDT + "&pid=" + pid + "'>" + StrDT + "</a></td>";

                connection.Open();
                try
                {
                    MySqlDataReader dr1;
                    MySqlCommand cmd1 = new MySqlCommand(AuditScoreQury, connection);
                    dr1 = cmd1.ExecuteReader();
                    bool recfnd1 = dr1.Read();
                    score.AuditScore = dr1[0].ToString();
                }
                finally
                {
                    connection.Close();
                }
                connection.Open();
                try
                {
                    MySqlCommand cmd2 = new MySqlCommand(DrugScoreQury, connection);
                    MySqlDataReader dr2;
                    dr2 = cmd2.ExecuteReader();
                    bool recfnd2 = dr2.Read();
                    score.DrugScore = dr2[0].ToString();
                }
                finally
                {
                    connection.Close();
                }
                connection.Open();
                try
                {
                    MySqlDataReader dr3;
                    MySqlCommand cmd3 = new MySqlCommand(PhqScoreQury, connection);
                    dr3 = cmd3.ExecuteReader();
                    bool recfnd3 = dr3.Read();
                    score.PhqScore = dr3[0].ToString();
                }
                finally
                {
                    connection.Close();
                }
                connection.Open();
                try
                {
                    MySqlDataReader dr4;
                    MySqlCommand cmd4 = new MySqlCommand(TotalScoreQury, connection);
                    dr4 = cmd4.ExecuteReader();
                    bool recfnd4 = dr4.Read();
                    score.TotalScore = dr4[0].ToString();
                }
                finally
                {
                    connection.Close();
                }
                connection.Open();
                try
                {
                    MySqlDataReader dr5;
                    MySqlCommand cmd5 = new MySqlCommand(TobaccoQury, connection);
                    dr5 = cmd5.ExecuteReader();
                    if (dr5.Read())
                        score.TobaccoScore = dr5[0].ToString();
                    else
                        score.TobaccoScore = "0";
                }
                finally
                {
                    connection.Close();
                }
                /*connection.Open();
                try
                {
                    MySqlDataReader dr6;
                    
                    MySqlCommand cmd6 = new MySqlCommand(SingleDrugQury, connection);
                    dr6 = cmd6.ExecuteReader();
                    bool recfnd = dr6.Read();
                    int x = Convert.ToInt32(dr6[0]);
                    if (x == -1)
                    {
                        score.SingleDrugScore = "NA";
                    }
                    else
                    {
                        score.SingleDrugScore = dr6[0].ToString();
                    }
                }
                finally
                {
                    connection.Close();
                }*/
                tableData += "<td>" + score.AuditScore + "</td>";
                //tableData += "<td>" + score.SingleDrugScore + "</td>";
                tableData += "<td>" + score.DrugScore + "</td>";
                tableData += "<td>" + score.PhqScore + "</td>";
                tableData += "<td>" + score.TobaccoScore + "</td>";
               // tableData += "<td>" + score.TotalScore + "</td></tr>";
            }
            return tableData;
        }

        public string GetQuesAns(string pid, string TypeID, string date)
        {
            String tableData = null;
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select A.question as Question, B.Answer as Response, B.Score as Score from sbirt.sbirt_question A, sbirt.sbirt_screening_dtls B where A.question_id = B.Question_ID and B.Question_ID <> '20' and A.type_id = " + TypeID + " and B.Patient_ID='" + pid + "' and DATE_FORMAT(B.Screening_Date,'%d-%b-%Y') ='" + date + "';";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td>" + dr[0].ToString() + "</td>";
                    tableData += "<td>" + dr[1].ToString() + " </td>";
                    tableData += "<td>" + dr[2].ToString() + "</td></tr>";
                }
            }
            finally
            {
                connection.Close();
            }
            return tableData;
        }

        public string GetDates(string pid)
        {
            String tableData = null;
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select distinct DATE_FORMAT(Screening_Date,'%d-%b-%Y') as Screening_Date from sbirt.sbirt_screening_dtls where Patient_ID='" + pid + "' order by Screening_Date desc;";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td><a runat='server' href='ViewQuesScores.aspx?date=" + dr[0].ToString() + "&pid=" + pid + "'>" + dr[0].ToString() + "</a></td></tr>";
                }
            }
            finally
            {
                connection.Close();
            }
            return tableData;
        }

        public string GetAssmtScore(string pid, string SrcDt)
        {
            string tabledata = null;
            Score score = new Score();
            string AuditScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 1) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID ='" + pid + "';";
            string DrugScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 3) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and question_id <> 20 and Patient_ID ='" + pid + "';";
            string PhqScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 2) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            string TotalScoreQury = "select COALESCE(sum(Score),0) as Score from sbirt.sbirt_screening_dtls where Question_ID <> 20 and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            string TobaccoQury = "Select Answer as Score from sbirt.sbirt_screening_dtls where Question_ID = 31 and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            //string SingleDrugQury = "Select Score as Score from sbirt.sbirt_screening_dtls where Question_ID = 20 and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr1;
                MySqlCommand cmd1 = new MySqlCommand(AuditScoreQury, connection);
                dr1 = cmd1.ExecuteReader();
                bool recfnd1 = dr1.Read();
                score.AuditScore = dr1[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                MySqlCommand cmd2 = new MySqlCommand(DrugScoreQury, connection);
                MySqlDataReader dr2;
                dr2 = cmd2.ExecuteReader();
                bool recfnd2 = dr2.Read();
                score.DrugScore = dr2[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                MySqlDataReader dr3;
                MySqlCommand cmd3 = new MySqlCommand(PhqScoreQury, connection);
                dr3 = cmd3.ExecuteReader();
                bool recfnd3 = dr3.Read();
                score.PhqScore = dr3[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                MySqlDataReader dr4;
                MySqlCommand cmd4 = new MySqlCommand(TotalScoreQury, connection);
                dr4 = cmd4.ExecuteReader();
                bool recfnd4 = dr4.Read();
                score.TotalScore = dr4[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                MySqlDataReader dr5;
                MySqlCommand cmd5 = new MySqlCommand(TobaccoQury, connection);
                dr5 = cmd5.ExecuteReader();
                bool recfnd5 = dr5.Read();
                if (recfnd5)
                    score.TobaccoScore = dr5[0].ToString();
                else
                    score.TobaccoScore = "0";
            }
            finally
            {
                connection.Close();
            }
            /*connection.Open();
            try
            {
                MySqlDataReader dr6;
                MySqlCommand cmd6 = new MySqlCommand(SingleDrugQury, connection);
                dr6 = cmd6.ExecuteReader();
                bool recfnd6 = dr6.Read();
                score.SingleDrugScore = dr6[0].ToString();
            }
            finally
            {
                connection.Close();
            }*/
            tabledata += "<td>" + SrcDt + "</td>";
            tabledata += "<td>" + score.AuditScore + "</td>";
           // tabledata += "<td>" + score.SingleDrugScore + "</td>";
            tabledata += "<td>" + score.DrugScore + "</td>";
            tabledata += "<td>" + score.PhqScore + "</td>";
            tabledata += "<td>" + score.TobaccoScore + "</td>";
            //tabledata += "<td>" + score.TotalScore + "</td></tr>";
            return tabledata;
        }

        public string AuditSingleScore(string pid, string SrcDt)
        {
            string score = null;
            string AuditScoreQury = "select sum(Score) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 1) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID ='" + pid + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(AuditScoreQury, connection);
                dr = cmd.ExecuteReader();
                bool recfnd = dr.Read();
                score = dr[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            return score;
        }

        public string DastSingleScore(string pid, string SrcDt)
        {
            string score = null;
            string DrugScoreQury = "select COALESCE(sum(Score),-1) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 3) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and question_id <> 20 and Patient_ID ='" + pid + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(DrugScoreQury, connection);
                dr = cmd.ExecuteReader();
                bool recfnd = dr.Read();
                int x = Convert.ToInt32(dr[0]);
                if (x == -1)
                {
                    score = "NA";
                }
                else
                {
                    score = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }          
            return score;
        }

        public string PhqSingleScore(string pid, string SrcDt)
        {
            string score = null;
            string PhqScoreQury = "select sum(Score) as Score from sbirt.sbirt_screening_dtls where Question_ID IN (select question_id from sbirt.sbirt_question where type_id = 2) and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(PhqScoreQury, connection);
                dr = cmd.ExecuteReader();
                bool recfnd = dr.Read();
                score = dr[0].ToString();
            }
            finally
            {
                connection.Close();
            }
            return score;
        }

        public string GetTobaccoScore(string pid, string SrcDt)
        {
            string score = null;
            string ScoreQury = "select Answer as Score from sbirt.sbirt_screening_dtls where Question_ID='31' and DATE_FORMAT(Screening_Date,'%d-%b-%Y') = '" + SrcDt + "' and Patient_ID = '" + pid + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(ScoreQury, connection);
                dr = cmd.ExecuteReader();
                bool recfnd = dr.Read();
                if (recfnd)
                    score = dr[0].ToString();
                else
                    score = "0";
            }
            finally
            {
                connection.Close();
            }
            return score;
        }

        public string GetSingleDrugQues(string pid, string SrcDt)
        {
            string score = null;
            string ScoreQury = "Select A.question as Question, B.Answer as Response, B.Score as Score from sbirt.sbirt_question A, sbirt.sbirt_screening_dtls B where A.question_id = B.Question_ID and B.Question_ID = '20' and B.Patient_ID='" + pid + "' and DATE_FORMAT(B.Screening_Date,'%d-%b-%Y') ='" + SrcDt + "';";
            connection.Open();
            try
            {
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(ScoreQury, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    score += "<tr><td>" + dr[0].ToString() + "</td><td>" + dr[1].ToString() + "</td></tr>";
                }
            }
            finally
            {
                connection.Close();
                connection.Close();
            }
            return score;
        }
    }
}