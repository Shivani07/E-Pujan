using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Net;
using System.Net.Mail;

public partial class Admin_Panel_OrderSupplier : System.Web.UI.Page
{
    
        
    int count = 0;
    string [] check=new string [10];
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    DBManager db=new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DataTable dt = new DataTable();
    FileManager fm = new FileManager();
    string str1;
    int sum = 0, a = 0, b = 0,tcp=0,tsp=0;
    string contents = "";
    string name = "";
    int[] pr = new int[10];
    string[] arr = new string[10];
    string[] totcp = new string[20];
    string[] totsp = new string[20];
    string str;
    object supId;
    string to = "epuja789@gmail.com";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            //Response.Write("<script language='Javascript'>alert('Please Login first!!')</script>");
            Response.Redirect("AdminLogin.aspx");
        }
        
        db.CommandText = "select * from Tbl_Samagri";
        dt = db.GetBulkData();
        for (int i = 0; i < (dt.Rows.Count); i++)
        {
            TextBox cb = new TextBox();
            cb.ID = Convert.ToString("cp" + i);
            cb.Width = 70;
            Panel4.Controls.Add(cb);
        }
        db.CommandText = "select * from Tbl_Samagri";
        dt = db.GetBulkData();
        for (int i = 0; i < (dt.Rows.Count); i++)
        {
            TextBox cb = new TextBox();
            cb.ID = Convert.ToString("cbs" + i);
            cb.Width = 70;
            Panel2.Controls.Add(cb);
        }
        db.CommandText = "select * from Tbl_Samagri";
        dt = db.GetBulkData();
        for (int i = 0; i < (dt.Rows.Count); i++)
        {
            TextBox cb = new TextBox();
            cb.ID = Convert.ToString("sp" + i);
            cb.Width = 70;
            Panel5.Controls.Add(cb);
            //pr[i] = Convert.ToInt32(dt.Rows[i]["S_Price"]);
        }
        db.CommandText = "select * from Tbl_Samagri";
        dt = db.GetBulkData();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            TextBox lb = new TextBox();
            lb.ID = Convert.ToString("lb" + i);
            lb.Width = 80;
            lb.Text = dt.Rows[i]["Quantity"].ToString();
            lb.Enabled = false;
            Panel3.Controls.Add(lb);
        }

     }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        name = DropDownList1.SelectedValue;
        db1.CommandText = "select (SupId) from Tbl_Supplier where SupName='" + name + "'";
        supId = db1.GetSingleValue();
        db.CommandText = "insert into Tbl_OrderSupplier(SupId,Quantity) values('" + supId + "','" + TextBox2.Text + "')";
        if (db.ExecuteInsertUpdateOrDelete() == true)
                {
                    for (int k = 0; k < ListBox1.Items.Count; k++)
                    {
                        string p = ListBox1.Items[k].ToString();
                        db2.CommandText = "select max(S_id) from Tbl_Samagri where S_name='" + p + "'";
                        object id2 = db2.GetSingleValue();
                        Response.Write(ListBox1.Items[k].ToString());
                        
                        string qua = ListBox2.Items[k].ToString();
                        if (p != "")
                        {

                            db.CommandText = "insert into Tbl_OrderSupplier(SupId,Quantity,TotalCP,TotalSP) values('" + supId + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text+ "')";
                            Response.Write(id2 + "," + qua+","+TextBox4.Text+","+TextBox3.Text);
                            db.CommandText = "insert into Tbl_OrderSupplierDetails(SupId,S_id,Quantity) values('" + supId + "','" + id2 + "','" + qua + "')";
                            if (db.ExecuteInsertUpdateOrDelete() == true)
                            {
                                db.CommandText = "insert into Tbl_Price values('" + id2 + "','" + ListBox3.Items[k] + "','" + ListBox4.Items[k] + "')";
                                if (db.ExecuteInsertUpdateOrDelete() == true)
                                {
                                    Response.Write("saved");
                                }
                            }
                        }
                    }
            
        }
    }
    
    protected void Done_Click(object sender, EventArgs e)
    {
        int k = 0,m=0,n=0,p=0;
        sum = 0;
        arr = new string[CheckBoxList1.Items.Count];
        string[] qua = new string[CheckBoxList1.Items.Count];
        
        foreach (TextBox t in Panel2.Controls.OfType<TextBox>())
        {

            if (t.Text != String.Empty)
            {

                qua[m] = t.Text;
                sum+=Convert.ToInt32(qua[m]);
                m++;
            }
        }
        foreach (TextBox t in Panel4.Controls.OfType<TextBox>())
        {

            if (t.Text != String.Empty)
            {

                totcp[n] = t.Text;
                tcp += Convert.ToInt32(totcp[n]);
                n++;
            }
        }
        foreach (TextBox t in Panel5.Controls.OfType<TextBox>())
        {

            if (t.Text != String.Empty)
            {

                totsp[p] = t.Text;
                tsp += Convert.ToInt32(totsp[p]);
                p++;
            }
        }
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                arr[k] = CheckBoxList1.Items[i].Text;
                k++;
            }
        }
        ListBox1.Items.Clear();
        ListBox2.Items.Clear();
        ListBox3.Items.Clear();
        ListBox4.Items.Clear();
        TextBox2.Text="";
        TextBox3.Text = "";
        TextBox4.Text = "";
        
            for (int j = 0; j < CheckBoxList1.Items.Count; j++)
            {
                ListBox1.Items.Add(arr[j]);
                contents += arr[j] + ", ";
                ListBox2.Items.Add(qua[j]);
                ListBox3.Items.Add(totcp[j]);
                ListBox4.Items.Add(totsp[j]);
            }
            TextBox2.Text=sum.ToString();
            TextBox3.Text = tsp.ToString();
            TextBox4.Text = tcp.ToString();
            if (ListBox1.Items.Count == ListBox2.Items.Count)
            {
            }
            else
            {
                ListBox1.Items.Clear();
                ListBox2.Items.Clear();
                Response.Write("<script language = 'javascript'>alert('Data is not entered correctly')</script>");
            }
     }
    protected void Clear()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        email.Text = "";
        OffNo.Text = "";
        MobNo.Text = "";
        Addr.Text = "";
        ListBox1.Items.Clear();
        ListBox2.Items.Clear();
        ListBox3.Items.Clear();
        ListBox4.Items.Clear();
        foreach (TextBox t in Panel5.Controls.OfType<TextBox>())
        {
            t.Text = string.Empty;
        }
        foreach (TextBox t in Panel2.Controls.OfType<TextBox>())
        {
            t.Text = string.Empty;
        }
        foreach (TextBox t in Panel4.Controls.OfType<TextBox>())
        {
            t.Text = string.Empty;
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        name = DropDownList1.SelectedValue;

        db1.CommandText = "select (SupId) from Tbl_Supplier where SupName='" + name + "'";
        supId = db1.GetSingleValue();
        Response.Write(supId);
        db.CommandText = "select * from Tbl_SupplierDetails where SupId='" + supId + "'";

        dt = db.GetBulkData();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            email.Text = dt.Rows[i]["Email"].ToString();
            OffNo.Text = dt.Rows[i]["OfficeContact"].ToString();
            MobNo.Text = dt.Rows[i]["MobilePhone"].ToString();
            Addr.Text = dt.Rows[i]["Address"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Clear();
    }
    
    protected void SendEmail(object sender, EventArgs e)
    {
        string subject = "Order Supplier";
        string body = ListBox1.Items.ToString();
        MailMessage mm = new MailMessage("srishtipandey52@gmail.com", to);
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            mm.From = new MailAddress("srishtipandey52@gmail.com");
            mm.To.Add(to);
            mm.Subject = subject;
            mm.Body = body;
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("srishtipandey52@gmail.com", "amareno123");
            smtp.EnableSsl = true;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}