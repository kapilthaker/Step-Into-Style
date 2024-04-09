using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_AdminLogin : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String u;
    String p;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        u = txtuser.Text;
        p = txtpass.Text;
        try
        {
            sc = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("select a_username,a_password from tbl_admin where a_username='" + txtuser.Text + "'and a_password='" + txtpass.Text + "' ", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String adminName = dt.Rows[0]["a_username"].ToString();
                Session["admin"] = "true";
                Session["adminName"] = adminName;
                Response.Redirect("AdminDash.aspx");

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        catch (Exception ep)
        {
            Response.Write("sorry");
        }
    }
}