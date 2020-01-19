using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Panel_Category : System.Web.UI.Page
{

    DBManager db = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        db.CommandText = "insert into Tbl_Category(CategName) values ('"+t1.Text+"')";
        if (db.ExecuteInsertUpdateOrDelete() == true)
        {
            Response.Write("<script language='Javascript'>alert('Successfully Inserted..')</script>");
            RstBtn_Click(sender, e);
        }
        else
        {
            Response.Write("<script language='Javascript'>alert('Not Inserted!!!')</script>");
        }
    }
    
    protected void RstBtn_Click(object sender, EventArgs e)
    {
        t1.Text = string.Empty;
       
    }
}