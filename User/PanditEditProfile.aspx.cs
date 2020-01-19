using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_PanditEditProfile : System.Web.UI.Page
{
     DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    FileManager fm1=new FileManager();
    string sname = "",pic="";
    string Pid;
    FileManager fm = new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        RequiredFieldValidator8.Enabled = false;
        string PName=Request.QueryString["Name"];
        Pid=Request.QueryString["Id"];

        db1.CommandText="select Image from Tbl_Pandit where Pandit_id='"+Pid+"'";
        object ob1 = db1.GetSingleValue();
        Image1.ImageUrl = "~/User/panditMandali/" + ob1.ToString();
        db1.CommandText="select * from Tbl_Pandit where Pandit_id='"+Pid+"'";
        DataTable dt= db1.GetBulkData();
        for (int i = 0; i < dt.Rows.Count; i++)
        {

            TxtPandit.Text = dt.Rows[i]["Pandit_name"].ToString();
            TxtType.Text=dt.Rows[i]["Pandit_category"].ToString();
            txtMoPandit.Text=dt.Rows[i]["Pandit_mobile"].ToString();
            txtAddPandit.Text = dt.Rows[i]["Pandit_address"].ToString();
            txtPassPandit.Text = dt.Rows[i]["Password"].ToString();
            TxtConfPass.Text = dt.Rows[i]["Password"].ToString();
            pic = dt.Rows[i]["Image"].ToString();
        }
        Response.Write(Pid);
        
    }
    protected void RegPanditBtn_Click(object sender, EventArgs e)
    {
        //fm.MyFileUpload = PanditProfile;
        //fm.AllowedExtention=new string[]{"jpg","png"};

        //if (fm.MyFileUpload.HasFile)
        //{
        //    fm.UploadFolderName("panditMandali");


        //    Response.Write("File ok");
        //}
  
        if (PanditProfile.HasFile)
        {
            sname = PanditProfile.FileName.ToString();
            PanditProfile.PostedFile.SaveAs(Server.MapPath("panditMandali") + sname);
        }
        else
        {
            sname = pic;
        }
        db2.CommandText = "update Tbl_Pandit set Password='" + txtPassPandit.Text + "',Pandit_name='" + TxtPandit.Text + "',Pandit_category='" + TxtType.Text + "',Pandit_address='" + txtAddPandit.Text + "',Pandit_mobile='" + txtMoPandit.Text + "',Image='" + sname + "',Date='" + DateTime.Now + "' where Pandit_id='"+Pid+"'";
        db2.ExecuteInsertUpdateOrDelete();
        if (db2.ExecuteInsertUpdateOrDelete() == true)
        {
            Response.Write("<script language='Javascript'>alert('Details Updated Successfull')</script>");
            ResetBtn_Click(sender, e);
            Response.Redirect("PanditLogin.aspx");
        }
        else
        {
            Response.Write("<script language='Javascript'>alert('Error Occurred')</script>");
        }
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
    protected void TxtPandit_TextChanged(object sender, EventArgs e)
    {
        RequiredFieldValidator8.Enabled = true;
    }

    protected void LogoutBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("PanditLogin.aspx");
    }
}