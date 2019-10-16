<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WingtipToys.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact our branches for any enquiries!</h3>
    <asp:ListView ID="productList" runat="server" 
                DataKeyNames="BranchID" GroupItemCount="3"
                ItemType="WingtipToys.Models.Branch" SelectMethod="GetBranches">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No branches were found.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <h4><%#:Item.BranchName%></h4>
                                    <br />
                                    <span>
                                        <b>Address: </b>
                                        <%#:Item.StreetNo + " " + Item.Street + ", " + Item.Suburb + " "  + Item.State + " " + Item.PostCode + " " + Item.Country%>
                                    </span>
                                    <br />
                                    <br />
                                    <span>
                                        <b>Email: </b><a href="mailto:<%#:Item.Username%>"><%#:Item.Username%></a>
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
