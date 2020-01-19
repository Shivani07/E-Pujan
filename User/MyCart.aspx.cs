using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Net.Mail;

public partial class User_MyCart : System.Web.UI.Page
{
    Email em = new Email();
    DBManager db = new DBManager();
    DBManager db1 = new DBManager();
    DBManager db2 = new DBManager();
    DBManager db3 = new DBManager();
    DBManager d = new DBManager();
    DBManager d1 = new DBManager();
    DBManager d2 = new DBManager();
    DBManager df = new DBManager();

    StringBuilder table = new StringBuilder();
    Label ll1 = new Label();
    Label ll2 = new Label();
    string[] num;
    public int[] n1=new int[100];
    int[] rate = new int[100];
    Label[] lb = new Label[100];
    TextBox[] tbName = new TextBox[100];
    int tot_q;
    double sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            string n = Request.QueryString["pid"];
            Response.Redirect("../LogIn.aspx?pid=" + n);
        }
        else if (Session["userid"] != null)
        {

            string n = Request.QueryString["pid"];
            num=n.Split(',');
             tot_q= num.Length;
            table.Append("<table style= 'padding: 10px 10px 10px 10px;margin-left:5%; border-spacing: 10px;border-right: solid;border-left: solid;'><tr style='border-style: solid none solid none; border-color: black; border-width: thin; padding: 10px'><th>Items</th><th style='padding-left:30px;'>Price</br></th><th style='padding-left:30px;'>Description</th><th style='padding-left:30px;'>Quantity Ordered</th><th>Total</th><th></th></tr>");
                for (int i = 0; i < num.Length; i++)
                {
                    if (Convert.ToInt32(num[i]) < 100)
                    {
                        db.CommandText = "select * from Tbl_img where S_id='" + num[i] + "'";
                        db1.CommandText = "select * from Tbl_Samagri where S_id='" + num[i] + "'";
                        db2.CommandText = "select * from Tbl_Price where S_id='" + num[i] + "'";
                        DataTable dt = db.GetBulkData();
                        DataTable dt1 = db1.GetBulkData();
                        DataTable dt2 = db2.GetBulkData();

                        if (dt.Rows.Count > 0)
                        {
                            rate[i] = Convert.ToInt32(dt2.Rows[0]["S_Price"]);
                            table.Append("<div class='row'><tr style='border-style: solid none solid none; border-color: #0000FF; border-width: thin; padding: 10px'><td><a href='#' class='thumbnail'><img src='../Admin Panel/product/" + dt.Rows[0]["Pic_name"] + "' height='100px' width='100px'></a></br> &nbsp; &nbsp; &nbsp;" + dt1.Rows[0]["S_name"] + "<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(" + dt1.Rows[0]["Quantity"] + ")</td><td>Rs." + dt2.Rows[0]["S_Price"] + "</td><td style='text-align:center;'>&nbsp;&nbsp;Single Item&nbsp;&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                            table.Length = 0;
                            tbName[i] = new TextBox();
                            lb[i] = new Label();
                            tbName[i].ID = "tbName" + i.ToString();
                            tbName[i].Width = 50;
                            tbName[i].Text = "1";
                        
                            tbName[i].AutoPostBack = true;
                            tbName[i].TextChanged += new EventHandler(tbName_TextChanged);
                            PlaceHolder1.Controls.Add(tbName[i]);
                            PlaceHolder1.Controls.Add(new Literal { Text = "</td><td>" });
                            
                            lb[i].ID = "lb" + i.ToString();
                            lb[i].Width = 80;
                            
                            PlaceHolder1.Controls.Add(lb[i]);

                            PlaceHolder1.Controls.Add(new Literal { Text = "</td><td></tr></div>" });

                        }
                    }//end if
                    else if (Convert.ToInt32(num[i]) > 100)
                    {
                        db3.CommandText = "select * from Tbl_Kit where Kit_id='" + num[i] + "'";
                        DataTable dt = db3.GetBulkData();

                        if (dt.Rows.Count > 0)
                        {
                            rate[i] = Convert.ToInt32(dt.Rows[0]["SP"]);
                            table.Append("<div class='row'><tr style='border-style: solid none solid none; border-color: #0000FF; border-width: thin; padding: 10px'><td><a href='#' class='thumbnail'><img src='../Admin Panel/product/" + dt.Rows[0]["Kit_img"] + "' height='100px' width='100px'></a></br> &nbsp; &nbsp; &nbsp;" + dt.Rows[0]["Kit_name"] + "<br/></td><td>&nbsp;Rs." + dt.Rows[0]["SP"] + "</td><td width='250px' style='text-align:center;'>" + dt.Rows[0]["Contents"] + "</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                        PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                        table.Length = 0;
                        tbName[i] = new TextBox();
                        tbName[i].ID = "tbName" + i.ToString();
                        tbName[i].Width = 50;
                        tbName[i].Text = "1";
                        
                        tbName[i].AutoPostBack = true;
                        tbName[i].TextChanged += new EventHandler(tbName_TextChanged);
                        PlaceHolder1.Controls.Add(tbName[i]);
                        PlaceHolder1.Controls.Add(new Literal { Text = "</td><td>" });
                        lb[i] = new Label();
                        lb[i].ID = "lb" + i.ToString();
                        lb[i].Width = 80;
                        PlaceHolder1.Controls.Add(lb[i]);

                        PlaceHolder1.Controls.Add(new Literal { Text = "</td></tr></div>" });

                        }
                   }//end elseif
                }//end for

                table.Append("</table>");

                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                double sum1=0.0;
                for (int k = 0; k < num.Length; k++)
                {
                    int quan = Convert.ToInt32(tbName[k].Text);
                    double tot = quan * rate[k];
                    lb[k].Text = "Rs. "+tot.ToString();
                    sum1 = sum1 + tot;
                    Label1101.Text = "Grand Total: Rs. " + sum1.ToString();
                }
                sum = sum1;
                PlaceHolder2.Controls.Add(new Literal { Text = "<h3>Order Summary</h3> <hr />" });
                ll1.Text = num.Length.ToString();
                ll2.Text = sum1.ToString();
                PlaceHolder2.Controls.Add(new Literal { Text = "<table style= 'padding: 10px 10px 10px 10px;margin-left:5%; border-spacing: 10px;border-right: solid;border-left: solid;'><tr><td>No. of items:</td><td>" });
                PlaceHolder2.Controls.Add(ll1);
                PlaceHolder2.Controls.Add(new Literal { Text = "</td></tr><tr><td>Total Amount:</td><td>" });
                PlaceHolder2.Controls.Add(ll2);
                PlaceHolder2.Controls.Add(new Literal { Text = "</td></tr><tr Style='text-align:center;'><td >" });
                Button b1 = new Button();
                b1.ID = "b1";
                b1.Text = "Place Order";
                b1.Click+=new EventHandler(b1_Click);
                PlaceHolder2.Controls.Add(b1);
                PlaceHolder2.Controls.Add(new Literal { Text = "</td></tr></table>"});
            }
            else if (Session["userid"] == null)
                Response.Redirect("../LogIn.aspx");
        }


    private void tbName_TextChanged(object sender, EventArgs e)
    {
        TextBox tbName1 = (sender as TextBox);
        if (tbName1.Text.Length >= 2)
        {
            int acceptednumber = Convert.ToInt32(tbName1.Text);
            if (acceptednumber < 0)
            {
                tbName1.Text = "0";
                Response.Write("<script LANGUAGE='JavaScript' >alert('-ve values are not allowed')</script>");
            }
            else
            {
                tbName1.Text = tbName1.Text;
            }
        }
        sum = 0;
        int t1 = Array.IndexOf(tbName, tbName1);
        int quan = Convert.ToInt32(tbName1.Text);
        for (int k = 0; k < num.Length; k++)
        {
            n1[k] = Convert.ToInt32(tbName[k].Text);
        }
        double tot = quan * rate[t1];
        lb[t1].Text = "Rs. "+tot.ToString();
        for (int k = 0; k < num.Length; k++)
        {
            int quan1 = Convert.ToInt32(tbName[k].Text);
            double tot1 = quan1 * rate[k];
            sum = sum + tot1;
            Label1101.Text = "Grand Total:Rs. " + sum.ToString();
            ll2.Text = sum.ToString();
        }
        tot_q = 0;
        for (int k = 0; k < num.Length; k++)
        {
            tot_q=tot_q+n1[k];
        }
        ll1.Text = tot_q.ToString();

    }
    private void b1_Click(object sender, EventArgs e)
    {
        //<script LANGUAGE='JavaScript' >alert('Your order is placed successfully!! You will soon recieve a mail confirming it.')</script>
        d1.CommandText = "insert into Tbl_Order (User_id,Total_qty,Total_price) values ('" + Session["userid"] + "','"+ll1.Text+"','"+ll2.Text+"')";
        d1.ExecuteInsertUpdateOrDelete();
        d2.CommandText="select Order_id from Tbl_Order order by Order_id DESC";
        object ob = d2.GetSingleValue();
            for (int i = 0; i < num.Length; i++)
            {
                d.CommandText = "insert into Tbl_OrderDetails (Order_id,prod_id,prod_qty,Order_date) values ('" + ob + "','" + num[i] + "'," + n1[i] + ",'"+DateTime.Now+"')";
                d.ExecuteInsertUpdateOrDelete();
            }
            string ss="Dear Customer, your Order id is "+ob+". You have ordered "+ll1.Text+" items and your total is "+ll2.Text+".\n Thanks for shopping.";
            try
            {
                SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
                MailMessage mail = em.getMail(Session["userid"].ToString(), "Your order is placed successfully", ss, "epujalko@gmail.com", "Epuja123!");
                smtpServer.Send(mail);
                Response.Write("Mali Send:");
            }
            catch (Exception ea)
            {
                //Response.Write(ea.ToString());
            }
    }
        
}