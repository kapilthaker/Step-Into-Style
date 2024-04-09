using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM tbl_contact";
        DataTable dt = shopping.utils.service.select(sql);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string del = "DELETE FROM tbl_contact WHERE c_id = " + id;
            int rows = shopping.utils.service.execute(del);
            if (rows > 0)
            {
                Response.Redirect("Message.aspx");
            }
        }
    }
}