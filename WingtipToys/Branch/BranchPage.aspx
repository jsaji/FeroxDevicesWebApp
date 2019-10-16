<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BranchPage.aspx.cs" Inherits="WingtipToys.Branch.BranchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Branch Management</h1>
 
    <asp:HyperLink ID="transactionLink" runat="server"  href="BranchPageTransactions" BorderColor="#3333FF" BorderWidth="2px" Height="30px" Width="152px" >Branch Transactions</asp:HyperLink>


</asp:Content>