using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel_EditAdminProfile : System.Web.UI.Page
{
    DBManager db = new DBManager();
    FileManager fm = new FileManager();
    string name = "", pic = "";
    string id,pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }
        string AdminName = Request.QueryString["Name"];
        //id = Request.QueryString["Id"];
        pass = Request.QueryString["Password"];
        nmeTxt.Text = AdminName;
        passTxt.Text = pass;
        confrmTxt.Text = pass;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}