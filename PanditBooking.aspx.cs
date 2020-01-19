using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PanditBooking : System.Web.UI.Page
{
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    DBManager db4 = new DBManager();
    DBManager d1 = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("Login.aspx");
        }
        db.CommandText = "select * from Tbl_Pandit";
        string str = "";
        DataTable dt = db.GetBulkData();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<div class='col-sm-2' style='background-color:transparent;'><div class='thumbnail' style='height:240px; width:200px;'><img src='User/panditMandali/" + dt.Rows[i]["Image"] + "' alt='...' style='border: 1px solid #ddd;border-radius: 4px;padding: 5px;width: 100px;height: 100px;'><div class='caption'><h3 style='color:White;'>" + dt.Rows[i]["Pandit_name"] + "</h3><p style='color:White;'>" + dt.Rows[i]["Pandit_mobile"] + "</p><p><span class='pid' style='display:none;'>" + dt.Rows[i]["Pandit_id"] + "</span><button type='button' class='btn btn-default ' onclick='addCard(this)'   role='button'>Book</button></p></div></div></div>";

        }
        LblRecord.Text = str;

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        DateTime dob = DateTime.Parse(Request.Form[TextBox1.UniqueID]);
        db.CommandText = "insert into Tbl_BookPandit (PanditId,UserId,BookingDate) values(" +55553 + ",'" + Session["userid"] + "','" + dob+ "')";
        db.ExecuteInsertUpdateOrDelete();
    }
}