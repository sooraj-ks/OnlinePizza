using OnlinePizzaApplication.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizzaApplication.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void RegButton_Click(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            UserDetail User = new UserDetail();
            if (Username.Text != null)
            {
                var check = db.UserDetails.Where(Obj => Obj.Username == Username.Text).FirstOrDefault();
                if (check == null)
                {
                    User.Name = InputName.Text;
                    User.Username = Username.Text;
                    User.Password = Password.Text;
                    User.PhoneNumber = PhoneNumber.Text;
                    User.Address = Address.Text;
                    db.UserDetails.Add(User);
                    db.SaveChanges();
                    Response.Redirect("~/Pages/Login.aspx");
                }
                else
                {
                    Alert.Text = "Username already exists!";
                }
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Login.aspx");
        }
    }
}