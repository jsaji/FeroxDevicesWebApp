<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPageTransactions.aspx.cs" Inherits="WingtipToys.Admin.AdminPageTransactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Transaction Administration</h1>
    <hr />
    <h3>View Transactions</h3>
    <p>
        <asp:GridView ID="AllTransactionsView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderId, ProductName" DataSourceID="AllTransactionsSource" ForeColor="#333333" GridLines="None" Width="1200px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="Order ID" SortExpression="OrderId" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                <asp:BoundField DataField="BranchName" HeaderText="Branch Name" SortExpression="BranchName" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Email" HeaderText="User" SortExpression="Email" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Current Price" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
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
        <asp:SqlDataSource ID="AllTransactionsSource" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT Orders.OrderId as OrderId, Orders.OrderDate as OrderDate, Branches.BranchName as BranchName, Orders.Total as Total, Orders.Email as Email, Products.ProductName as ProductName, Products.UnitPrice as UnitPrice, OrderDetails.Quantity as Quantity FROM Orders, OrderDetails, Products, Branches WHERE Orders.branch = Branches.Username AND OrderDetails.OrderId=Orders.OrderId AND OrderDetails.ProductId = Products.ProductId"></asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    
</asp:Content>