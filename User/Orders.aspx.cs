using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {if (Session["user"] != "true")
            Response.Redirect("authentication.aspx");
        int userId = Convert.ToInt32(Session["userId"]);
        DataTable dt = shopping.utils.service.select("select tbl_product.p_name, tbl_product.p_image, tbl_product.p_price, tbl_order.p_qty, tbl_order.o_total, tbl_order.status FROM tbl_order INNER JOIN tbl_product ON  tbl_order.p_id = tbl_product.p_id WHERE tbl_order.u_id = " + userId + " AND tbl_order.status != 'InCart'");
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}