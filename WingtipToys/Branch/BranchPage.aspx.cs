using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;

namespace WingtipToys.Branch
{
  public partial class BranchPage : System.Web.UI.Page
  {
        protected void ViewTransactionsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Branch/BranchPageTransactions.aspx");
        }
    }
}