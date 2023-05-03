<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SkeletonsDropDown.aspx.cs" Inherits="Skeletons_com.SkeletonsDropDown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    
    <ContentTemplate>
        <div class="container">
        <h2> Skeletons Drop Down </h2>
    </div>
    <section>
        <div class="container">
            <div class="container">
    <%--  Add a DropDownList control to the page that will be used to select the type.    --%>
    <asp:DropDownList ID="ddlType" runat="server" DataSourceID="dsType" DataTextField="SkeletonsType" DataValueField="SkeletonsType" AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="dsType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
        SelectCommand="SELECT DISTINCT SkeletonsType FROM Inventory ORDER BY SkeletonsType">
    </asp:SqlDataSource>
</div>

<div class="container">
    <%-- Add an ASP.NET GridView control to the page that will display all the available items for the selected type. --%>
    <asp:GridView ID="gvItems" runat="server" DataSourceID="dsItems" AutoGenerateColumns="False" DataKeyNames="SkeletonsID" OnRowDataBound="gvItems_RowDataBound" OnRowCreated="gvItems_RowCreated" OnRowCommand="gvItems_RowCommand">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="item" data-skeleton-id='<%# Eval("SkeletonsID") %>'>
                        <asp:Image ID="imgItem" runat="server" ImageUrl='<%# Eval("SkeletonImagePath") %>' Width="300" Height="300" />
                        <p><%# Eval("SkeletonDescription") %></p>
                        <p><%# string.Format("{0:c}", Eval("SkeletonPrice")) %></p>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsItems" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
          SelectCommand="SELECT SkeletonsID, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonAddedDate, SkeletonAddedTime, SkeletonImageBinary, SkeletonImageFileName, SkeletonAvalible, SkeletonQuantity, SkeletonForSell, SkeletonForBuy, SkeletonForLease FROM Inventory WHERE SkeletonsType = @SkeletonsType">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlType" PropertyName="SelectedValue" Name="SkeletonsType" />
        </SelectParameters>
    </asp:SqlDataSource>    
</div>

<asp:HiddenField ID="hfSelectedItemId" runat="server" />
<div class="container" id="detailsPane" runat="server" visible="false">
    <asp:DetailsView ID="dvItem" runat="server" DataSourceID="dsItem" AutoGenerateRows="False">
        <Fields>
            <asp:BoundField DataField="SkeletonsType" HeaderText="Type" />
            <asp:BoundField DataField="SkeletonDescription" HeaderText="Description" />
            <asp:ImageField DataImageUrlField="SkeletonImagePath" ControlStyle-Width="300" ControlStyle-Height="300" HeaderText="Photo" />
            <asp:BoundField DataField="SkeletonPrice" HeaderText="Price" DataFormatString="{0:c}" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="dsItem" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
        SelectCommand="SELECT SkeletonsID, SkeletonsType, SkeletonDescription, SkeletonConditionRating, SkeletonImagePath, SkeletonPrice, SkeletonAddedDate, SkeletonAddedTime, SkeletonImageBinary, SkeletonImageFileName, SkeletonAvalible, SkeletonQuantity, SkeletonForSell, SkeletonForBuy, SkeletonForLease FROM Inventory WHERE SkeletonsID = @SkeletonsID">
        <SelectParameters>
            <asp:ControlParameter ControlID="hfSelectedItemId" PropertyName="Value" Name="SkeletonsID" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
        </div>
    </section>
        
      </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
