using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Services;
using System.Web.SessionState;
using System.Net.Mail;
using System.Data;
public partial class index : System.Web.UI.Page
{
    Email em=new Email();
    DBManager db = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
       string str = "";
       if (Session["userid"]!=null)
       {
           db.CommandText = "select U_name from Tbl_Registration where User_id='" + Session["userid"] + "'";
           object ob = db.GetSingleValue();
        
           string[] s = ob.ToString().Split(' ');
           str += "<button type='button' id='btnlog'OnClick='Login_Click'  role='button' style='text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 18px; font-weight: bold; text-transform: capitalize; text-shadow: 0 1px 0 rgba(0, 0, 0, .25); background-color:transparent; font-family: Georgia; margin-right: 20px; line-height: 45px; color: #D8AA46;'>LogOut</button>  ";
           Label3.Visible = true;
           Label3.Text = "Hi "+s[0]+ " !!";

        }
       else
       {
           Label3.Visible = false;
           str += " <a href='LogIn.aspx'  role='button' style='text-align: center; border-style: hidden; padding: 2px; font-size: 18px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 45px; text-shadow: 0 1px 0 rgba(0, 0, 0, .25); color: #D8AA46;'>LogIn</a>";
       }
        Label1.Text=str;
        Label2.Text = "<a href='User/Registration.aspx' role='button' style='text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 18px; font-weight: bold; text-transform: capitalize; font-family: Georgia; text-shadow: 0 1px 0 rgba(0, 0, 0, .25); margin-right: 20px; line-height: 45px; color: #D8AA46;'>Register</a>";
    }
    protected void send_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
            MailMessage mail = em.getMail(Session["userid"].ToString(), "Your order is placed successfully", "", "epujalko@gmail.com", "Epuja123!");
            smtpServer.Send(mail);
            Response.Write("Mali Send:");
        }
        catch (Exception ea)
        {
            Response.Write(ea.ToString());
        }
    }
  
}