<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TypeSelector.aspx.cs" Inherits="Skeletons_com.TypeSelector" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <style>
    .hover-image-container {
        position: absolute;
    }

    .hover-image-container .hover-image {
        display: none;
        position: absolute;
        z-index: 1;
    }

    .hover-image-container .hover-description {
        display: none;
        position: absolute;
        z-index: 1;
    }

    .hover-image-container:hover .hover-image,
    .hover-image-container:hover .hover-description {
        display: block;
    }
</style>

    <script>
    $(document).ready(function () {
        $('#<%= GridViewInventory.ClientID %> .hover-image-container').hover(
            function () {
                var imagePath = $(this).data('image');
                var description = $(this).data('description');
                $('#<%= ImageSkeleton.ClientID %>').attr('src', imagePath);
                $('#<%= LabelDescription.ClientID %>').text(description);
            },
            function () {
                $('#<%= ImageSkeleton.ClientID %>').attr('src', '');
                $('#<%= LabelDescription.ClientID %>').text('');
            }
        );
    });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <%-- 
                            TODO:
        Create a new ASP.NET Web Forms page or use an existing one.

Add a DropDownList, GridView, DetailsView, and Image control to your page. The DropDownList will be used to filter the results, the GridView to display the results, and the DetailsView to show more information about the selected item. The Image control will display the image when hovering over the result.

Add a SqlDataSource control to your page, which will be used to connect to the database and provide data to the DropDownList, GridView, and DetailsView controls.

Configure the SqlDataSource control to use your ConnectionStringSkelenventory connection string and set the appropriate SELECT command for each control.
        
        --%>
<div class="container">
<%-- Sql datasource for the dropdown --%>
 <asp:SqlDataSource ID="SqlDataSourceDropDown" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
    SelectCommand="SELECT DISTINCT [SkeletonsType] FROM [Inventory]">
</asp:SqlDataSource>   
<%-- Sql datasource for the GridView --%>
<asp:SqlDataSource ID="SqlDataSourceGridView" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
    SelectCommand="SELECT [SkeletonsID], [SkeletonsOwner], [SkeletonsType], [SkeletonDescription], [SkeletonImagePath] FROM [Inventory] WHERE [SkeletonsType] = @SkeletonsType">
    <SelectParameters>
        <asp:ControlParameter Name="SkeletonsType" ControlID="DropDownListType" PropertyName="SelectedValue" />
    </SelectParameters>
</asp:SqlDataSource>
    <%-- Sql datasource for the DetailsView --%>
<asp:SqlDataSource ID="SqlDataSourceDetailsView" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
    SelectCommand="SELECT [SkeletonsID], [SkeletonsOwner], [SkeletonsType], [SkeletonDescription], [SkeletonImagePath] FROM [Inventory] WHERE [SkeletonsID] = @SkeletonsID">
    <SelectParameters>
        <asp:ControlParameter Name="SkeletonsID" ControlID="GridViewInventory" PropertyName="SelectedValue" />
    </SelectParameters>
</asp:SqlDataSource>

<%-- Create DropDown --%>
    <div class="container">
        <asp:DropDownList ID="DropDownListType" runat="server" DataSourceID="SqlDataSourceDropDown" DataTextField="SkeletonsType" DataValueField="SkeletonsType" AutoPostBack="True">
</asp:DropDownList></div>
    
<%-- Create GridView --%>
    <%--<asp:GridView ID="GridViewInventory" runat="server" DataSourceID="SqlDataSourceGridView" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewInventory_SelectedIndexChanged">
</asp:GridView>--%>
    <div class="container">
<asp:GridView ID="GridViewInventory" runat="server" DataSourceID="SqlDataSourceGridView" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridViewInventory_SelectedIndexChanged" OnRowDataBound="GridViewInventory_RowDataBound" DataKeyNames="SkeletonsID">
</asp:GridView>
        </div>
<%-- Create DetailsView --%>
    <div class="container">
<asp:DetailsView ID="DetailsViewInventory" runat="server" DataSourceID="SqlDataSourceDetailsView">
</asp:DetailsView>
        </div>
</div>

    <div class="container">
    <asp:Image ID="ImageSkeleton" runat="server" />
    <br />
    <asp:Label ID="LabelDescription" runat="server" />
</div>
</asp:Content>
