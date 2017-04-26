using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CIS411FinalProject.Controller
{
    public class CartObject
    {
        private int _quantity;
        private Product _obj;

        public int Quantity
        {
            get { return _quantity; }
        }

        public Product Obj
        {
            get { return _obj; }
        }

        public CartObject(int q, Product p)
        {
            _quantity = q;
            _obj = p;
        }
    }
}