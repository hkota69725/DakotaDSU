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
    public class StaffController
    {
        String rand = "b26fYr5Q";
        static MySqlConnection connection = CommonDB.con();
        AdminController adminController = new AdminController();
        static Security security = new Security();
        public int insertStaffDetails(Staff staff)
        {
            int result = 0;
            connection.Open();
            try
            {
                String inserQuery = "INSERT INTO sbirt_staff_admin(Clinic_Admin_ID,Staff_UserName,salt,Staff_EmailAdd,phoneNum, tempPW, status,firstName,lastName) VALUES('" +
                staff.clinicAdminID + "','" + staff.username + "','" + staff.salt + "','" + staff.email + "','" + staff.phoneNum + "','" + staff.tempPassword + "','1','"+staff.firstName +"','"+staff.lastName+"')";
                MySqlCommand cmd = new MySqlCommand(inserQuery, connection);
                result = cmd.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public Staff verifyStaff(Staff staff)
        {
            List<Staff> staffIdList = new List<Staff>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_staff_admin  where Staff_UserName='" + staff.username + "'";
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
                    string hashPW = security.GenerateHash(staff.password, sl + rand);
                    string idQuery = "select Staff_ID,Staff_UserName,Clinic_Admin_ID status from sbirt_staff_admin where Staff_UserName='" + staff.username + "' and hashPW='" + hashPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        staff.salt = sl;
                        staff.staff_id = idDR[0].ToString();
                        staff.username = idDR[1].ToString();
                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
                
            }
            return staff;
        }

        public Staff getStaffIDTEMP(Staff staff)
        {
            List<Staff> adminIdList = new List<Staff>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_staff_admin  where Staff_UserName='" + staff.username + "'";
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
                    string tempPW = security.GenerateHash(staff.tempPassword, sl + rand);
                    string idQuery = "select Staff_ID from sbirt_staff_admin where Staff_UserName='" + staff.username + "' and tempPW='" + tempPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        staff.salt = sl;
                        staff.staff_id = idDR[0].ToString();

                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return staff;
        }
        public Staff getStaffDetails(String credential, int type)
        {
            Staff staffDeatils = new Staff();
            connection.Open();
            try
            {
                string selectQuery;
                if (type == 1)
                {
                    selectQuery = "select Staff_ID,Staff_EmailAdd, salt,Staff_UserName from sbirt_staff_admin where Staff_EmailAdd='" + credential + "'";

                }
                else
                {
                    selectQuery = "select Staff_ID,Staff_EmailAdd, salt, Staff_UserName from sbirt_staff_admin where Staff_UserName='" + credential + "'";
                }
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    staffDeatils.staff_id = idDR[0].ToString();
                    staffDeatils.email = idDR[1].ToString();
                    staffDeatils.salt = idDR[2].ToString();
                    staffDeatils.username = idDR[3].ToString();

                }
            }
            finally
            {
                connection.Close();
            }
            return staffDeatils;
        }

        public bool checkUsername(Staff staff)
        {
            bool check = false;
            List<Admin> allAdminID = new List<Admin>();
            allAdminID = adminController.getClinicAllAdminID(staff.clinicNumber);
            foreach (Admin ad in allAdminID)
            {
                string id = ad.adminId;
                string selectQuery = "select Staff_ID from sbirt_staff_admin where Staff_UserName='" + staff.username + "' and Clinic_Admin_ID='" + id + "'";
                connection.Open();
                try
                {
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        check = true;
                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return check;
        }


        public int updateStaff(Staff staff, int check)
        {
            string id = null;
            string pw = null;
            string updateQuery = null;
            if (check == 0)
            {
                Staff ad = getStaffIDTEMP(staff);
                id = ad.staff_id;
                pw = security.GenerateHash(staff.password, ad.salt + rand);
                String temp = security.GenerateHash(staff.tempPassword, ad.salt + rand); ;
                updateQuery = "UPDATE sbirt_staff_admin SET hashPW='" + pw + "' , status='1' where tempPW='" + temp + "'";
            }

            else if (check == 4)
            {

                updateQuery = "UPDATE sbirt_staff_admin SET Staff_EmailAdd='" + staff.email + "',firstName='" + staff.firstName +
                "',status='" + staff.status + "' where Staff_ID='" + staff.staff_id + "'";
            }
            else if (check == 2)
            {
                id = staff.staff_id;
                pw = staff.hashPW;
                updateQuery = "UPDATE sbirt_staff_admin SET tempPW='" + pw + "' where Staff_ID='" + id + "'";

            }

            else if (check == 3)
            {
                updateQuery = "UPDATE sbirt_staff_admin SET status='"
                           + staff.status
                           + "' where Staff_ID='"
                           + staff.staff_id
                           + "'";

            }
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


        public Staff getSaltAndUsername(string staffID)
        {
            Staff staffDetail = new Staff();
            string salt = null;
            connection.Open();
            try
            {
                string selectQuery = "select salt, Staff_UserName from sbirt_staff_admin  where Staff_ID='" + staffID + "'";
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    staffDetail.salt = idDR[0].ToString();
                    staffDetail.username = idDR[1].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return staffDetail;
        }
    }
}