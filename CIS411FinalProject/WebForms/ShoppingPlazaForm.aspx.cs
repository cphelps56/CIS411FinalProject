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
    public partial class ShoppingPlazaForm : System.Web.UI.Page
    {

        static List<CartObject> cart = new List<CartObject>();
        List<Product> allProducts;
        List<Product> bookList = new List<Product>();
        List<Product> dvdList = new List<Product>();
        static List<int> ints = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            Session.Add("Cart", cart);
            BuildProducts bp = new BuildProducts();
            allProducts = getAllProducts();

            bookList = getBooks();
            dvdList = getDvds();

            if(!IsPostBack)
            {
                foreach( Product p in bookList)
                {
                    bookDropDown.Items.Add(p.Title);
                }

                foreach(Product p in dvdList)
                {
                    dvdDropDown.Items.Add(p.Title);
                }

                BookPriceValLbl.Text = bookList[bookDropDown.SelectedIndex].Price.ToString("c");
                DVDPriceValLbl.Text = dvdList[dvdDropDown.SelectedIndex].Price.ToString("c");
            }
        }

        protected void bookDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            bookList = getBooks();
            BookPriceValLbl.Text = bookList[bookDropDown.SelectedIndex].Price.ToString("c");
        }

        protected void dvdDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            dvdList = getDvds();
            DVDPriceValLbl.Text = dvdList[dvdDropDown.SelectedIndex].Price.ToString("c");
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                MessageLbl.Text = "";
                cart = getCart();
                int d;
                int b;

                if (int.TryParse(bookQuantityTxtBox.Text, out b) | int.TryParse(dvdQuantityTxtBox.Text, out d))
                {
                    if (b > 0)
                    {
                        bookList = getBooks();
                        Product selectedBook = bookList[bookDropDown.SelectedIndex];
                        CartObject co = new CartObject(b, selectedBook);
                        if (!checkForDuplicate(selectedBook, cart))
                        {
                            cart.Add(co);
                            MessageLbl.Text = "Item added: " + selectedBook.Title.ToString() + " Quantity: " + b.ToString();
                        }
                        else
                        {
                            MessageLbl.Text = "The item " + selectedBook.Title.ToString()+" has already been added to the cart. Please select a different item.";
                        }
                    }
                    if (d > 0)
                    {
                        dvdList = getDvds();
                        Product selectedDvd = dvdList[dvdDropDown.SelectedIndex];
                        CartObject co = new CartObject(d, selectedDvd);
                        if (!checkForDuplicate(selectedDvd, cart))
                        {
                            cart.Add(co);
                            MessageLbl.Text += System.Environment.NewLine + System.Environment.NewLine+ " Item added: " + selectedDvd.Title.ToString() + " Quantity: " + d.ToString();
                        }
                        else
                        {
                            MessageLbl.Text += "The item "+ selectedDvd.Title.ToString() +" has already been added to the cart. Please select a different item.";
                        }
                    }
                    Session["cart"] = cart;
                }
                else
                {
                    MessageLbl.Text = "One of the quantities must be more than 0. Otherwise, Please Click Exit.";
                }
            }
        }

        protected void checkoutBtn_Click(object sender, EventArgs e)
        {
            cart = (List<CartObject>)Session["cart"];
            if(cart.Count != 0)
            {
                Response.Redirect("Checkout.aspx");
            }
            else
            {
                MessageLbl.Text = "You must have at least one item in your cart to proceed to the checkout screen.";
            }
        }

        protected void ExitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExitPage.aspx");
        }

        public List<Product> getBooks()
        {
            List<Product> result = new List<Product>();
            allProducts = (List<Product>)Session["AllProducts"];
            var books =
                from p in allProducts
                where p.ProductType == "Book"
                select p;

            foreach(Product p in books)
            {
                result.Add(p);
            }

            return result;
        }

        public List<Product> getDvds()
        {
            List<Product> result = new List<Product>();
            allProducts = (List<Product>)Session["AllProducts"];
            var dvds =
                from p in allProducts
                where p.ProductType == "DVD"
                select p;

            foreach (Product p in dvds)
            {
                result.Add(p);
            }

            return result;
        }

        public List<Product> getAllProducts()
        {
            List<Product> result = (List<Product>)Session["AllProducts"];
            return result;
        }

        public List<CartObject> getCart()
        {
            List<CartObject> result = (List<CartObject>)Session["Cart"];
            return result;
        }

        public bool checkForDuplicate (Product product, List<CartObject> cart)
        {
            bool result = false;
            foreach(CartObject c in cart)
            {
                if(product.ProductID == c.Obj.ProductID)
                {
                    result = true;
                }
            }
            return result;
        }
    }
}