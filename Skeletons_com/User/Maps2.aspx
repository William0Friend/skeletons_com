<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maps2.aspx.cs" Inherits="Skeletons_com.User.Maps2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h2>Enter Addresses</h2>
            <asp:TextBox ID="TextBoxAddress1" runat="server" CssClass="form-control" Placeholder="Address 1"></asp:TextBox>
            <asp:TextBox ID="TextBoxAddress2" runat="server" CssClass="form-control" Placeholder="Address 2"></asp:TextBox>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Show Maps" OnClick="ButtonSubmit_Click" CssClass="btn btn-primary" />

            <h2>Google Maps 1</h2>
            <div id="map1" style="width: 100%; height: 400px;"></div>

            <h2>Google Maps 2</h2>
            <div id="map2" style="width: 100%; height: 400px;"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
