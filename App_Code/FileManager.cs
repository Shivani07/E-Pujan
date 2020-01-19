using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;

public class FileManager
{
   public float FileSizeInMB
{
 get;
 set;
}
    public int MaxFileSizeInKB
    {
        get;
        set;
    }
    public string MyFileName
    {
        get;
        set;
    }
    public string MyFileType
    {
        get;
        set;
    }
    public string[] AllowedExtention
    {
        get;
        set;
    }
    public FileUpload MyFileUpload
    {
        get;
        set;
    }
    public FileManager()   // Constructor
    {
        MaxFileSizeInKB = 4;
        AllowedExtention = new string[] { ".JPG", ".jpeg", ".PNG", ".png", ".docx", ".xls", ".xlsx", ".doc", ".csv" };
    }
    public string ValidateMyFile()
    {
        int SizeInBytes = MyFileUpload.PostedFile.ContentLength;
        FileSizeInMB = SizeInBytes/(1024*1024);
        if (FileSizeInMB <= MaxFileSizeInKB)
        {
            MyFileType = MyFileUpload.FileName.Substring(MyFileUpload.FileName.LastIndexOf('.'));
            bool ExtentionSignalStatus = false;
            foreach (string ext in AllowedExtention)
            {
                if (ext.ToUpper() == MyFileType.ToUpper())
                {
                    ExtentionSignalStatus = true;
                    break;
                }
            }
            if (ExtentionSignalStatus == true)
            {
               // MyFileName = Path.GetRandomFileName() + MyFileType;
                MyFileName = MyFileUpload.FileName;
                return "SUCCESS";
            }
            else
            {
                return "Invalid File Format.";
            }

        }
        else
        {
            return "File size is too large.";
        }
    }
    public string UploadFolderName(string FolderName)
    {
        if (!Directory.Exists(HttpContext.Current.Server.MapPath(FolderName)))
        {
            Directory.CreateDirectory(HttpContext.Current.Server.MapPath(FolderName));
        }
        MyFileUpload.SaveAs(HttpContext.Current.Server.MapPath(FolderName) + "/" + MyFileUpload.FileName);
        return FolderName;
    }

    /*---------------Date Formate----------------*/
   
    
}