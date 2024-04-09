using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Diagnostics;

public partial class Adminn_updateCategory : System.Web.UI.Page
{
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["c_id"] != null)
            {
                int id = int.Parse(Request.QueryString["c_id"]);
                string sel = "SELECT * FROM tbl_category WHERE c_id =" + id;
                DataTable dt = shopping.utils.service.select(sel);
                if (dt.Rows.Count > 0)
                {
                    name.Text = dt.Rows[0]["c_name"].ToString();
                }
            }
        }

    }

    protected void updateCategoryBtn_Click(object sender, EventArgs e)
    {

            int id = int.Parse(Request.QueryString["id"]);
            if (Active.Checked == true)
            {
                s = "1";
            }
            else
            {
                s = "0";
            }
            Debug.WriteLine(name.Text);
            string sql = "UPDATE [tbl_category] SET [c_name] = '"+name.Text+"', [c_status] = '"+s+"' WHERE [c_id] = " +id;
            int rows = shopping.utils.service.execute(sql);
            if (rows > 0)
            {
                Response.Redirect("AdminCategory.aspx");
            }
            else
            {
                Response.Write("error");
            }        
    }
}