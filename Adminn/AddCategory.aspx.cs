using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Adminn_AddCategory : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addCategoryBtn_Click(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        if (Active.Checked == true)
        {
            s = "1";
        }
        else
        {
            s = "0";
        }
        String q = "insert into tbl_category values('" + name.Text + "','" + s + "')";
        
        SqlCommand cmd = new SqlCommand(q, sc);
        int rows = cmd.ExecuteNonQuery();
        if (rows > 0)
        {
            Response.Redirect("AdminCategory.aspx");
        }
        else
        {
            Response.Redirect("AddCategory.aspx");
        }
    }
}