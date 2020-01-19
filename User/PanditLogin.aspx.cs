using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PanditLogin : System.Web.UI.Page
{
    DBManager db1 = new DBManager();
    FileManager fm1 = new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        try
        {
            db1.CommandText = "select Password from Tbl_pandit where Pandit_name='" + UserTxt.Text + "'";
            object ob1 = db1.GetSingleValue();
            string s = ob1.ToString();
            if (s == PassTxt.Text)
            {
                db1.CommandText = "select Pandit_id from Tbl_pandit where Pandit_name='" + UserTxt.Text + "'";
                object ob2 = db1.GetSingleValue();
                Response.Write("login Successfull");
                Response.Redirect("PanditEditProfile.aspx?Name=" + UserTxt.Text + "&Password=" + PassTxt.Text + "&Id=" + ob2.ToString(), false);
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Wrong UserName or Password!!!";
            }
        }
        catch (Exception h)
        {
            Label1.Visible = true;
            Label1.Text = "Wrong UserName or Password!!!";
        }
    }
    protected void NewLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}