<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPageBranches.aspx.cs" Inherits="WingtipToys.Admin.AdminPageBranches" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Branch Administration</h1>
    <hr />
    <h3>View Branches</h3>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BranchID" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" Width="1132px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BranchID" HeaderText="BranchID" InsertVisible="False" ReadOnly="True" SortExpression="BranchID" />
                <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                <asp:BoundField DataField="StreetNo" HeaderText="StreetNo" SortExpression="StreetNo" />
                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
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
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT * FROM [Branches]"></asp:SqlDataSource>
    </p>
    
</asp:Content>