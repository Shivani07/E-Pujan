using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Panel_ViewCategory : System.Web.UI.Page
{
    DBManager db = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }
        db.CommandText = "select * from Tbl_Category";
        string str = "<table><tr><th>Category Id</th><th>Category Name</th></tr>";

        DataTable dt = db.GetBulkData();
         for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<tr><td>" + dt.Rows[i]["CategId"] + "</td>";
            str += "<td>" + dt.Rows[i]["CategName"] + "</td>";
        }
         str += "</table>";
         LblRecord.Text = str;
    }
}