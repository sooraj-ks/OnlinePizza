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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            UserDetail User = new UserDetail();
            var check = db.UserDetails.Where(Obj => Obj.Username == Username.Text).FirstOrDefault();
            if (check != null)
            {
                if (check.Password == Password.Text)
                {
                    Session["User"] = check.Name;
                    Session["UserName"] = check.Username;
                    check.UserStatus = "Active";
                    db.SaveChanges();
                    FormsAuthentication.RedirectFromLoginPage(Username.Text, CheckBox1.Checked);
                }
                else
                {
                    Alert.Text = "Password is Incorrect!";
                }
            }
            else
            {
                Alert.Text = "Username is Incorrect!";
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration/Register.aspx");
        }
    }
}