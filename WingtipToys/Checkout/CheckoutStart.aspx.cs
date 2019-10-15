using System;
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
      //NVPAPICaller payPalCaller = new NVPAPICaller();

      if (Session["payment_amt"] != null)
      {
        string amt = Session["payment_amt"].ToString();

      //  bool ret = payPalCaller.ShortcutExpressCheckout(amt, ref token, ref retMsg);
      //  if (ret)
      //  {
      //    Session["token"] = token;
      //    Response.Redirect(retMsg);
      //  }
      //  else
      //  {
      //    Response.Redirect("CheckoutError.aspx?" + retMsg);
      //  }
      //}
      //else
      //{
      //  Response.Redirect("CheckoutError.aspx?ErrorCode=AmtMissing");
      }
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