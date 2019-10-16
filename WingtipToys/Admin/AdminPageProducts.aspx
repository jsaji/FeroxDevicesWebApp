<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPageProducts.aspx.cs" Inherits="WingtipToys.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <h3>Add Product:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelAddCategory" runat="server">Category:</asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownAddCategory" runat="server" 
                    ItemType="WingtipToys.Models.Category" 
                    SelectMethod="GetCategories" DataTextField="CategoryName" 
                    DataValueField="CategoryID" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddProductName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddDescription" runat="server">Description:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddProductDescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Description required." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddProductPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label></td>
            <td>
                <asp:FileUpload ID="ProductImage" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image path required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Remove Product:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveProduct" runat="server">Product:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveProduct" runat="server" ItemType="WingtipToys.Models.Product" 
                    SelectMethod="GetProducts" AppendDataBoundItems="true" 
                    DataTextField="ProductName" DataValueField="ProductID" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveProductButton" runat="server" Text="Remove Product" OnClick="RemoveProductButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <h3>Edit Product:</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1290px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-Width="20%">
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
            </asp:BoundField>
            <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit Item" ShowHeader="True" Text="Edit" ItemStyle-Width="20%">
<ItemStyle Width="40%"></ItemStyle>
            </asp:ButtonField>
            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update Item" ShowHeader="True" Text="Update" ItemStyle-Width="20%">
<ItemStyle Width="20%"></ItemStyle>
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Wrap="False" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [Description] = @original_Description AND (([ImagePath] = @original_ImagePath) OR ([ImagePath] IS NULL AND @original_ImagePath IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL))" InsertCommand="INSERT INTO [Products] ([ProductName], [Description], [ImagePath], [UnitPrice], [CategoryID]) VALUES (@ProductName, @Description, @ImagePath, @UnitPrice, @CategoryID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [Description] = @Description, [ImagePath] = @ImagePath, [UnitPrice] = @UnitPrice, [CategoryID] = @CategoryID WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [Description] = @original_Description AND (([ImagePath] = @original_ImagePath) OR ([ImagePath] IS NULL AND @original_ImagePath IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_ImagePath" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Double" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ImagePath" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Double" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_ImagePath" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Double" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>