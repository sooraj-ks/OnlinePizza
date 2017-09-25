using OnlinePizzaApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizzaApplication.Pages
{
    public partial class Cart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            var Object = db.PizzaSelecteds.Where(Obj => Obj.UserDetail.UserStatus == "Active").FirstOrDefault();
            if(Object!=null)
            {
                var Amount = from ps in db.PizzaSelecteds
                                  where ps.UserName == ps.UserDetail.Username
                                  select ps.Amount;
                var sum = Amount.Select(c => c.Value).Sum();
                TotalAmount.Text = Convert.ToString(sum);
            }
            else
            {
                EmptyCart.Text = "Your cart is Empty!";
                TotalAmount.Text = "";
            }
        }

        protected void AddMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void ConfirmBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bill.aspx");
        }

    }
}