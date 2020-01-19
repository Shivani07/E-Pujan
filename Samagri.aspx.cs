using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Samagri : System.Web.UI.Page
{
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    DBManager db4 = new DBManager();
    DBManager d1 = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

        db.CommandText = "select * from Tbl_Samagri";
        db1.CommandText = "select * from Tbl_img";
        db2.CommandText = "select * from Tbl_Price";
        db3.CommandText = "select CategName from Tbl_Category";
        string str="";
        DataTable dt = db.GetBulkData();
        DataTable dt1 = db1.GetBulkData();
        DataTable dt2 = db2.GetBulkData();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<div class='col-sm-2' style='background-color:transparent;'><div class='thumbnail' style='height:290px; width:200px;'><img src='Admin Panel/product/" + dt1.Rows[i]["Pic_name"] + "' alt='...' style='border: 1px solid #ddd;border-radius: 4px;padding: 5px;width: 100px;height: 100px;'><div class='caption'><h3 style='color:White;'>" + dt.Rows[i]["S_Name"] + "</h3><p style='color:White;'>" + dt.Rows[i]["Quantity"] + "</p><h5 style='color:White;'><b>Rs." + dt2.Rows[i]["S_Price"] + "</b></h5><p><span class='pid' style='display:none;'>" + dt.Rows[i]["S_id"] + "</span><button type='button' class='btn btn-default ' onclick='addCard(this)'   role='button'>Add to Cart</button></p></div></div></div>";

        }
        str += " <div class='row' style='margin-top:0%;'><div class='col-sm-12'><h2 style='color:White;'>Also select from a variety of Kits</h2><br/>";
        db4.CommandText = "select * from Tbl_Kit";
        DataTable dt3 = db4.GetBulkData();
        for (int i = 0; i < dt3.Rows.Count; i++)
        {
            str += "<div class='col-sm-2'><div class='thumbnail' style='height:290px; width:200px;'><img src='Admin Panel/product/" + dt3.Rows[i]["Kit_img"] + "' alt='...' style='border: 1px solid #ddd;border-radius: 4px;padding: 5px;width: 100px;height: 100px;'><div class='caption'><h3 style='color:White;'>" + dt3.Rows[i]["Kit_name"] + "</h3><p style='color:White;'>1 Pack</p><h5 style='color:White;'><b>Rs." + dt3.Rows[i]["SP"] + "</b></h5><p><span class='pid' style='display:none;'>" + dt3.Rows[i]["Kit_id"] + "</span><button type='button' class='btn btn-default ' onclick='addCard(this)'   role='button'>Add to Cart</button></p></div></div></div>";

        }
        str += "</div></div>";
        LblRecord.Text = str;

    }

}