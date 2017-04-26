using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

namespace ELibrary
{
   public partial class Contacts : Inherited
   {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIzprati_Click(object sender, EventArgs e)
        {
            if (TxbOt.Text != "" && TxbDo.Text != "" && TxbOtnosno.Text != "" && TxbZapitvane.Text != "")
            {
                SmtpClient MailClient = new SmtpClient("localhost");
                MailMessage Email = new MailMessage();
                try
                {
                    Email.From = new MailAddress(TxbOt.Text);
                    Email.To.Add(TxbDo.Text);
                    Email.Subject = TxbOtnosno.Text;
                    Email.Body = TxbZapitvane.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    LblMsgMail.Text = "Email sent";
                }
                catch (Exception)
                { LblMsgMail.Text = "Error in sending email!"; }
                TxbOt.Text = "";
                TxbDo.Text = "";
                TxbOtnosno.Text = "";
                TxbZapitvane.Text = "";
            }
        }

        protected void TxbOtnosno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxbZapitvane_TextChanged(object sender, EventArgs e)
        {

        }
    }
}