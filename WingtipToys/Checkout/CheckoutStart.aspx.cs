﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WingtipToys.Checkout
{
  public partial class CheckoutStart : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {

                Response.Redirect("/Checkout/CheckoutReview.aspx");
                       
            }
        }
    }
}