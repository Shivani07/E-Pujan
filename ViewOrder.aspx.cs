using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewOrder : System.Web.UI.Page
{
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    string str11;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("Samagri.aspx");
        }
        int k = 0;
            db.CommandText = "select * from Tbl_Order where  User_id='"+Session["userid"]+"'";
            DataTable dt = db.GetBulkData();
            str11 = "<table><tr><th>Sr No.</th><th>Product Name</th><th>Price</th><th>Quantity</th><th>Order Date</th></tr>";
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                db1.CommandText = "select * from Tbl_OrderDetails where Order_id='" + dt.Rows[j]["Order_id"] + "'";
                DataTable dt1 = db1.GetBulkData();
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    str11 += "<tr><td>" + (k + 1) + "</td>";
                    db2.CommandText = "select S_name from Tbl_Samagri where S_id='" + dt1.Rows[i]["prod_id"] + "'";
                    object ob1 = db2.GetSingleValue();
                    str11 += "<td>" + ob1.ToString() + "</td>";
                    db3.CommandText = "select S_Price from Tbl_Price where S_id='" + dt1.Rows[i]["prod_id"] + "'";
                    object ob2 = db3.GetSingleValue();
                    str11 += "<td>" + ob2.ToString() + "</td>";
                    str11 += "<td>" + dt1.Rows[i]["prod_qty"] + "</td>";
                    str11 += "<td>" + dt1.Rows[i]["Order_Date"] + "</td></tr>";
                    k++;
                }
            }
            str11 += "</table>";
            Lbl1.Text = str11;
    }
   
}