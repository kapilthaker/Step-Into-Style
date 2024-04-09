using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_Home : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    protected void Page_Load(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT TOP 4 * FROM tbl_product", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Session["s_id"] = e.CommandArgument.ToString();
        Response.Redirect("Product-Detail.aspx");
    }
}