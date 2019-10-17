<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WingtipToys.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
 
    <asp:Button ID="ProductLink2" runat="server" Text="Manage Products" OnClick="ManageProductsButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
     <asp:Button ID="TransactionLink2" runat="server" Text="View Transactions" OnClick="ViewTransactionsButton_Click" />
</asp:Content>