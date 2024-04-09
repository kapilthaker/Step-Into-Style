using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendMsg_Click(object sender, EventArgs e)
    {
        string sql = "INSERT INTO tbl_contact (c_name, c_email,  c_message) VALUES ('"+name.Text+"', '"+email.Text+"', '"+message.Text+"')";
        int rows = shopping.utils.service.execute(sql);
        
    }
}