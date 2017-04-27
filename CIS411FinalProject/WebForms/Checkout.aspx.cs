using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CIS411FinalProject.Controller;
using CIS411FinalProject.Model;

namespace CIS411FinalProject.WebForms
{
    public partial class Checkout : System.Web.UI.Page
    {
        static List<CartObject> cartObj = new List<CartObject>();
        protected void Page_Load(object sender, EventArgs e)
        {
            cartObj = getCart();

            foreach(CartObject c in cartObj)
            {
                if (!IsPostBack)
                    cartListBox.Items.Add(c.Obj.Title +"-"+ c.Obj.Price.ToString("c"));
            }
        }

        protected void AcceptChangeBtn_Click(object sender, EventArgs e)
        {
            cartObj = getCart();
            CartObject selectedCartObject = cartObj[cartListBox.SelectedIndex];
            int q;
            if(int.TryParse(quantityTxtBox.Text, out q))
            {
                if (Session["cart"] != null)
                {
                    if (q == 0)
                    {
                        cartObj.Remove(selectedCartObject);
                        cartListBox.Items.Remove(cartListBox.SelectedItem);
                        Session["cart"] = cartObj;
                    }
                    else if(q > 0)
                    {
                        cartObj[cartListBox.SelectedIndex] = new CartObject(q, selectedCartObject.Obj);
                        Session["cart"] = cartObj;
                    }
                    else
                    {
                        messageLbl.Text = "The quantity entered must be greater than zero";
                    }
                }
            }
            else
            {
                messageLbl.Text = "Please enter a valid quantity";
            }
        }

        protected void ExitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExitPage.aspx");
        }

        public List<CartObject> getCart()
        {
            List<CartObject> result;
            result = (List<CartObject>)Session["cart"];
            return result;
        }

        protected void cartListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            quantityTxtBox.Enabled = true;
            cartObj = getCart();
            CartObject selectedCartObject = cartObj[cartListBox.SelectedIndex];
            quantityTxtBox.Text = selectedCartObject.Quantity.ToString();
        }

        protected void PayBtn_Click(object sender, EventArgs e)
        {
            cartObj = getCart();
            double totalPrice = 0;
            double totalDiscount = 0;

            foreach(CartObject c in cartObj)
            {
                double objPrice = c.Obj.Price;
                int quantity = c.Quantity;
                double price = objPrice * quantity;
                double discount = c.Obj.discountPercentage(quantity);
                totalPrice += price;
                totalDiscount += (price * discount);
            }

            TotalLbl.Text = "Total amount is " + (totalPrice - totalDiscount).ToString("c") + ". You got a discount of " + totalDiscount.ToString("c");
        }
    }
}