using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_authentication : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String u;
    String p;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginClick(object sender, EventArgs e)
    {
        u = txtEmail.Text;
        p = txtPassword.Text;
        try
        {
            sc = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("select u_id,u_name, u_email,u_password from tbl_user where u_email='" + txtEmail.Text + "'and u_password='" + txtPassword.Text + "' ", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                int userId = Convert.ToInt32(dt.Rows[0]["u_id"]);
                String userName = dt.Rows[0]["u_name"].ToString();
                Session["user"] = "true";
                Session["userId"] = userId;
                Session["userEmail"] = txtEmail.Text;
                Session["userName"] = userName;
                Response.Redirect("Home.aspx");

            }
            else
            {
                Response.Redirect("authentication.aspx");
            }
        }
        catch (Exception ep)
        {
            Response.Write("sorry");
        }
    }
}