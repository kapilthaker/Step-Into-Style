using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_Flip_Flops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM tbl_product WHERE c_id = 6";
        DataTable dt = shopping.utils.service.select(sql);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["s_id"] = e.CommandArgument.ToString();
        Response.Redirect("Product-Detail.aspx");
    }
}