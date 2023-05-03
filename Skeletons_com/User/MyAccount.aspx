<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Skeletons_com.User.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/MyAccount.aspx" OnAuthenticate="Login1_Authenticate"></asp:Login>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

    <%-- <ContentTemplate>
        <label>Name:</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <label>Address:</label>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        <label>Phone:</label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <br />
        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <<br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </ContentTemplate>


    <h1>Update Account</h1>

    <asp:Label ID="MessageLabel" runat="server"></asp:Label>

    <asp:Button ID="EditButton" runat="server" Text="Edit Profile" OnClick="EditButton_Click" Visible="false" />
    <asp:Panel ID="EditPanel" runat="server" Visible="false">
        <h2>Edit Profile</h2>

        <asp:Label ID="UserIDLabel" runat="server" Text="User ID:"></asp:Label>
        <asp:TextBox ID="UserIDTextBox" runat="server" ReadOnly="true"></asp:TextBox><br />

        <asp:Label ID="NameLabel" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox><br />

        <asp:Label ID="AddressLabel" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox><br />

        <asp:Label ID="PhoneLabel" runat="server" Text="Phone:"></asp:Label>
        <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox><br />

        <asp:Label ID="EmailLabel" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox><br />

        <asp:Button ID="UpdateButton" runat="server" Text="Update Profile" OnClick="UpdateButton_Click" />
        <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
    </asp:Panel>--%>
     
    <asp:LoginView ID="LoginViewControl" runat="server">
<LoggedInTemplate>
<div>
<h2>My Account</h2>
<p>Welcome, <asp:Label ID="UserNameLabel" runat="server" /></p>
<p>User ID: <asp:TextBox ID="UserIdTextBox" runat="server" /></p>
<p>First Name: <asp:TextBox ID="FirstNameTextBox" runat="server" /></p>
<p>Last Name: <asp:TextBox ID="LastNameTextBox" runat="server" /></p>
<p>Address: <asp:TextBox ID="AddressTextBox" runat="server" /></p>
<p>Email: <asp:TextBox ID="EmailTextBox" runat="server" /></p>
<br />
<asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="ButtonEdit_Click" />
<asp:Button ID="UpdateButton" runat="server" Text="Update" OnClick="ButtonUpdate_Click" style="display:none;" />
<asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" style="display:none;" />
<asp:Label ID="LabelError" runat="server" ForeColor="Red" Visible="false" />
</div>
</LoggedInTemplate>
<AnonymousTemplate>
<p>You must be logged in to view your account information.</p>
</AnonymousTemplate>
</asp:LoginView>

          </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
