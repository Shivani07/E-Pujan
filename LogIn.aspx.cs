using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    DBManager db1 = new DBManager();
    FileManager fm1 = new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {
         hid.Value=Request.QueryString["pid"];
        if (Session["userid"] != null)
            Response.Redirect("User/MyCart.aspx");
    }
        protected void Button1_Click(object sender, EventArgs e)
        {
        db1.CommandText = "select Password from Tbl_Login where User_id='" + TxtID.Text + "'";
        Response.Write(db1.CommandText);
        object ob = db1.GetSingleValue();
        if (TextBox2.Text.Equals(ob.ToString()) && !hid.Value.Equals(""))
        {
            Session["pid"] = hid.Value;
            Session["userid"] = TxtID.Text;
            if(Session["pid"]!=null)
            {
                string n = Request.QueryString["pid"];
                Response.Redirect("User/MyCart.aspx?pid="+n);
            }
            else
            {
                Response.Redirect("index.aspx");
            }

        }
        else if (TextBox2.Text.Equals(ob.ToString()) && hid.Value.Equals(""))
        {
            Session["userid"] = TxtID.Text;
            Response.Redirect("index.aspx");
        }
        else
        {
            Label1.Text = "Invalid Password";
        }
    }
}