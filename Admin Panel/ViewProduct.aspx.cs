using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Panel_ViewProduct : System.Web.UI.Page
{
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }
       
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        LblRecord.Visible = false;
        GridView1.Visible = true;    
        string s = SearchTb.Text;
            string str="";
            db3.CommandText = "select * from Tbl_Samagri where S_name LIKE ' " + s + " '";
            DataTable dt3 = db3.GetBulkData();
            for (int i = 0; i < dt3.Rows.Count; i++)
            {
               str += "<tr><td>" + (i + 1) + "</td>";
               str += "<td>" + dt3.Rows[i]["S_name"] + "</td>";
               str += "<td>" + dt3.Rows[i]["Quantity"] + "</td>";
               str += "<td>" + dt3.Rows[i]["Entry_date"] + "</td>";
            }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SearchTb.Text = "";
        LblRecord.Visible = true;
        GridView1.Visible = false;
        db.CommandText = "select * from Tbl_Samagri";
        db1.CommandText = "select * from Tbl_img";
        db2.CommandText = "select * from Tbl_Price";

        string str = "<table><tr><th>Sr No.</th><th>S_Name</th><th>Category</th><th>Quantity</th><th>Entry Date</th><th>C.P.</th><th>S.P.</th><th>Image</th></tr>";

        DataTable dt = db.GetBulkData();
        DataTable dt1 = db1.GetBulkData();
        DataTable dt2 = db2.GetBulkData();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<tr><td>" + (i + 1) + "</td>";
            str += "<td>" + dt.Rows[i]["S_name"] + "</td>";
            db3.CommandText = "select CategName from Tbl_Category where CategId='" + dt.Rows[i]["CategId"] + "'";
            object ob1 = db3.GetSingleValue();
            str += "<td>" + ob1 + "</td>";
            str += "<td>" + dt.Rows[i]["Quantity"] + "</td>";
            str += "<td>" + dt.Rows[i]["Entry_date"] + "</td>";
            str += "<td>" + dt2.Rows[i]["C_Price"] + "</td>";
            str += "<td>" + dt2.Rows[i]["S_Price"] + "</td>";
            str += "<td><img src=product/" + dt1.Rows[i]["Pic_name"] + " height='100px' width='100px' /></td></tr>";
        }
        str += "</table>";
        LblRecord.Text = str;
    }
}