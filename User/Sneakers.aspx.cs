using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_Sneakers : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    protected void Page_Load(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tbl_product WHERE c_id = 2", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

 

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Session["s_id"] = e.CommandArgument.ToString();
        Response.Redirect("Product-Detail.aspx");
    }
}