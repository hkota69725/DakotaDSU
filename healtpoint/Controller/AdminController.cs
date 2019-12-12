using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using healtpoint.Models;
using healtpoint.Common;
using MySql.Data.MySqlClient;
namespace healtpoint.Controller
{
    public class AdminController
    {
        static MySqlConnection connection = CommonDB.con();
        Security security = new Security();
        HospitalController hospitalController = new HospitalController();
        String rand = "o6v2W2jR";
        public object INNER_LOOP { get; private set; }

        public void addAdmin(Admin admin)
        {
            connection.Open();
            try
            {
                String insertQuery = "INSERT INTO sbirt_clinic_admin (Admin_UserName, salt,Clinic_ID, adminEmail, tempPW) VALUES('" +
                admin.adminUsername + "','" + admin.salt + "','" + admin.clinicID + "','" + admin.adminEmail + "','" + admin.tempPasword + "')";
                MySqlCommand cmd = new MySqlCommand(insertQuery, connection);
                int result = cmd.ExecuteNonQuery();
                
            }
            finally
            {
                connection.Close();
            }
            
        }

        public Admin getAdminID(Admin admin)
        {
            List<Admin> adminIdList = new List<Admin>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_clinic_admin  where Admin_UserName='" + admin.adminUsername + "'";
                // String selectQuery = "select salt from sbirt_clinic_admin  where Admin_ID='15'";

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
                    string hashPW = security.GenerateHash(admin.adminPassword, sl + rand);
                    string idQuery = "select Admin_ID,Clinic_ID from sbirt_clinic_admin where Admin_Username='" + admin.adminUsername + "' and hashPW='" + hashPW + "'";
                    //  string idQuery = "select Admin_ID,Clinic_ID from sbirt_clinic_admin where Admin_ID='15'";

                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        admin.salt = sl;
                        admin.adminId = idDR[0].ToString();
                        admin.clinicID = idDR[1].ToString();

                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
                              
            }
            return admin;
        }

