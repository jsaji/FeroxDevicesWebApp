using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using WingtipToys.Models;

namespace WingtipToys.Checkout
{
  public partial class CheckoutReview : Page
  {
        private Order myOrder = new Order();
        private List<OrderDetail> myOrderDetails = new List<OrderDetail>();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                //myOrder = new Order();
                myOrder.OrderDate = DateTime.Now;
                myOrder.Username = User.Identity.Name;
                myOrder.FirstName = "default";
                myOrder.LastName = "default";
                myOrder.Address = "default";
                myOrder.City = "default";
                myOrder.State = "default";
                myOrder.PostalCode = "default";
                myOrder.Country = "Australia";
                myOrder.Email = "default";
                myOrder.Total = 0.00M;
                decimal total = 0;

                ProductContext _db = new ProductContext();
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

                String email = manager.GetEmail(User.Identity.GetUserId());
                Email.Text = email;
                
                // Get the shopping cart items and process them.
                using (WingtipToys.Logic.ShoppingCartActions usersShoppingCart = new WingtipToys.Logic.ShoppingCartActions())
                {
                    List<CartItem> myOrderList = usersShoppingCart.GetCartItems();
                    // Add OrderDetail information to the DB for each product purchased.
                    for (int i = 0; i < myOrderList.Count; i++)
                    {
                        // Create a new OrderDetail object.
                        var myOrderDetail = new OrderDetail()
                        {
                            OrderId = myOrder.OrderId,
                            Username = User.Identity.Name,
                            ProductId = myOrderList[i].ProductId,
                            Quantity = myOrderList[i].Quantity,
                            UnitPrice = myOrderList[i].Product.UnitPrice
                        };
                        total += (decimal)myOrderDetail.Quantity * (decimal)myOrderDetail.UnitPrice;

                        // Add OrderDetail to DB.
                        myOrderDetails.Add(myOrderDetail);
                        
                    }
                    myOrder.Total = total;

                    // Set OrderId.
                    Session["currentOrderId"] = myOrder.OrderId;
                    
                    // Display Order information.
                    List<Order> orderList = new List<Order>();
                    orderList.Add(myOrder);
                    //ShipInfo.DataSource = orderList;
                    //ShipInfo.DataBind();
                    Total.Text = "$" + total;
                    // Display OrderDetails.
                    OrderItemList.DataSource = myOrderList;
                    OrderItemList.DataBind();
                }
            
        }

        protected void SubmitOrder()
        {
           
        }
    
        


    protected void CheckoutConfirm_Click(object sender, EventArgs e)
    {
       if (IsValid)
            {
                ProductContext _db = new ProductContext();

                myOrder.FirstName =  FirstName.Text;
                myOrder.LastName = LastName.Text;
                myOrder.Address = Address.Text;
                myOrder.City = City.Text;
                myOrder.State = State.Text;
                myOrder.PostalCode = PostalCode.Text;
                myOrder.Email = Email.Text;

                _db.Orders.Add(myOrder);
                foreach (var item in myOrderDetails)
                {
                    _db.OrderDetails.Add(item);
                }
                _db.SaveChanges();

                Session["userCheckoutCompleted"] = "true";
                Response.Redirect("~/Checkout/CheckoutComplete.aspx");
            }
      
    }
  }
}