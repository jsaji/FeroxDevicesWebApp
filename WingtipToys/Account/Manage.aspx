<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WingtipToys.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Email:</dt>
                    <dd> <%: Email %>
                        <asp:HyperLink NavigateUrl="/Account/ManageEmail" Text="[Change]" Visible="false" ID="ChangeEmail" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManageEmail" Text="[Create]" Visible="false" ID="CreateEmail" runat="server" />
                    </dd>
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                    </dd>
                    <dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />
                    </dd>
                    <%--
                        Phone Numbers can used as a second factor of verification in a two-factor authentication system.
                        See <a href="http://go.microsoft.com/fwlink/?LinkId=313242">this article</a>
                        for details on setting up this ASP.NET application to support two-factor authentication using SMS.
                        Uncomment the following block after you have set up two-factor authentication
                    --%>

                    <dt>Phone Number:</dt>
                    <%--
                    <% if (HasPhoneNumber)
                       { %>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Add]" />
                    </dd>
                    <% }
                       else
                       { %>
                    <dd>
                        <asp:Label Text="" ID="PhoneNumber" runat="server" />
                        <asp:HyperLink NavigateUrl="/Account/AddPhoneNumber" runat="server" Text="[Change]" /> &nbsp;|&nbsp;
                        <asp:LinkButton Text="[Remove]" OnClick="RemovePhone_Click" runat="server" />
                    </dd>
                    <% } %>
                    --%>

                    <dt>Two-Factor Authentication:</dt>
                    <dd>
                        <p>
                            There are no two-factor authentication providers configured. See <a href="http://go.microsoft.com/fwlink/?LinkId=313242">this article</a>
                            for details on setting up this ASP.NET application to support two-factor authentication.
                        </p>
                    </dd>
                </dl>
                <p>
                    Order History</p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource4" Height="150px" Width="1304px">
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT * FROM [Orders] WHERE ([Username] = @Username)">
                        <SelectParameters>
                            <asp:Parameter Name="Username" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </p>
                        <% if (TwoFactorEnabled)
                          { %> 
                        <%--
                        Enabled
                        <asp:LinkButton Text="[Disable]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                        --%>
                        <% }
                          else
                          { %> 
                        <%--
                        Disabled
                        <asp:LinkButton Text="[Enable]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                        --%>
                        <% } %>

            </div>
        </div>
    </div>

</asp:Content>
