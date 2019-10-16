<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WingtipToys.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
 
    <asp:HyperLink ID="HyperLink1" runat="server"  href="AdminPageProducts" BorderColor="#3333FF" BorderWidth="2px" Height="34px" Width="114px" >HyperLink</asp:HyperLink>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
    <asp:HyperLink ID="HyperLink2" runat="server"  href="AdminPageTransactions" BorderColor="#3333FF" BorderWidth="2px" Height="34px" Width="114px" >HyperLink</asp:HyperLink>

</asp:Content>