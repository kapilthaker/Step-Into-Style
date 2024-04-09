using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_Order : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        SqlDataAdapter da = new SqlDataAdapter("select tbl_order.o_id, tbl_user.u_name as UserName, tbl_product.p_name as ProductName, tbl_order.p_qty, tbl_order.status, tbl_order.o_total from tbl_order inner join tbl_user on tbl_user.u_id = tbl_order.u_id inner join tbl_product on tbl_product.p_id = tbl_order.p_id", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void deleteOrder(object sender, EventArgs e)
    {
        
        string sql = "DELETE from tbl_order WHERE o_id = o_id";
        int rows = shopping.utils.service.execute(sql);

        if(rows>0)
        {
            Response.Redirect("Order.aspx");
        }

    }
}