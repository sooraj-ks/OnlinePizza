using OnlinePizzaApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizzaApplication.Pages
{
    public partial class Pizza : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"].ToString()!=null)
            {
                User.Text = Session["User"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
        protected void LogoutMethod(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            var CurrentUser = db.UserDetails.Where(Current => Current.UserStatus == "Active").FirstOrDefault();
            CurrentUser.UserStatus = null;
            db.SaveChanges();
            FormsAuthentication.SignOut();
            Response.Redirect("~/Pages/Login.aspx");

        }
    }
}