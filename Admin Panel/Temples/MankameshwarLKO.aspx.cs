using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Panel_Temples_MankameshwarLKO : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=G:\ \WebSite5\App_Data\EpujaAdmin.mdf;Integrated Security=True;User Instance=True");
    string n = "Mankameshwar Mandir";
    string id;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        //cmd = new SqlCommand();
        //id = "select TId from Temple where TName=" + n + "";
        //Response.Write(id);
        //cmd.CommandText = "insert into BookingTemple(TId) values(@tid)";

        //cmd.Parameters.AddWithValue("@tid", id);
        
        //cmd.Connection = con;
        //cmd.ExecuteReader();
        //cmd.Parameters.Clear();
        ////Response.Write("<script language='Javascript'>alert('Successfully Booked..')</script>");
        //con.Close();
    }
}