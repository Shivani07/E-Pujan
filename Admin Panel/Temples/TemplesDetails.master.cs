using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Panel_Temples_TemplesDetails : System.Web.UI.MasterPage
{
    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=epujadb;Integrated Security=True;Pooling=False");
    
    //SqlCommand cmd;
    //SqlDataReader dr;
    //int cid;
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    //Panel1.Visible = true;

    //}
    
    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    con.Open();
    //    cmd = new SqlCommand();

    //    cmd.CommandText = "insert into Tbl_BookingTemple(Name,Purpose,Date,Others) values(@name,@purpose,@date,@others)";
        
    //    cmd.Parameters.AddWithValue("@name",NameTxt.Text);
    //    cmd.Parameters.AddWithValue("@purpose",DropDownList2.Text);
    //    cmd.Parameters.AddWithValue("@date",DateTxt.Text);
    //    cmd.Parameters.AddWithValue("@others", PurposeTxt.Text);
    //   // cmd.Parameters.AddWithValue("@dob",DOBtxt.Text);
    //    cmd.Connection = con;
    //    cmd.ExecuteNonQuery();
    //    cmd.Parameters.Clear();
    //    Response.Write("<script language='Javascript'>alert('Successfully Booked..')</script>");
    //    con.Close();
    //}
}
