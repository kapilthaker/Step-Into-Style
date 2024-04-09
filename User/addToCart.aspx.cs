using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_addToCart : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        int productId = Convert.ToInt32(Request.QueryString["p_id"]);
        int userId = Convert.ToInt32(Session["userId"]);

        DataTable product = shopping.utils.service.select("SELECT * FROM tbl_product WHERE p_id= " + productId + "");
        DataTable dt = shopping.utils.service.select("SELECT * FROM tbl_order WHERE u_id = " + userId + " AND p_id = " + productId + "");


        if (dt.Rows.Count > 0)
        {
            int totalQuantity = Convert.ToInt32(dt.Rows[0]["p_qty"]) + 1;
            int grandtotal = Convert.ToInt32(product.Rows[0]["p_price"]) * totalQuantity;
            String sql = "UPDATE tbl_order SET p_qty = " + totalQuantity + ", o_total = " + grandtotal + " WHERE u_id = " + userId + " AND p_id = " + productId + " ";
            int rows = shopping.utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("Cart.aspx");
            }
        }
        else
        {
            int price = Convert.ToInt32(product.Rows[0]["p_price"]);
            string status = "InCart";
            int totalQty = 1;

            string sqlInsert = "INSERT INTO tbl_order(u_id,  p_id, p_qty, o_amount, o_total, status) VALUES (" + userId + ", " + productId + ", " + totalQty + ", " + price + ", " + price + ",  '" + status + "')";
            int row = shopping.utils.service.execute(sqlInsert);
            if (row > 0)
            {
                Response.Redirect("Cart.aspx");
            }
        }
    }
}