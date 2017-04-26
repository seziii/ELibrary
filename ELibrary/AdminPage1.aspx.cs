using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class AdminPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string[] fileBrake = FileUpload1.FileName.Split(new char[] { '.' });
            if(FileUpload1.HasFile)
            {
                lblMessageText.Text = "Изберете файл";
            }
            else if (fileBrake[1].ToUpper() != "JPG")
            {
                lblMessageText.Text = "Файлът трябва да е JPG";
            }
            else if (FileUpload1.PostedFile.ContentLength > 100000)
            {
                lblMessageText.Text = "Файлът трябва да е под 100 KB.";
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("./BookPictures/") + FileUpload1.FileName);
                lblMessageText.Text = "<b>Файлът е добавен</b><br/>";
                lblMessageText.Text += "Име: " + FileUpload1.FileName + "<br/>";
                lblMessageText.Text += "Размер: " + FileUpload1.PostedFile.ContentLength + "bytes<br/>";
            }
        }
    }
}