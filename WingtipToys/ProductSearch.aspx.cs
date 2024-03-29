﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using System.Web.ModelBinding;
using System.Web.Routing;

namespace WingtipToys
{
  public partial class ProductSearch : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
            

    }



    public IQueryable<Product> GetResults()
        {
            String search = Request.QueryString["srch"];
            if (!String.IsNullOrEmpty(search))
            {
                Page.Title = "Search Results for " + search + ".";
                return GetProducts(0, search);

            }
            else return GetProducts(0, "");
        }



    public IQueryable<Product> GetProducts(
                        [QueryString("id")] int? categoryId,
                        [RouteData] string itemName)
    {
      var _db = new WingtipToys.Models.ProductContext();
      IQueryable<Product> query = _db.Products;

      if (categoryId.HasValue && categoryId > 0)
      {
        query = query.Where(p => p.CategoryID == categoryId);
      }

      if (!String.IsNullOrEmpty(itemName))
      {
        query = query.Where(p => p.ProductName.Contains(itemName));
      }
      return query;
    }
  }
}