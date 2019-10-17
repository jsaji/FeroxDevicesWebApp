using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WingtipToys.Models;
using System.Web.ModelBinding;

namespace WingtipToys
{
  public partial class ProductDetails : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
            
    }

    public IQueryable<Product> GetProduct(
                        [QueryString("ProductID")] int? productId,
                        [RouteData] string productName)
    {
      var _db = new WingtipToys.Models.ProductContext();
            String StockText;
      IQueryable<Product> query = _db.Products;
      if (productId.HasValue && productId > 0)
      {
        query = query.Where(p => p.ProductID == productId);
      }
      else if (!String.IsNullOrEmpty(productName))
      {
        query = query.Where(p =>
                  String.Compare(p.ProductName, productName) == 0);
      }
      else
      {
        query = null;
      }
            foreach (var product in query)
            {
                if (product.Stock > 10) stock.Text = "More than 10 available";
                else if (product.Stock < 0) stock.Text = "On back order";
                else stock.Text = "Less than 10 available";
            }
      return query;
    }

        protected void productDetail_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}