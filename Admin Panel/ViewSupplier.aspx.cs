using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_ViewSupplier : System.Web.UI.Page
{
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }

    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}