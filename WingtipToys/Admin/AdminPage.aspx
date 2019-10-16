<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WingtipToys.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
 
    <asp:HyperLink ID="ProductLink" runat="server"  href="AdminPageProducts" BorderColor="#3333FF" BorderWidth="2px" Height="34px" Width="114px" >Manage Products</asp:HyperLink>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
    <asp:HyperLink ID="TransactionLink" runat="server"  href="AdminPageTransactions" BorderColor="#3333FF" BorderWidth="2px" Height="34px" Width="114px" >Review Transactions</asp:HyperLink>

</asp:Content>