using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_UserRegistration : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

        
    


    protected void Button1_Click(object sender, EventArgs e)
    {
    try
    {
        sc = new SqlConnection(cs);
        String sql = "INSERT INTO tbl_user(u_name, u_email, u_password, u_pno, u_address) VALUES('" + txtUsername.Text + "', '" + txtEmail.Text + "', '" + txtPassword.Text + "', '" + txtPhone.Text + "', '" + txtAddress.Text + "')";
        int rows = shopping.utils.service.execute(sql);
        if (rows > 0)
        {

            Response.Redirect("authentication.aspx");

        }
        else
        {
            Response.Redirect("Invalid Credentials");
        }
    }
    catch
    {
        Response.Write("Error");
    }
}
}