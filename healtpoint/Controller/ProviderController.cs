using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using healtpoint.Models;
using healtpoint.Common;
using MySql.Data;
using MySql.Data.MySqlClient;
namespace healtpoint.Controller
{
    public class ProviderController
    {
        String rand = "1Klb1vB8";
        static MySqlConnection connection = CommonDB.con();
        AdminController adminController = new AdminController();
        static Security security = new Security();
        public int insertProviDetails(Provider provider)
        {
            int result = 0,result1 = 0;
            connection.Open();
            try
            {
                String inserQuery = "INSERT INTO sbirt_provider(NPI,providerName,providerUsername,emailAdd,phoneNum,hashPW,salt,tempPW) VALUES('" +
                                provider.npi + "','" + provider.providerName + "','" + provider.username + "','" + provider.email + "','" + provider.phoneNum + "','" + provider.hashPW + "','" + provider.salt + "','" + provider.tempPassword + "')";
                MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                result = cmd.ExecuteNonQuery();
                connection.Close();
                connection.Open();
                String insertQ = "INSERT INTO sbirt_clinic_provider_mapping(clinic_id, provider_id) values ('" + provider.clinicNumber + "','" + provider.npi + "')";
                MySqlCommand cmd1 = new MySqlCommand(insertQ, connection);
                result1 = cmd1.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            } 
            return result1;
        }

        public Provider verifyProvider(Provider provider)
        {
            List<Provider> providerIdList = new List<Provider>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_provider  where providerUsername='" + provider.username + "'";
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
            foreach (String sl in saltList)
            {
                connection.Open();
                try
                {
                    string hashPW = security.GenerateHash(provider.password, sl + rand);
                    string idQuery = "select NPI,providerUsername, status from sbirt_provider where providerUsername='" + provider.username + "' and hashPW='" + hashPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        provider.salt = sl;
                        provider.npi = idDR[0].ToString();
                        provider.username = idDR[1].ToString();
                        provider.clinicNumber = getClinicIDProvider(idDR[0].ToString());

                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
                
            }
            return provider;
        }
         public string getClinicIDProvider(String npi)
        {
            connection.Close();
            string cid = null;
            connection.Open();
            try
            {
                String selectQuery = "Select  clinic_id from sbirt_clinic_provider_mapping where provider_id='" + npi + "'";
                MySqlDataReader dr1;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr1 = cmd.ExecuteReader();
                if (dr1.Read())
                {
                    cid = dr1[0].ToString();

                }
            }
            finally
            {
                connection.Close();
            }
            return cid;
        }

        public string checkNPI(Provider provider)
        {
            string npi = null;
            string selectQuery = "select NPI from sbirt_provider where NPI='" + provider.npi + "'";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    npi = idDR[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return npi;
        }

        public Provider getProviderIDTEMP(Provider provider)
        {
            List<Provider> adminIdList = new List<Provider>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_provider  where providerUsername='" + provider.username + "'";
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
            foreach (String sl in saltList)
            {
                connection.Open();
                try
                {
                    string tempPW = security.GenerateHash(provider.tempPassword, sl + rand);
                    string idQuery = "select NPI from sbirt_provider where providerUsername='" + provider.username + "' and tempPW='" + tempPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        provider.salt = sl;
                        provider.npi = idDR[0].ToString();

                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return provider;
        }


        public int updateProvider(Provider provider, int check)
        {
            string id = null;
            string pw = null;
            string updateQuery = null;
            if (check != 2)
            {
                Provider ad = getProviderIDTEMP(provider);
                id = ad.npi;
                pw = security.GenerateHash(provider.password, ad.salt + rand);
                String temp = security.GenerateHash(provider.tempPassword, ad.salt + rand); ;
                updateQuery = "UPDATE sbirt_provider SET hashPW='" + pw + "' , status ='1'where tempPW='" + temp + "' ";
            }
            else
            {
                id = provider.npi;
                pw = provider.hashPW;
                updateQuery = "UPDATE sbirt_clinic_provider SET tempPW='" + pw + "' where NPI='" + id + "'";

            }
            connection.Close();
            connection.Open();
            int result = 0;
            try
            {
                MySqlCommand cmd = new MySqlCommand(updateQuery, connection);
                result = cmd.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public List<Provider> getAllProvider(string ID, string Type)
        {
            List<Provider> Provider = new List<Provider>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery1 = "Select NPI, ProviderName from sbirt.sbirt_provider where NPI IN (select provider_id from sbirt.sbirt_clinic_provider_mapping where clinic_id = (select Clinic_ID from sbirt.sbirt_clinic_admin where Admin_ID = (select Clinic_Admin_ID from sbirt.sbirt_staff_admin where Staff_ID =" + ID + ")));";
                String selectQuery2 = "Select NPI, ProviderName from sbirt.sbirt_provider where NPI IN (select provider_id from sbirt.sbirt_clinic_provider_mapping where clinic_id = (select Clinic_Number from sbirt.sbirt_clinic where Clinic_Name = (select Clinic from sbirt.sbirt_demographics_patients where Patient_ID =" + ID + ")));";
                String selectQuery = null;
                if (Type == "1")
                { selectQuery = selectQuery1; }
                else
                { selectQuery = selectQuery2; };
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Provider pro = new Provider();
                    pro.npi = dr[0].ToString();
                    pro.providerName = dr[1].ToString();
                    Provider.Add(pro);
                }
            }
            finally
            {
                connection.Close();
            }
            return Provider;
        }

        public string GetPatientID(string ssn, string dob)
        {
            string PatientID = null;
            string selectQuery = "SELECT Patient_ID FROM sbirt.sbirt_demographics_patients WHERE DateofBirth ='"+dob+"' and SSN = '"+ssn+"';";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    PatientID = idDR[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return PatientID;
        }

        public void insertPatientProv(string ProviderNm, string PatientID)
        {
            string ProviderID = null;
            string selectQuery = "Select NPI from sbirt.sbirt_provider where ProviderName='"+ProviderNm+"'";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    ProviderID = idDR[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                String UpdateQuery = "Update sbirt.sbirt_provider_patient Set Status = 0 where Status=1 and patient_id='" + PatientID + "';";
                MySqlCommand cmd2 = new MySqlCommand(UpdateQuery, connection);
                int result1 = cmd2.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            connection.Open();
            try
            {
                String inserQuery = "INSERT INTO sbirt_provider_patient(providerNPI, patient_id, Status) VALUES ('" + ProviderID + "','" + PatientID + "','1');";
                MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                int result = cmd.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            } 
        }

        public string getProvider(string pid)
        {
            string Provider = null;
            string selectQuery = "SELECT ProviderName FROM sbirt.sbirt_provider WHERE NPI = (Select providerNPI from sbirt.sbirt_provider_patient where Status = 1 and patient_id = '" + pid + "');";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    Provider = idDR[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return Provider;
        }
    }
}