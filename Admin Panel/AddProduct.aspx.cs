using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Panel_AddProduct : System.Web.UI.Page
{
    DBManager db = new DBManager();
    FileManager fm = new FileManager();
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
        string c = DropDownList1.SelectedItem.ToString();
        db.CommandText = "select CategId from Tbl_Category where CategName='"+c+"'";
        object ob1 = db.GetSingleValue();
        db.CommandText = "insert into Tbl_Samagri values('" + t2.Text + "','" + t10.Text + "','" + DateTime.Now + "','" + ob1+ "')";
        fm.MyFileUpload = f1;
        if (fm.ValidateMyFile() == "SUCCESS")
        {
            fm.UploadFolderName("product");
        }
        if (db.ExecuteInsertUpdateOrDelete() == true)
        {
            db.CommandText = "select max(S_id) from Tbl_Samagri";
            object ob = db.GetSingleValue();
            db.CommandText = "insert into Tbl_img (Pic_name,S_id) values('" + f1.FileName + "','" + ob + "')";
            db.ExecuteInsertUpdateOrDelete();
            Response.Write("<script language='Javascript'>alert('Saved')</script>");
            Button2_Click(sender, e);
        }
        else
        {
            Response.Write("<script language='Javascript'>alert('Not Saved')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        t2.Text = string.Empty;
        t10.Text = string.Empty;
        DropDownList1.SelectedIndex=0;
    }
}