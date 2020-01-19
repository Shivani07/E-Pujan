using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    FileManager fm1=new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        RegUser.Enabled = false;
        RegAsPandit.Enabled = true;
        RegPanditpnl.Visible = false;
        RegisterUrselfpnl.Visible = true;
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        string val;
        if (RadioButton1.Checked == true)
        {
            val = "Male";
        }
        else
        {
            val = "Female";
        }
            db1.CommandText="insert into Tbl_Registration values('"+email.Text+"','"+TxtName.Text+"','"+val+"','"+TxtMobile.Text+"','"+TxtAddress.Text+"','"+DateTime.Now+"')";
            fm1.MyFileUpload=profilpic;
            if (fm1.ValidateMyFile() == "SUCCESS")
            {
                fm1.UploadFolderName("User");
            }

        if (db1.ExecuteInsertUpdateOrDelete() == true)
        {
          
            db1.CommandText = "insert into Tbl_Login values('" + email.Text + "','" + TxtPass.Text + "',1)";
            db1.ExecuteInsertUpdateOrDelete();

            Response.Write("<script language='Javascript'>alert('Registration Successfull')</script>");
            btn2_Click(sender,e);

        }
        else {
            Response.Write("<script language='Javascript'>alert('Error Occurred')</script>");
        }
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        TxtAddress.Text = "";
        TxtPass1.Text = "";
        TxtPass.Text = "";
        TxtName.Text = "";
        TxtMobile.Text = "";
        email.Text = "";
    }

    protected void RegUser_Click(object sender, EventArgs e)
    {
        RegisterUrselfpnl.Visible = true;
        RegPanditpnl.Visible = false;  
    }
    protected void RegAsPandit_Click(object sender, EventArgs e)
    {
        
        RegAsPandit.Enabled = false;
        RegUser.Enabled = true;
        RegisterUrselfpnl.Visible = false;
        RegPanditpnl.Visible = true;
    }
    protected void ResetBtn_Click(object sender, EventArgs e)
    {
        txtAddPandit.Text = "";
        txtMoPandit.Text = "";
        TxtPandit.Text = "";
        txtPassPandit.Text = "";
        TxtType.Text = "";
        TxtConfPass.Text = "";
    }
    protected void RegPanditBtn_Click(object sender, EventArgs e)
    {
        string sname="";
        if (PanditProfile.HasFile)
        {
            sname = PanditProfile.FileName.ToString();
            PanditProfile.PostedFile.SaveAs(Server.MapPath("panditMandali")+sname);
        }
        db2.CommandText = "insert into Tbl_Pandit(Password,Pandit_name,Pandit_category,Pandit_address,Pandit_mobile,Image,Date) values('"+txtPassPandit.Text+"','" + TxtPandit.Text + "','" + TxtType.Text + "','" + txtAddPandit.Text + "','" + txtMoPandit.Text + "','" + sname + "','" + DateTime.Now + "')";
        if (db2.ExecuteInsertUpdateOrDelete() == true)
        {
            Response.Write("<script language='Javascript'>alert('Registration Successfull')</script>");
            Response.Redirect("../index.aspx");
            ResetBtn_Click(sender, e);
        }
        else
        {
            Response.Write("<script language='Javascript'>alert('Error Occurred')</script>");
        }
    }
    

}