using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for service
/// </summary>

namespace shopping.utils
{
    public class service
    {
        static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\shopping\App_Data\dbshopping.mdf;Integrated Security=True");
        public static int execute(string sql)
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int rows = cmd.ExecuteNonQuery();
            con.Close();
            return rows;
        }

        public static DataTable select(string sql)
        {
            con.Close();
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();
            return dt;
        }

    }
}