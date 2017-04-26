using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CIS411FinalProject.Controller
{
    public class Product
    {
        private string _productType;
        private int _productID;
        private string _title;
        private double _price;

        public string ProductType
        {
            get { return _productType; }
            set { _productType = value; }
        }

        public int ProductID
        {
            get { return _productID; }
            set { _productID = value; }
        }

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        public double Price
        {
            get { return _price; }
            set { _price = value; }
        }

        public double discountPercentage(int quantity)
        {
            if(quantity >= 5)
            {
                return 0.05;
            }
            else if(quantity >= 3)
            {
                return 0.02;
            }
            else
            {
                return 0;
            }
        }
    }
}