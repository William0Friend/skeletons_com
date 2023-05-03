<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myUserAccount.aspx.cs" Inherits="Skeletons_com.Account.myUserAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h2>My Account</h2>
    <asp:Label ID="LabelUserID" runat="server" Text="User ID: "></asp:Label>
    <asp:Label ID="LabelName" runat="server" Text="Name: "></asp:Label>
    <asp:Label ID="LabelAddress" runat="server" Text="Address: "></asp:Label>
    <asp:Label ID="LabelPhone" runat="server" Text="Phone: "></asp:Label>
    <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label>
    <asp:Button ID="ButtonEdit" runat="server" Text="Edit" OnClick="ButtonEdit_Click" />
    <asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
</  div>
</asp:Content>
