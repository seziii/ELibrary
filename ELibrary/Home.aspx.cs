using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class Home : Inherited
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
                LblZdravey.Text = "Здравейте,...!Добре дошли в електронната книжарница!";
                LblDataChas.Text = "Датата и часът са: " + DateTime.Now;
                LblBrowser.Text = "Вашият браузър е: " + Request.Browser.Browser;
            }
        }
  
}