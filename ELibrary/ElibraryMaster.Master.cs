using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class ElibraryMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = true;
        }

        protected void lkbZabravenaParola_Click(object sender, EventArgs e)
        {
            PasswordRecovery chpass = (PasswordRecovery)LoginView1.FindControl("PasswordRecovery1");
            chpass.Visible = false; 
        }

        protected void LnkbPromqnaPass_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = false;
        }

        protected void ImgBtnBG_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void ImgBtnEN_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }

        protected void PassRecoweryAnonym_SendingMail(object sender, MailMessageEventArgs e)
        {

        }

        protected void ChangePassUser_ChangedPassword(object sender, EventArgs e)
        {

        }
    }
}