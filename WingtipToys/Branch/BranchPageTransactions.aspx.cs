using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using WingtipToys.Logic;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using System.Diagnostics;

namespace WingtipToys.Branch
{
    public partial class BranchPageTransactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            
            Session["BranchEmail"] = Convert.ToString(manager.GetEmail(User.Identity.GetUserId()));
        }
    }
}