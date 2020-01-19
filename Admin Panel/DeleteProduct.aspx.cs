using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Panel_DeleteProduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\WebSite5\App_Data\EpujaAdmin.mdf;Integrated Security=True;User Instance=True");
    string a, b;
    SqlCommand cmd;
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
        
        con.Open();
        cmd = new SqlCommand();
        //cmd.CommandText = "delete from Product where PName=@name";
        //cmd.Parameters.AddWithValue("@name", t1.Text);
        //cmd.Connection = con;
        //cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        
        
        Response.Write("<script language='Javascript'>alert('Successfully Deleted..')</script>");
        con.Close();
        Response.Redirect("DeleteProduct.aspx");
    }


    
 }