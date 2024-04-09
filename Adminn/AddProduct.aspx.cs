using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;


public partial class Adminn_AddProduct : System.Web.UI.Page
{
    String cs = WebConfigurationManager.ConnectionStrings["hd"].ConnectionString;
    SqlConnection sc;
    String img;
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sc = new SqlConnection(cs);
            sc.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT c_id, c_name from tbl_category", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            categoryList.DataSource = dt;
            categoryList.DataValueField = "c_id";
            categoryList.DataTextField = "c_name";
            categoryList.DataBind();
        }
    
    }

    protected void addProductBtn_Click(object sender, EventArgs e)
    {
        sc = new SqlConnection(cs);
        sc.Open();
        if (imageFile.HasFile)
        {
            string fileName = Path.GetFileName(imageFile.FileName);
            string FilePath = Server.MapPath("~/Image/" + fileName);
            HttpPostedFile postedFile = imageFile.PostedFile;
             imageFile.SaveAs(FilePath);
            img = "~/Image/" + fileName.ToString(); 
        }
        if (Active.Checked == true)
        {
            s = "1";
        }
        else
        {
            s = "0";
        }

        string sql = "INSERT INTO tbl_product(c_id, p_name, p_price, p_size, p_description, p_image, p_status) VALUES ('"+categoryList.SelectedValue+"', '"+productName.Text+"', '"+productPrice.Text+"', '"+productSize.Text+"', '"+productDescription.Text+"', '"+img+"', '"+ s +"')";
        SqlCommand cmd = new SqlCommand(sql, sc);
        int rows = cmd.ExecuteNonQuery();
        if(rows > 0)
        {
            Response.Redirect("Products.aspx");
        }
        else
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}