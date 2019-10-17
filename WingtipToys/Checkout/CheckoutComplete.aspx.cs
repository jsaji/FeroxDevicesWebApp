using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;

namespace WingtipToys.Checkout
{
  public partial class CheckoutComplete : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

        // Verify user has completed the checkout process.
        if ((string)Session["userCheckoutCompleted"] != "true")
        {
          Session["userCheckoutCompleted"] = string.Empty;
          Response.Redirect("CheckoutError.aspx?" + "Desc=Unvalidated%20Checkout.");
        }

        string finalPaymentAmount = "";
        string PayerID = "";

        //bool ret = payPalCaller.DoCheckoutPayment(finalPaymentAmount, token, PayerID, ref decoder, ref retMsg);
        if (true)
        {


          // Clear shopping cart.
          using (WingtipToys.Logic.ShoppingCartActions usersShoppingCart =
              new WingtipToys.Logic.ShoppingCartActions())
          {
                    usersShoppingCart.ReduceStock();
            usersShoppingCart.EmptyCart();
          }

          // Clear order id.
          Session["currentOrderId"] = string.Empty;
        }
      
    }


    protected void Continue_Click(object sender, EventArgs e)
    {
      Response.Redirect("~/Default.aspx");
    }
  }
}