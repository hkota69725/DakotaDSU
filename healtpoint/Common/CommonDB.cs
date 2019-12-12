using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;
namespace healtpoint.Common
{
    public static class CommonDB 
    {
        public  static MySqlConnection con() 

        {
            //String connectionString = null;
            MySqlConnection con = null;
            try
            {
               //String connectionString = @"Database=sbirt;Data Source=127.0.0.1;User Id=sbirt_dbms;convert zero datetime=True;password=OuVzHQgKChNPoSxI";
               String connectionString = @"Database=sbirt;Data Source=localhost;User Id=root;convert zero datetime=True;";
                //String connectionString = @"server=localhost;user id=root;persistsecurityinfo=True;database=sibrt";
                //String connectionString = @"Database=sbirt;Data Source=127.0.0.1;User Id=root;convert zero datetime=True";
                // con = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = sibrt; User ID = DESKTOP-3TG78TV\SEEMA;");
                con = new MySqlConnection(connectionString);
                if(con !=null)
                Console.WriteLine("connected");
                
            }
            catch(MySqlException ex) {
                Console.WriteLine(ex.Message);

            }
            return con;
        }
    }
}