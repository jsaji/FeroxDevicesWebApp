<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BranchPage.aspx.cs" Inherits="WingtipToys.Branch.BranchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Branch Management</h1>
 
    <asp:Button ID="TransactionLink2" runat="server" Text="View Branch Transactions" OnClick="ViewTransactionsButton_Click" />

</asp:Content>