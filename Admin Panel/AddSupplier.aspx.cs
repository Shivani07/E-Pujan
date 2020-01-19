using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Panel_AddSupplier : System.Web.UI.Page
{
    DBManager db = new DBManager();
  
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
            db.CommandText = "insert into Tbl_Supplier(SupName) values('" + t2.Text + "')";
            db.ExecuteInsertUpdateOrDelete();
            db.CommandText = "select max(SupId) from Tbl_Supplier";
            object ob1 = db.GetSingleValue();
            db.CommandText = "insert into Tbl_SupplierDetails (SupId,Email,OfficeContact,MobilePhone,Address) values('" + ob1 + "','" + t6.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "')";

            if (db.ExecuteInsertUpdateOrDelete() == true)
            {
                Response.Write("<script language = 'javascript'>alert('Successfully Added.')</script>");
                RstBtn_Click(sender, e);
            }
            else
            {
                Response.Write("<script language = 'javascript'>alert('Data is not entered correctly!!!')</script>");
            }
    }
    protected void RstBtn_Click(object sender, EventArgs e)
    {
        t2.Text = "";
        t3.Text = "";
        t4.Text = "";
        t5.Text = "";
        t6.Text = "";
    }
}