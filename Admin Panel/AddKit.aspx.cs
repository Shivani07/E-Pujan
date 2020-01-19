using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Admin_Panel_AddKit : System.Web.UI.Page
{
    int count = 0;
    string [] check=new string [10];
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    DBManager db=new DBManager();
    DataTable dt = new DataTable();
    FileManager fm = new FileManager();
    string str1;
    int sum = 0, a = 0, b = 0;
    int[] pr = new int[210];
    static string cpy;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }
            db.CommandText = "select * from Tbl_Price";
            dt = db.GetBulkData();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TextBox cb = new TextBox();
                cb.ID = Convert.ToString("cbs" + i);
                cb.Text = "Rs." + dt.Rows[i]["S_Price"].ToString();
                cb.Enabled = false;
                cb.Width = 50;

                Panel2.Controls.Add(cb);
                pr[i] = Convert.ToInt32(dt.Rows[i]["S_Price"]);
            }
    }

    public void Button1_Click(object sender, EventArgs e)
    {
        fm.MyFileUpload = f1;
        if (fm.ValidateMyFile() == "SUCCESS")
        {
            fm.UploadFolderName("product");
        }

        db.CommandText = "insert into Tbl_Kit(Kit_name,Contents,SP,Stock,Kit_img) values('" + t2.Text + "','" + cpy + "'," + t6.Text + "," + stk.Text + ",'" + f1.FileName + "')";
        
        if (db.ExecuteInsertUpdateOrDelete() == true)
        {
            Response.Write("Saved");
            Clear();
        }
        else
        {
            Response.Write("Not Saved");
        }
    }
    
    public void Done_Click(object sender, EventArgs e)
    {

        int k = 0;
        sum = 0;
        string[] arr = new string[CheckBoxList1.Items.Count];
        string contents="";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                arr[k] = CheckBoxList1.Items[i].Text;
                sum += pr[i];
                k++;
            }
        }
        ListBox1.Items.Clear();
        for (int j = 0; j < k; j++)
        {
            ListBox1.Items.Add(arr[j]);
            contents += arr[j] + " ,";
        }
        t6.Text = sum.ToString();
        cpy = contents;
        
     }
    
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Clear()
    {
        foreach (Control t in Page.Controls)
        {
            if (t is TextBox)
            {
                TextBox tb = (TextBox)t;
                tb.Text = string.Empty;
            }

        }
        ListBox1.Items.Clear();

    }
   
}