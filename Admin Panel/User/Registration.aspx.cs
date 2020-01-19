using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    DBManager db1 = new DBManager();
    FileManager fm1=new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        db1.CommandText="insert into Tbl_Registration values('"+TxtUName.Text+"','"+TxtName.Text+"','"+TxtGender.Text+"','"+TxtMobile.Text+"','"+TxtAddress.Text+"','"+DateTime.Now+"')";

            fm1.MyFileUpload=profilpic;
          //  fm.AllowedExtention=new string[]{"jpg","png"};

            if (fm1.ValidateMyFile() == "SUCCESS")
            {
                fm1.UploadFolderName("User");
            }
        
        
        if (db1.ExecuteInsertUpdateOrDelete() == true)
        {

            Response.Write("Saved");
        }
        else {
            Response.Write("Not Saved");
        }
    }
}