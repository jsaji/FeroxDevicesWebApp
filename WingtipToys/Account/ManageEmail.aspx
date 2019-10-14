<%@ Page Title="Manage Email" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageEmail.aspx.cs" Inherits="WingtipToys.Account.ManageEmail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="form-horizontal">
        <section id="emailForm">
            <asp:PlaceHolder runat="server" ID="setEmail" Visible="false">
                <p>
                    You do not have a local email for this site. Add a local
                        email so you can log in without an external login.
                </p>
                <div class="form-horizontal">
                    <h4>Set Email Form</h4>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="email" TextMode="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                                CssClass="text-danger" ErrorMessage="The email field is required."
                                Display="Dynamic" ValidationGroup="SetEmail" />
                            <asp:ModelErrorMessage runat="server" ModelStateKey="NewEmail" AssociatedControlID="email"
                                CssClass="text-danger" SetFocusOnError="true" />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="confirmEmail" CssClass="col-md-2 control-label">Confirm email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="confirmEmail" TextMode="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmEmail"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm email field is required."
                                ValidationGroup="SetEmail" />
                            <asp:CompareValidator runat="server" ControlToCompare="Email" ControlToValidate="confirmEmail"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The email and confirmation email do not match."
                                ValidationGroup="SetEmail" />

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Set Email" ValidationGroup="SetEmail" OnClick="SetEmail_Click" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>

            <asp:PlaceHolder runat="server" ID="changeEmailHolder" Visible="false">
                <div class="form-horizontal">
                    <h4>Change Email Form</h4>
                    <hr />
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                    <div class="form-group">
                        <asp:Label runat="server" ID="CurrentEmailLabel" AssociatedControlID="CurrentEmail" CssClass="col-md-2 control-label">Current email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="CurrentEmail" TextMode="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentEmail"
                                CssClass="text-danger" ErrorMessage="The current email field is required."
                                ValidationGroup="ChangeEmail" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="NewEmailLabel" AssociatedControlID="NewEmail" CssClass="col-md-2 control-label">New email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="NewEmail" TextMode="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="NewEmail"
                                CssClass="text-danger" ErrorMessage="The new email is required."
                                ValidationGroup="ChangeEmail" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="ConfirmNewEmailLabel" AssociatedControlID="ConfirmNewEmail" CssClass="col-md-2 control-label">Confirm new email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="ConfirmNewEmail" TextMode="Email" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewEmail"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="Confirm new email is required."
                                ValidationGroup="ChangeEmail" />
                            <asp:CompareValidator runat="server" ControlToCompare="NewEmail" ControlToValidate="ConfirmNewEmail"
                                CssClass="text-danger" Display="Dynamic" ErrorMessage="The new email and confirmation email do not match."
                                ValidationGroup="ChangeEmail" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Change Email" ValidationGroup="ChangeEmail" OnClick="ChangeEmail_Click" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
        </section>
    </div>
</asp:Content>
