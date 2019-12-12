



using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using healtpoint.Common;
using healtpoint.Models;
using System.Data.SqlClient;
using System.Data.Sql;
using MySql.Data.MySqlClient;
namespace healtpoint.Controller
{
    public class PatientController
    {
        static MySqlConnection connection = CommonDB.con();
        HospitalController hospitalController = new HospitalController();
        Security security = new Security();
        List<Patient> listUser { get; set; }
        String rand = "bLUm017e";

        public void insertUserDemoGraphics(Patient user)
        {

            int result = 0;
            connection.Open();
            try
            {
                String inserQuery = "INSERT INTO sbirt_demographics_patients(Staff_Admin_ID,MRN_Number,FirstName, MiddleName,LastName," +
                "Suffix,Clinic,Gender,DateOfBirth,Email,SSN, Phone,Address1,City,State,PostalCode, hashPW,salt) VALUES('" + user.staffAdminID + "','" + user.mrnNum
                + "','" + user.firstName + "','" + user.middleName + "','" + user.lastName + "','" + user.suffix + "','" + user.clinic
                + "','" + user.gender + "','" + user.dob + "','" + user.emailAddress + "','" + user.ssn + "','" + user.phoneNumber
                + "','" + user.address1 + "','" + user.city + "','" + user.state + "','" + user.postalCode + "','" + user.hashPW + "','" + user.salt + "')";

                MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                result = cmd.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
        }

        public String GetAllClinicPatient()
        {
            String tableData = null;
            List<Patient> userList = new List<Models.Patient>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select Clinic,MRN_Number,FirstName,LastName from sbirt_demographics_patients order by Clinic;";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td>" + dr[0].ToString() + "</td>";
                    tableData += "<td>" + dr[1].ToString() + "</td><td> " + dr[2].ToString() + " " + dr[3].ToString() + "</td></tr>";


                }
            }
            finally
            {
                connection.Close();
            }
            
            return tableData;
        }

