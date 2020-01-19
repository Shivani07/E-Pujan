using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
public partial class Admin_Panel_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string adminId=WebConfigurationManager.AppSettings["AdminLoginId"];
        string adminPassword=WebConfigurationManager.AppSettings["AdminPassword"];
        if (TextBox1.Text == adminId && TextBox2.Text == adminPassword)
        {
            Session["admin"]="admin";
            Response.Redirect("ViewProduct.aspx");
            
        }
        else
        {
            Response.Write("<script language='Javascript'>alert('Incorrect Login / Password!!!')</script>");
        }

    }

}