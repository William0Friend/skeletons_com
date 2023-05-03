<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TypeSelectorAsp.aspx.cs" Inherits="Skeletons_com.TypeSelectorAsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
       .auto-style1 {
           left: 0px;
           top: 0px;
       }
  /*     body {
   background-image: url('/svg/skeletons_scary-skulls-seamless-pattern.svg');
   background-size: cover;
   background-position: center center;
*/


   </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <%--    the DropDownList is populated 
 with the SkeletonsType values from the database using a 
 SqlDataSource control. When the user selects a type, the 
 GridView is updated to show only the matching results from 
 the Inventory table. 
     
     
     When the user selects an item in the 
 GridView, the image from the SkeletonImagePath field and 
 the description from the SkeletonDescription field are 
 displayed below the GridView using an Image control and a 
 Label control, respectively.
     
    When the user selects an item in the View, Then the, 
    Details view is populated with, or driven by, the Inventory 
    table data equal to the Gridview value that is selected.
     Image and all data displayed.
     --%>





 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate>

         <div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
   
     <h1 class="display-5 fw-bold">Search by Skeleton Type:</h1>
     <p class="col-md-8 fs-4">View our current skeletons marketplace by skeleton type</p>
   
 </div>

        

         <div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
             <asp:DropDownList Font-Bold="true" 
                 BackColor="Wheat" 
                 Font-Size="XX-Large"  
                 ID="DropDownListType" 
                 runat="server" 
                 DataSourceID="SqlDataSourceTypes" 
                 DataTextField="SkeletonsType" 
                 DataValueField="SkeletonsType" 
                 AutoPostBack="True" 
                 OnSelectedIndexChanged="DropDownListType_SelectedIndexChanged">
             </asp:DropDownList>
         </div>
         <asp:SqlDataSource ID="SqlDataSourceTypes" runat="server"
             ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
             SelectCommand="SELECT DISTINCT [SkeletonsType] FROM [Inventory] ORDER BY [SkeletonsType] ASC"></asp:SqlDataSource>

         <%--<div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
             <asp:GridView ID="GridViewInventory" runat="server"
                 DataSourceID="SqlDataSourceGridView"
                 AutoGenerateSelectButton="True"
                 OnSelectedIndexChanged="GridViewInventory_SelectedIndexChanged"
                 DataKeyNames="SkeletonsID" CssClass="btn btn-dark text-white">
             </asp:GridView>
         </div>--%>

        <div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
    <asp:GridView ID="GridViewInventory" runat="server"
        DataSourceID="SqlDataSourceGridView"
        AutoGenerateColumns="False"
        AutoGenerateSelectButton="True"
        OnSelectedIndexChanged="GridViewInventory_SelectedIndexChanged"
        DataKeyNames="SkeletonsID" CssClass="btn btn-dark text-white">
        <Columns>
            <asp:BoundField DataField="SkeletonsType" HeaderText="Type" />
            <asp:BoundField DataField="SkeletonConditionRating" HeaderText="Condition Rating" />
            <asp:BoundField DataField="SkeletonForSell" HeaderText="Offer to Sell" />
            <asp:BoundField DataField="SkeletonForBuy" HeaderText="Offer to Buy" />
            <asp:BoundField DataField="SkeletonForLease" HeaderText="Leasing or Payment Plan Available" />
        </Columns>
    </asp:GridView>
</div>


         <asp:SqlDataSource  ID="SqlDataSourceGridView" runat="server"
             ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
             SelectCommand="SELECT [SkeletonsID], [SkeletonsType], [SkeletonConditionRating], [SkeletonForSell], [SkeletonForBuy], [SkeletonForLease], [SkeletonImagePath] FROM [Inventory] WHERE [SkeletonsType] = @SkeletonsType" ProviderName="<%$ ConnectionStrings:ConnectionStringSkelenventory.ProviderName %>">
             <SelectParameters>
                 <asp:ControlParameter Name="SkeletonsType" ControlID="DropDownListType" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>

         <div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
             <%--  <div class="containter">--%>
             <h2>Results Simple </h2>
             <asp:Image ID="ImageSkeleton" runat="server" />
             <br />
             <asp:Label ID="LabelDescription" runat="server" />
         </div>
         <%--        </div>--%>

         <div class="container rounded-3 m-4 bg-dark text-white shadow-lg border-bottom border-right border-3 border-danger">
             <h2>Results Detailed </h2>
             <asp:DetailsView ID="DetailsViewInventory" runat="server" DataSourceID="SqlDataSourceDetailsView" AutoGenerateRows="False">
                 <Fields>
                     <asp:BoundField DataField="SkeletonsID" HeaderText="ID: " />
                     <asp:BoundField DataField="SkeletonsOwner" HeaderText="Owner: " />
                     <asp:BoundField DataField="SkeletonsType" HeaderText="Skeleton Type: " />
                     <asp:BoundField DataField="SkeletonDescription" HeaderText="Description: " />
                     <asp:BoundField DataField="SkeletonImagePath" HeaderText="Image Path: " />
                     <asp:BoundField DataField="SkeletonConditionRating" HeaderText="Condition Rating: " />
                     <asp:BoundField DataField="SkeletonPrice" HeaderText="Price: " />
                     <asp:BoundField DataField="SkeletonAddedDate" HeaderText="Date Added: " />
                     <asp:BoundField DataField="SkeletonAddedTime" HeaderText="Time Added: " />
                     <asp:BoundField DataField="SkeletonAvalible" HeaderText="Avalible: " />
                     <asp:BoundField DataField="SkeletonForSell" HeaderText="Offer to Sell: " />
                     <asp:BoundField DataField="SkeletonForBuy" HeaderText="Offer to Buy: " />
                     <asp:BoundField DataField="SkeletonForLease" HeaderText="Leasing or Payment Plan Avalible: " />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:Image ID="DetailsViewImage" runat="server" ImageUrl='<%# Eval("SkeletonImagePath") %>' />
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Fields>
             </asp:DetailsView>

             <asp:SqlDataSource ID="SqlDataSourceDetailsView" runat="server"
                 ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>"
                 SelectCommand="SELECT [SkeletonsID], [SkeletonsOwner], [SkeletonsType], [SkeletonDescription], [SkeletonConditionRating], [SkeletonImagePath], [SkeletonPrice], [SkeletonAddedDate], [SkeletonAddedTime], [SkeletonAvalible], [SkeletonForSell], [SkeletonForBuy], [SkeletonForLease] FROM [Inventory] WHERE [SkeletonsID] = @SkeletonsID">
                 <SelectParameters>
                     <asp:ControlParameter Name="SkeletonsID" ControlID="GridViewInventory" PropertyName="SelectedValue" />
                 </SelectParameters>
             </asp:SqlDataSource>

             <selectparameters>
                 <asp:ControlParameter Name="SkeletonsID" ControlID="GridViewInventory" PropertyName="SelectedValue" runat="server" />
             </selectparameters>
     </ContentTemplate>
 </asp:UpdatePanel>
</asp:Content>
