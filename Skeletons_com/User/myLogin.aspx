<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myLogin.aspx.cs" Inherits="Skeletons_com.User.myLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LoginView ID="LoginViewControl" runat="server">
    <LoggedInTemplate>
        <p>Welcome, <asp:LoginName runat="server" />!</p>
        <p><a href="MyAccount.aspx">My Account</a></p>
        <p><a href="Logout.aspx">Logout</a></p>
    </LoggedInTemplate>
    <AnonymousTemplate>
        <p>Please log in to access your account.</p>
        <p><a href="Login.aspx">Login</a></p>
        <p><a href="Register.aspx">Register</a></p>
    </AnonymousTemplate>
</asp:LoginView>
</asp:Content>