        public Admin getAdminIDTEMP(Admin admin)
        {
            List<Admin> adminIdList = new List<Admin>();
            List<String> saltList = new List<string>();
            connection.Open();
            try
            {
                MySqlDataReader dr;
                String selectQuery = "select salt from sbirt_clinic_admin  where Admin_UserName='" + admin.adminUsername + "'";
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
                    string tempPW = security.GenerateHash(admin.tempPasword, sl + rand);
                    string idQuery = "select * from sbirt_clinic_admin where Admin_Username='" + admin.adminUsername + "' and tempPW='" + tempPW + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(idQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    if (idDR.Read())
                    {
                        admin.salt = sl;
                        admin.adminId = idDR[0].ToString();

                        break;
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return admin;
        }


        public Admin getAdminDetail(String credential, int type)
        {
            Admin adminDetail = new Admin();
            string selectQuery;
            connection.Open();
            try
            {
                if (type == 1)
                {
                    selectQuery = "select Admin_ID,adminEmail, salt,Admin_UserName from sbirt_clinic_admin where adminEmail='" + credential + "'";

                }
                else
                {
                    selectQuery = "select Admin_ID,adminEmail, salt,Admin_UserName from sbirt_clinic_admin where Admin_UserName='" + credential + "'";
                }
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    adminDetail.adminId = idDR[0].ToString();
                    adminDetail.adminEmail = idDR[1].ToString();
                    adminDetail.salt = idDR[2].ToString();
                    adminDetail.adminUsername = idDR[3].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return adminDetail;
        }

        public List<Admin> getClinicAllAdminID(String cid)
        {

            List<Admin> adminD = new List<Admin>();
            string clinicID = hospitalController.getClinicID(cid);
            string selectQuery = "select Admin_ID from sbirt_clinic_admin where Clinic_ID='" + cid + "'";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                while (idDR.Read())
                {
                    Admin ad = new Admin();
                    ad.adminId = idDR[0].ToString();
                    adminD.Add(ad);

                }
            }
            finally
            {
                connection.Close();
            }
            return adminD;
        }

        public bool checkUsername(Admin admin)
        {

            bool check = false;
            string selectQuery = "select Admin_ID from sbirt_clinic_admin where Admin_UserName='" + admin.adminUsername + "' and Clinic_ID='" + admin.clinicID + "'";
            connection.Open();
            try
            {
                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    check = true;
                }
            }
            finally { 
                connection.Close();
            }
            
            return check;
        }

        public Admin getSaltAndUsername(string adminID)
        {
            Admin adminDetail = new Admin();
            // string salt = null;
            connection.Open();
            try
            {
                string selectQuery = "select salt,Admin_UserName from sbirt_clinic_admin where Admin_ID='" + adminID + "'";

                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                idDR = cmd1.ExecuteReader();
                if (idDR.Read())
                {
                    adminDetail.salt = idDR[0].ToString();
                    adminDetail.adminUsername = idDR[1].ToString();
                }
            }
            finally
            {
                connection.Close();
            }
            return adminDetail;
        }

        public string getAllAdmin()
        {
            
            string tableData = null;
            List<HospitalDetails> allHospital = new List<HospitalDetails>();
            allHospital = hospitalController.getListOfHospital();
            foreach (HospitalDetails hd in allHospital)
            {
                connection.Open();
                try
                {
                    string selectQuery = "select Admin_UserName,adminEmail,Admin_ID, Status from sbirt_clinic_admin where Clinic_ID='" + hd.clinicNum + "'";
                    MySqlDataReader idDR;
                    MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                    idDR = cmd1.ExecuteReader();
                    while (idDR.Read())
                    {
                        tableData += "<tr><td>" + idDR[0].ToString() + "</td><td>" + idDR[1].ToString() + "</td><td>"
                            + hd.nameOfClinic + "</td>";
                        if (idDR[3].ToString().Equals("1"))
                        {
                            tableData += "<td>Active</td>";
                            tableData += "<td><input type='button' onclick=\"showDiv('" + idDR[0].ToString() + "','" + idDR[1].ToString() + "','" + hd.nameOfClinic + "','" + idDR[2].ToString() + "','1')\" value='Update'" + "/></td>";

                        }
                        else
                        {
                            tableData += "<td>Inactive</td>";
                            tableData += "<td><input type='button' onclick=\"showDiv('" + idDR[0].ToString() + "','" + idDR[1].ToString() + "','" + hd.nameOfClinic + "','" + idDR[2].ToString() + "','0')\" value='Update'" + "/></td>";

                        }
                        tableData += "<td><input type='button' onclick=\"showDiv1('" + idDR[0].ToString() + "')\" value='Delete'" + "/></td></tr>";
                        // tableData += "<td><input type='button' onclick=\"updateData('" + idDR[0].ToString()+"','"+ idDR[1].ToString()+"','"+hd.nameOfClinic+"','"+idDR[2].ToString()+ "')\" value='Update'"+"/></td></tr>";

                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            return tableData;
        }
        public void deleteAdmin(String name)
        {
            connection.Open();
            try
            {
                string selectQuery = "delete from sbirt_clinic_admin Admin_UserName='" + name + "'";

                MySqlDataReader idDR;
                MySqlCommand cmd1 = new MySqlCommand(selectQuery, connection);
                int result =  cmd1.ExecuteNonQuery();

            }
            finally
            {
                connection.Close();
            }
        }

        public int updateAdmin(Admin admin, int check)
        {
            String id = null;
            int result = 0;
            string pw, temp;
            string updateQuery = null;
            if (check == 0)
            {
                Admin ad = getAdminIDTEMP(admin);
                id = ad.adminId;
                pw = security.GenerateHash(admin.adminPassword, ad.salt + rand);
                temp = security.GenerateHash(admin.tempPasword, ad.salt + rand);
                updateQuery = "UPDATE sbirt_clinic_admin SET hashPW='" + pw + "' ,status='1' where tempPW='" + temp + "'";
            }

            else if (check == 3)
            {
                updateQuery = "UPDATE sbirt_clinic_admin SET status='"
                              + admin.status
                              + "' where Admin_ID='"
                              + admin.adminId
                              + "'";

            }

            else if (check == 4)
            {
                updateQuery = "UPDATE sbirt_clinic_admin SET Admin_UserName=' " + admin.adminUsername + "',adminEmail='" + admin.adminEmail + "', status='" + admin.status + "' where Admin_ID='" + admin.adminId + "'";

            }
            else if (check == 2)
            {
                id = admin.adminId;
                pw = admin.hashPW;
                updateQuery = "UPDATE sbirt_clinic_admin SET tempPW='" + pw + "' where Admin_ID='" + id + "'";

            }
            connection.Open();
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

        public string GetStaff(string credential, string type)
        {
            String tableData = null;

            MySqlDataReader dr;
            String selectQuery = null;
            if (type.Equals("1"))
            {
                connection.Open();
                try
                {
                    selectQuery = "Select firstName,Staff_EmailAdd,status,Staff_ID  from sbirt.sbirt_staff_admin where Clinic_Admin_ID = '" + credential + "';";

                    MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        tableData += "<tr><td>" + dr[0].ToString() + "</td>";
                        tableData += "<td>" + dr[1].ToString() + " </td>";
                        if (dr[2].ToString().Equals("1"))
                        {
                            tableData += "<td>Active</td>";
                            tableData += "<td><input type='button' onclick=\"showDiv('" + dr[0].ToString() + "','" + dr[1].ToString() + "','" + dr[2].ToString() + "','" + dr[3].ToString() + "')\" value='Update'" + "/></td></tr>";

                        }
                        else
                        {
                            tableData += "<td>Inactive</td>";
                            tableData += "<td><input type='button' onclick=\"showDiv('" + dr[0].ToString() + "','" + dr[1].ToString() + "','" + dr[2].ToString() + "','" + dr[3].ToString() + "')\" value='Update'" + "/></td></tr>";

                        }
                    }
                }
                finally
                {
                    connection.Close();
                }
            }
            else if (type.Equals("2"))
            {

                List<Admin> adminIDList = new List<Admin>();
                adminIDList = getClinicAllAdminID(credential);
               
                foreach (Admin ad in adminIDList)
                {
                    connection.Open();
                    try
                    {
                        selectQuery = "Select firstName,Staff_EmailAdd,status,Staff_ID  from sbirt.sbirt_staff_admin where Clinic_Admin_ID = '" + ad.adminId + "';";

                        MySqlCommand cmd = new MySqlCommand(selectQuery, connection);
                        dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            tableData += "<tr><td>" + dr[0].ToString() + "</td>";
                            tableData += "<td>" + dr[1].ToString() + " </td>";
                            if (dr[2].ToString().Equals("1"))
                            {
                                tableData += "<td>Active</td>";
                                tableData += "<td><input type='button' onclick=\"showDiv('" + dr[0].ToString() + "','" + dr[1].ToString() + "','" + dr[2].ToString() + "','" + dr[3].ToString() + "')\" value='Update'" + "/></td></tr>";

                            }
                            else
                            {
                                tableData += "<td>Inactive</td>";
                                tableData += "<td><input type='button' onclick=\"showDiv('" + dr[0].ToString() + "','" + dr[1].ToString() + "','" + dr[2].ToString() + "','" + dr[3].ToString() + "')\" value='Update'" + "/></td></tr>";

                            }
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

    }
}

