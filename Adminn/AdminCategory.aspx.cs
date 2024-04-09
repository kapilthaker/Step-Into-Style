using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_AdminCategory : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection sc = new SqlConnection(cs))
        {
            sc.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_category where c_status='true'", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }



    

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "DeleteCategory")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string sql = "DELETE FROM tbl_category WHERE c_id =" + id;
            int rows = shopping.utils.service.execute(sql);
            if(rows > 0)
            {
                Response.Redirect("AdminCategory.aspx");
            }
        }
    }
}