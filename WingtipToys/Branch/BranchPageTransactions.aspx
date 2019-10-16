<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BranchPageTransactions.aspx.cs" Inherits="WingtipToys.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Branch Transactions</h1>
    <hr />
    <h3>View Transactions</h3>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="PaymentTransactionId" HeaderText="PaymentTransactionId" SortExpression="PaymentTransactionId" />
                <asp:CheckBoxField DataField="HasBeenShipped" HeaderText="HasBeenShipped" SortExpression="HasBeenShipped" />
                <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderId] = @original_OrderId AND [OrderDate] = @original_OrderDate AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [Email] = @original_Email AND [Total] = @original_Total AND (([PaymentTransactionId] = @original_PaymentTransactionId) OR ([PaymentTransactionId] IS NULL AND @original_PaymentTransactionId IS NULL)) AND [HasBeenShipped] = @original_HasBeenShipped AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL))" InsertCommand="INSERT INTO [Orders] ([OrderDate], [Username], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [Email], [Total], [PaymentTransactionId], [HasBeenShipped], [branch]) VALUES (@OrderDate, @Username, @FirstName, @LastName, @Address, @City, @State, @PostalCode, @Country, @Phone, @Email, @Total, @PaymentTransactionId, @HasBeenShipped, @branch)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [OrderDate] = @OrderDate, [Username] = @Username, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Email] = @Email, [Total] = @Total, [PaymentTransactionId] = @PaymentTransactionId, [HasBeenShipped] = @HasBeenShipped, [branch] = @branch WHERE [OrderId] = @original_OrderId AND [OrderDate] = @original_OrderDate AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [Email] = @original_Email AND [Total] = @original_Total AND (([PaymentTransactionId] = @original_PaymentTransactionId) OR ([PaymentTransactionId] IS NULL AND @original_PaymentTransactionId IS NULL)) AND [HasBeenShipped] = @original_HasBeenShipped AND (([branch] = @original_branch) OR ([branch] IS NULL AND @original_branch IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OrderId" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_PostalCode" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Total" Type="Decimal" />
                <asp:Parameter Name="original_PaymentTransactionId" Type="String" />
                <asp:Parameter Name="original_HasBeenShipped" Type="Boolean" />
                <asp:Parameter Name="original_branch" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Total" Type="Decimal" />
                <asp:Parameter Name="PaymentTransactionId" Type="String" />
                <asp:Parameter Name="HasBeenShipped" Type="Boolean" />
                <asp:Parameter Name="branch" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Total" Type="Decimal" />
                <asp:Parameter Name="PaymentTransactionId" Type="String" />
                <asp:Parameter Name="HasBeenShipped" Type="Boolean" />
                <asp:Parameter Name="branch" Type="String" />
                <asp:Parameter Name="original_OrderId" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_PostalCode" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Total" Type="Decimal" />
                <asp:Parameter Name="original_PaymentTransactionId" Type="String" />
                <asp:Parameter Name="original_HasBeenShipped" Type="Boolean" />
                <asp:Parameter Name="original_branch" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    
</asp:Content>