using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using healtpoint.Common;
using MySql.Data.MySqlClient;
using healtpoint.Models;
namespace healtpoint.Controller
{
    
    public class HospitalController
    {
        MySqlConnection connection = CommonDB.con();

        public void insertClinic(HospitalDetails hosptial) {
            connection.Open();
            try
            {
                string insertQuery = "insert into sbirt_clinic (Clinic_Number, Clinic_Name) VALUES ('" + hosptial.clinicNum + "','" + hosptial.nameOfClinic + "')";
                MySqlCommand cmd = new MySqlCommand(insertQuery, connection);
                int result = cmd.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            
        }

        public List<HospitalDetails> getListOfHospital()
        {
            List<HospitalDetails> hospitalList = new List<HospitalDetails>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "Select Clinic_Number,Clinic_Name from sbirt_clinic";
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

        public string getClinicName(string staffID) {
            String clinicName=null;
            connection.Open();
            try
            {
                String selectQuery = "select Clinic_Name from sbirt_clinic where Clinic_Number=(select Clinic_ID from sbirt_clinic_admin where Admin_ID=( select Clinic_Admin_ID from sbirt_staff_admin where Staff_ID='" + staffID + "'))";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    clinicName = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return clinicName;


        }

        public string getClinicID(string adminID) {
            string clinicID=null;
            connection.Open();
            try
            {
                string selectQuery = "Select Clinic_ID from sbirt_clinic_admin where Admin_ID='" + adminID + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    clinicID = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return clinicID;
        }

        public string getClinicNameForProvider(string cid)
        {
            String clinicName = null;
            connection.Open();
            try
            {
                String selectQuery = "select Clinic_Name from sbirt_clinic where Clinic_Number='" + cid + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    clinicName = dr[0].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return clinicName;


        }
        public bool checkClinicNum(string clinicNum)
        {
            bool check = false;
            connection.Open();
            try
            {
                string selectQuery = "select Clinic_Name from sbirt_clinic where Clinic_Number='" + clinicNum + "'";
                MySqlDataReader dr;
                MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    check = true;
                }
            }
            finally
            {
                connection.Close();
            }
            return check;
        }
    }
}