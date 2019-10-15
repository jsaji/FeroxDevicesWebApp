<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutReview.aspx.cs" Inherits="WingtipToys.Checkout.CheckoutReview" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Order Review</h1>
    <p></p>
    <h3 style="padding-left: 33px">Products:</h3>
    <asp:GridView ID="OrderItemList" runat="server" AutoGenerateColumns="False" GridLines="Both" CellPadding="10" Width="500" BorderColor="#efeeef" BorderWidth="33">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText=" Product ID" />
            <asp:BoundField DataField="Product.ProductName" HeaderText=" Product Name" />
            <asp:BoundField DataField="Product.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        </Columns>
    </asp:GridView>
    <h3>Order Total:</h3>
    <br />
    <asp:Label ID="Total" runat="server"></asp:Label>
    <div>
        <section id="detailsForm">
            <div class="form-horizontal">
                    <h3>Shipping Address:</h3>
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="FirstName" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName" CssClass="text-danger" ErrorMessage="The first name field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="LastName" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName" CssClass="text-danger" ErrorMessage="The last name field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" ReadOnly="true" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Address" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Address" CssClass="text-danger" ErrorMessage="The address field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label">City</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="City" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="City" CssClass="text-danger" ErrorMessage="The city field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="State" CssClass="col-md-2 control-label">State</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="State" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="State" CssClass="text-danger" ErrorMessage="The state field is required." />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="PostalCode" CssClass="col-md-2 control-label">PostalCode</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="PostalCode" TextMode="SingleLine" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCode" CssClass="text-danger" ErrorMessage="The postal code field is required." />
                        </div>
                    </div>

                    <p></p>
                    
                </div>
            </section>
    </div>
    <p></p>
    <hr />
    <asp:Button ID="CheckoutConfirm" runat="server" Text="Complete Order" OnClick="CheckoutConfirm_Click" />
</asp:Content>
