using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

public class Email
{
    SqlConnection con;
    SqlCommand cmd;
    public string str;
    public Email()
    {
        //str = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\db1.mdb";
        //str = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\dbsql.mdb";
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ToString());
    }
    public void con_Open()
    {
        if (con.State.ToString() == "Open")
            con.Close();
        else
            con.Open();
    }
    public void con_Close()
    {
        if (con.State.ToString() == "Close")
            con.Open();
        else
            con.Close();
    }

    public MailMessage getMail(string a, string b, string c, string uid, string unam)
    {
        MailMessage mail = new MailMessage();
        SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("epujalko@gmail.com");
        mail.To.Add(a);
        mail.Subject = b;
        mail.Body = c;
        smtpServer.Port = 587;
        smtpServer.Credentials = new System.Net.NetworkCredential(uid, unam);
        smtpServer.EnableSsl = true;
        return mail;

    }
}
