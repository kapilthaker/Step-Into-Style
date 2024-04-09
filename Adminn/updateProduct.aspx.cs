using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminn_updateProduct : System.Web.UI.Page
{
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM [tbl_category]";
        DataTable dt = shopping.utils.service.select(sql);
        if(dt.Rows.Count > 0)
        {
            categoryList.DataSource = dt;
            categoryList.DataValueField = "c_id";
            categoryList.DataTextField = "c_name";
            categoryList.DataBind();
        }

        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string oldData = "SELECT * FROM [tbl_product] WHERE [p_id] = " + id;
            DataTable dataTable = shopping.utils.service.select(oldData);

            if (dataTable.Rows.Count > 0)
            {
                productName.Text = dataTable.Rows[0]["p_name"].ToString();
                productPrice.Text = dataTable.Rows[0]["p_price"].ToString();
                productSize.Text = dataTable.Rows[0]["p_size"].ToString();
                productDescription.Text = dataTable.Rows[0]["p_description"].ToString();
                CurrentProductImage.Src =  dataTable.Rows[0]["p_image"].ToString();

                if (categoryList.Items.FindByValue(dataTable.Rows[0]["c_id"].ToString()) != null){
                    categoryList.Items.FindByValue(dataTable.Rows[0]["c_id"].ToString()).Selected = true;
                }
            }
        }
    }

    protected void updateProductBtn_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"]);
        string OldData = "SELECT * FROM [tbl_product] WHERE [p_id] = " + id;
        DataTable dt = shopping.utils.service.select(OldData);
        string ImageName = dt.Rows[0]["p_image"].ToString();

        string path = Server.MapPath("~/Image/");
        if (imageFile.HasFile)
        {
            string imageName = Path.GetFileName(imageFile.FileName);
            string extension = Path.GetExtension(imageName);
            //string filePath = Server.MapPath("~/Image/" + imageName);  
            HttpPostedFile postedFile = imageFile.PostedFile;
            int length = postedFile.ContentLength;

            if(extension.ToLower() == ".jpg" ||  extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
            {
                if(dt.Rows.Count > 0)
                {
                    string fileName = dt.Rows[0]["p_image"].ToString();
                    string filePath = Server.MapPath("~/Image/" + fileName);

                    FileInfo fileInfo = new FileInfo(filePath);
                    if(fileInfo.Exists)
                    {
                        fileInfo.Delete();
                    }
                }
                imageFile.SaveAs(path + imageName);
                ImageName = imageName;
            }
                
        }
        if(Active.Checked ==  true)
        {
            s = "1";
        }
        else
        {
            s = "0";
        }
        string Sql = "UPDATE [tbl_product] SET [c_id] = '"+categoryList.SelectedValue+"', [p_name] = '"+productName.Text+"', [p_price] = '" + productPrice.Text +"', [p_size] = '"+productSize.Text+"', [p_description] = '"+productDescription.Text+"', [p_image] = '"+ImageName+"', [p_status] = '"+s+"' WHERE [p_id] =  " +id;
        int effectedRows = shopping.utils.service.execute(Sql);
        if(effectedRows > 0)
        {
            Response.Redirect("Products.aspx");
        }


    }

    protected void CancelClick(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx");
    }
}