<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WingtipToys.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Email:</dt>
                    <dd> <%: Email %>
                        <asp:HyperLink NavigateUrl="/Account/ManageEmail" Text="[Change]" Visible="false" ID="ChangeEmail" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManageEmail" Text="[Create]" Visible="false" ID="CreateEmail" runat="server" />
                    </dd>
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>Purchase History:</dt>
                    <dd>
                        <asp:GridView ID="CustomerTransactionView" runat="server" EmptyDataText="No purchases yet!" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" DataKeyNames="OrderId, ProductName" DataSourceID="CustomerTransactionSource" Height="150px" Width="1000px">

                            <Columns>
                            <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                            <asp:BoundField DataField="BranchName" HeaderText="Branch Name" SortExpression="BranchName" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                            <asp:BoundField DataField="UnitPrice" HeaderText="Current Price" SortExpression="UnitPrice" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="CustomerTransactionSource" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT Orders.OrderId as OrderId, Orders.OrderDate as OrderDate, Branches.BranchName as BranchName, Orders.Total as Total, Products.ProductName as ProductName, Products.UnitPrice as UnitPrice, OrderDetails.Quantity as Quantity FROM Orders, OrderDetails, Products, Branches WHERE Orders.branch = Branches.Username AND OrderDetails.OrderId=Orders.OrderId AND OrderDetails.ProductId = Products.ProductId AND Orders.Email = @Email">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="Email" DefaultValue="aaa@gmail.com" Name="Email" Type="String"></asp:SessionParameter>  
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
