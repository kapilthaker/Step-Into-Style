using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


public partial class Adminn_Users : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT u_name, u_email, u_pno, u_address from tbl_user", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }
}