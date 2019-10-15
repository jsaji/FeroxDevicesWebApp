<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutComplete.aspx.cs" Inherits="WingtipToys.Checkout.CheckoutComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Checkout Complete</h1>
    <p></p>
    <h3>Thank You & Enjoy your day!</h3>
    <p></p>
    <h3>Your items will be shipped to your address within 5 business days!</h3>
    <p></p>
    <hr />
    <asp:Button ID="Continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" />
</asp:Content>