        public List<HospitalDetails> getPatientClinic(string FirstNm, string LastNm, string ssn)
        {
            List<HospitalDetails> hospitalList = new List<HospitalDetails>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select Clinic_Number,Clinic_Name from sbirt.sbirt_clinic where Clinic_Name in (Select Clinic from sbirt.sbirt_demographics_patients where FirstName = '" + FirstNm + "' and LastName = '" + LastNm + "' and SSN = '" + ssn + "');";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    HospitalDetails hsp = new HospitalDetails();
                    hsp.clinicNum = dr[0].ToString();
                    hsp.nameOfClinic = dr[1].ToString();
                    hospitalList.Add(hsp); ;
                }
            }
            finally
            {
                connection.Close();
            }
            return hospitalList;
        }

        public string getPatientID(string FNm, string LNm, string ssn, string clinic)
        {
            string PtID = null;
            connection.Open();
            try
            {
                string Query = "Select Patient_ID from sbirt.sbirt_demographics_patients where FirstName = '" + FNm + "' and LastName = '" + LNm + "' and SSN = '" + ssn + "' and Clinic = (Select Clinic_Name from sbirt.sbirt_clinic where Clinic_Number = '" + clinic + "');";
                MySqlCommand cmd = new MySqlCommand(Query, connection);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    PtID = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return PtID;
        }
        public Patient checkLogin(Patient patient)
        {
            List<Admin> adminIdList = new List<Admin>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_demographics_patients  where DateOfBirth='" + patient.dob + "'";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string salt = dr[0].ToString();
                    saltList.Add(salt);
                }
            }
            finally
            {
                connection.Close();
            }
            Patient patientDetails = new Patient();
            foreach (String sl in saltList)
            {
                connection.Open();
                try
                {
                    string hashPW = security.GenerateHash(patient.ssn, sl + rand);
                    string idQuery = "select MRN_Number,FirstName,LastName,SSN,Gender, Patient_ID from sbirt_demographics_patients where DateOfBirth='" + patient.dob + "' and hashPW='" + hashPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        patientDetails.mrnNum = idDR[0].ToString();
                        patientDetails.firstName = idDR[1].ToString();
                        patientDetails.lastName = idDR[2].ToString();
                        patientDetails.ssn = idDR[3].ToString();
                        patientDetails.gender = idDR[4].ToString();
                        patientDetails.pid = idDR[5].ToString();
                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return patientDetails;

        }
        public Patient getPatientDetails(String pid)
        {

            Patient patient = new Patient();
            connection.Open();
            try
            {
                String selectQuery = "Select * from sbirt_demographics_patients where Patient_ID='" + pid + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    patient.pid = pid;
                    patient.suffix = dr[6].ToString();
                    patient.firstName = dr[3].ToString();
                    patient.lastName = dr[5].ToString();
                    patient.gender = dr[8].ToString();
                    DateTime oDate = Convert.ToDateTime(dr[9].ToString());
                    String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                    patient.dob = date;
                    patient.mrnNum = dr[2].ToString();

                }
            }
            finally
            {
                connection.Close();
            }
            return patient;
        }
        public PatientDemographics getPatientDetails1(String pid)
        {

            PatientDemographics patient = new PatientDemographics();
            connection.Open();
            try
            {
                String selectQuery = "Select * from sbirt_demographics where MRN_Number='" + pid + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    patient.MRN_Number = pid;
                    patient.Gender = dr[4].ToString();
                    patient.visitStatus = dr[2].ToString();
                    patient.visitType = dr[1].ToString();
                    patient.Patient_Ethics = dr[5].ToString();
                    patient.Patient_Race = dr[6].ToString();
                    patient.dateOfBirth = dr[7].ToString();
                    patient.reportingDate = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return patient;
        }

        public Patient getPatientAllDetails(String id)
        {

            Patient patient = new Patient();
            connection.Open();
            try
            {
                String selectQuery = "Select * from sbirt_demographics_patients where Patient_ID='" + id + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    patient.mrnNum = dr[2].ToString();
                    patient.firstName = dr[3].ToString();
                    patient.middleName = dr[4].ToString();
                    patient.lastName = dr[5].ToString();
                    patient.suffix = dr[6].ToString();
                    patient.clinic = dr[7].ToString();
                    patient.gender = dr[8].ToString();
                    DateTime oDate = Convert.ToDateTime(dr[9].ToString());
                    String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                    patient.dob = date;
                    patient.emailAddress = dr[10].ToString();
                    // string a = dr[11].ToString();
                    patient.ssn = dr[11].ToString();
                    //"****" + a.Substring(a.Length - 5);
                    patient.phoneNumber = dr[12].ToString();
                    patient.address1 = dr[13].ToString();
                    patient.city = dr[14].ToString();
                    patient.state = dr[15].ToString();
                    patient.postalCode = dr[16].ToString();
                    patient.salt = dr[18].ToString();

                }
            }
            finally
            {
                connection.Close();
            }
            return patient;
        }

        public void updateDetails(Patient user, String pid)
        {
            connection.Open();
            try
            {
                String updaterQuery = "UPDATE sbirt_demographics_patients SET Email='" + user.emailAddress + "',Phone='" + user.phoneNumber +
               "',Address1='" + user.address1 + "',City='" + user.city + "',State='" + user.state + "',PostalCode='" + user.postalCode
               + "' where Patient_ID=+'" + pid + "'";

                MySqlCommand cmd = new MySqlCommand(updaterQuery, connection);
                cmd.ExecuteNonQuery();
            }
            /* String updaterQuery = "UPDATE sbirt_demographics_patients SET MRN_Number='"+user.mrnNum+"',FirstName='"+ user.firstName+ "', MiddleName='" +
                user.middleName+"',LastName='"+user.lastName+"',Suffix='"+user.suffix+"',Clinic='"+user.clinic+"',Gender='"+user.gender
                +"',DateOfBirth='"+user.dob+"',Email='"+user.emailAddress+"',SSN='"+user.ssn+"',Phone='"+user.phoneNumber+
                "',Address1='"+user.address1+"',City='"+user.city+"',State='"+user.state+"',PostalCode='"+user.postalCode
                + "',hashPW='"+user.hashPW+"' where Patient_ID=+'"+pid+ "'"; */
            finally
            {
                connection.Close();
            }
            
        }


        public string searchPatient(String lastname, String mrn, String check, String ID, string type, string cid = "0")
        {

            String tableData = null;
            List<Patient> userList = new List<Models.Patient>();
            String selectQuery = "";
            if (type.Equals("1"))
            {
                MySqlDataReader dr;
                connection.Open();
                try
                {
                    if (check.Equals("MRN"))
                    {
                        selectQuery = "Select MRN_Number, FirstName,LastName,Gender, DateOfBirth, Patient_ID from sbirt_demographics_patients where MRN_Number like '%" + mrn + "'AND Staff_Admin_ID='" + ID + "'";

                    }
                    else
                    {
                        selectQuery = "Select MRN_Number, FirstName,LastName,Gender, DateOfBirth,Patient_ID  from sbirt_demographics_patients where LastName like '%" + lastname + "'AND Staff_Admin_ID='" + ID + "'";
                    }
                    MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        tableData += "<tr><td>" + dr[0].ToString() + "</a></td>";
                        tableData += "<td><a runat='server' href='ViewPatientInfoScore.aspx?type=0&id=" + dr[5].ToString() + "'>" + dr[1].ToString() + " " + dr[2].ToString() + "</td>";
                        DateTime oDate = Convert.ToDateTime(dr[4].ToString());
                        String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                        tableData += "<td>" + dr[3].ToString() + "</td>";
                        tableData += "<td>" + date + "</td></tr>";
                    }
                }
                finally
                {
                    connection.Close();
                }      
            }
            else if (type.Equals("2"))
            {

                List<String> pid = new List<string>();
                List<string> patientWithProvider = new List<string>();
                pid = getPatientListBySearch(lastname, mrn, check, cid);
                foreach (String s in pid)
                {
                    connection.Open();
                    try
                    {
                        MySqlDataReader dr;
                        selectQuery = "Select MRN_Number, FirstName,LastName,Gender, DateOfBirth,Patient_ID  from sbirt_demographics_patients where Patient_ID=(" +
                            "Select  patient_id from sbirt_provider_patient where patient_id='" + s + "')";
                        MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                        dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            tableData += "<tr><td>" + dr[0].ToString() + "</a></td>";
                            tableData += "<td><a runat='server' href='ViewPatientInfoScore.aspx?type=0&id=" + dr[5].ToString() + "'>" + dr[1].ToString() + " " + dr[2].ToString() + "</td>";
                            DateTime oDate = Convert.ToDateTime(dr[4].ToString());
                            String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                            tableData += "<td>" + dr[3].ToString() + "</td>";
                            tableData += "<td>" + date + "</td></tr>";


                        }
                    }
                    finally
                    {
                        connection.Close();
                    }  
                }
            }
            return tableData;
        }

        public string findPatient1(String mrn)
        {

            String tableData = "";
            String selectQuery = "";
            MySqlDataReader dr;
            connection.Open();
            try
            {
                selectQuery = "Select Visit_Type, Structured_Data_Name, Structured_Data_Value from gbra where Patient_account_number =" + mrn + "";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td>" + dr[0].ToString() + "</td><td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td></tr>";
                }
            }
            finally
            {
                connection.Close();
            }
            return tableData;
        }


        public List<String> getPatientListBySearch(String lastname, String mrn, string check, string clinicID)
        {
            List<String> pidList = new List<string>();
            string clinicName = hospitalController.getClinicNameForProvider(clinicID);
            String selectQuery = "";
            MySqlDataReader dr;
            if (check.Equals("MRN"))
            {
                selectQuery = "Select  Patient_ID from sbirt_demographics_patients where MRN_Number like '%" + mrn + "'AND Clinic='" + clinicName + "'";

            }
            else
            {
                selectQuery = "Select Patient_ID  from sbirt_demographics_patients where LastName like '%" + lastname + "'AND Clinic='" + clinicName + "'";
            }
            connection.Open();
            try
            {
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    pidList.Add(dr[0].ToString());
                }
            }
            finally
            {
                connection.Close();
            }
            return pidList;
        }

        public string AllPatient(string cid)
        {

            String tableData = null;
            List<Patient> userList = new List<Models.Patient>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                string selectQuery = "Select Patient_ID,MRN_Number, FirstName,LastName,Gender, DateOfBirth from sbirt.sbirt_demographics_patients where Staff_Admin_ID IN (Select Staff_ID from sbirt.sbirt_staff_admin where Clinic_Admin_ID ='" + cid + "')";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td>" + dr[1].ToString() + "</td>";
                    tableData += "<td><a runat='server' href='ViewPatientInfoScore.aspx?type=0&id=" + dr[0].ToString() + "'>" + dr[2].ToString() + " " + dr[3].ToString() + " </td>";
                    DateTime oDate = Convert.ToDateTime(dr[5].ToString());
                    String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                    tableData += "<td>" + dr[4].ToString() + "</td>";
                    tableData += "<td>" + date + "</td></tr>";


                }
            }
            finally
            {
                connection.Close();
            }
            return tableData;
        }
        public string getPatientList(String credential)
        {
            String tableData = null;
            List<Patient> userList = new List<Models.Patient>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                List<Admin> adminList = new List<Admin>();
                String selectQuery = null;
                selectQuery = "Select Patient_ID,MRN_Number, Gender, DateOfBirth from sbirt_demographics_patients where Clinic='" + credential + "'";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td><a runat='server' href='ViewPatientInfoScore.aspx?type=2&id=" + dr[0].ToString() + "'>" + dr[1].ToString() + "</td>";
                    DateTime oDate = Convert.ToDateTime(dr[3].ToString());
                    String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                    tableData += "<td>" + dr[2].ToString() + "</td>" + "<td>" + date +"</td></tr>";
                }
            }
            finally
            {
                connection.Close();
            } 
            return tableData;
        }
        public string SelectedPatient(string cid, string mrn)
        {

            String tableData = null;
            List<Patient> userList = new List<Models.Patient>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select Patient_ID,MRN_Number, FirstName,LastName,Gender, DateOfBirth from sbirt.sbirt_demographics_patients where Staff_Admin_ID IN (Select Staff_ID from sbirt.sbirt_staff_admin where Clinic_Admin_ID ='" + cid + "') and MRN_Number='" + mrn + "';";
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tableData += "<tr><td>" + dr[1].ToString() + "</td>";
                    tableData += "<td><a runat='server' href='ViewPatientInfoScore.aspx?type=0&id=" + dr[0].ToString() + "'>" + dr[2].ToString() + " " + dr[3].ToString() + "</td>";
                    DateTime oDate = Convert.ToDateTime(dr[5].ToString());
                    String date = oDate.Month + "-" + oDate.Day + "-" + oDate.Year;
                    tableData += "<td>" + dr[4].ToString() + "</td>";
                    tableData += "<td>" + date + "</td></tr>";


                }
            }
            finally
            {
                connection.Close();
            }
            return tableData;
        }

    }
}
