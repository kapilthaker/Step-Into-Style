using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_Products : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection sc = new SqlConnection(cs))
        {
            sc.Open();
            SqlDataAdapter da = new SqlDataAdapter("select tbl_product.p_id, tbl_product.p_name, tbl_product.p_price, tbl_product.p_size, tbl_product.p_description, tbl_product.p_status, tbl_product.p_image, tbl_category.c_name as CategoryName from tbl_product inner join tbl_category  on tbl_category.c_id = tbl_product.c_id", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }

  

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sql = "DELETE FROM tbl_product where p_id = " + id;
            int rows = shopping.utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("Products.aspx");
            }
        }
    }
}