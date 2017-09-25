using OnlinePizzaApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePizzaApplication.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateFields(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            var name = PizzaNameDropDown.SelectedValue;
            PizzaDetail PizzaObj = new PizzaDetail();
            var CurrentObj = db.PizzaDetails.Where(p => p.PizzaName == name).FirstOrDefault();
            if(CurrentObj!=null)
            { 
            desc.Text = CurrentObj.Description;
            price.Text = CurrentObj.Amount.ToString();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            PizzaDBEntity db = new PizzaDBEntity();
            PizzaSelected pizzaSelected = new PizzaSelected();
            var currentUser = db.UserDetails.Where(Obj => Obj.UserStatus == "Active").FirstOrDefault(); ;
            var PizzaExists = db.PizzaSelecteds.Where(obje => obje.PizzaDetail.PizzaName == PizzaNameDropDown.SelectedValue && obje.UserName==currentUser.Username).FirstOrDefault();
            if (PizzaExists != null)
            {
                var tempNumber = PizzaExists.NumberOfPizza;
                PizzaExists.NumberOfPizza = tempNumber + Convert.ToInt32(NumofPizzas.Text);
                PizzaExists.Amount = PizzaExists.NumberOfPizza * PizzaExists.PizzaDetail.Amount;
                db.SaveChanges();
            }
            else
            {
                var Object = db.PizzaDetails.Where(Obj => Obj.PizzaName == PizzaNameDropDown.SelectedValue).FirstOrDefault();
                pizzaSelected.PizzaID = Object.PizzaID;
                pizzaSelected.NumberOfPizza = Convert.ToInt32(NumofPizzas.Text);
                pizzaSelected.Amount = pizzaSelected.NumberOfPizza * Object.Amount;
                pizzaSelected.UserName = Session["UserName"].ToString();
                db.PizzaSelecteds.Add(pizzaSelected);
                db.SaveChanges();
            }
            Response.Redirect("Cart.aspx");
        }
    }
}