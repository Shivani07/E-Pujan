using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_product_Ent_Product : System.Web.UI.Page
{
    DBManager db = new DBManager();
   
    FileManager fm = new FileManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {

        db.CommandText = "insert into Tbl_Samagri values('" +TxtSName.Text+ "','" + TxtQuantity.Text + "','" + TxtPrice.Text + "','" + DateTime.Now + "','" + TxtDescription.Text + "')";

        fm.MyFileUpload = file;
        //  fm.AllowedExtention=new string[]{"jpg","png"};

        if (fm.ValidateMyFile() == "SUCCESS")
        {
            fm.UploadFolderName("product");
           

            Response.Write("File ok");
        }


        if (db.ExecuteInsertUpdateOrDelete() == true)
        {
            db.CommandText = "select max(S_id) from Tbl_Samagri";
            object ob = db.GetSingleValue();

            db.CommandText = "insert into Tbl_img (Pic_name,S_id) values('" + file.FileName + "','" + ob + "')";
            db.ExecuteInsertUpdateOrDelete();
            Response.Write("Saved");
        }
        else
        {
            Response.Write("Not Saved");
        }
       

    }
}