<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToInventory.aspx.cs" Inherits="Skeletons_com.User.AddToInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
       <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>

                <div class="container">
                    <h2 class="h2">Add Inventory</h2>
                    <asp:Label ID="LabelSkeletonsOwner" runat="server" Text="Skeletons Owner" AssociatedControlID="TextBoxSkeletonsOwner" />
                    <asp:TextBox ID="TextBoxSkeletonsOwner" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonsType" runat="server" Text="Skeletons Type" AssociatedControlID="TextBoxSkeletonsType" />
                    <asp:TextBox ID="TextBoxSkeletonsType" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonDescription" runat="server" Text="Skeleton Description" AssociatedControlID="TextBoxSkeletonDescription" />
                    <asp:TextBox ID="TextBoxSkeletonDescription" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonConditionRating" runat="server" Text="Skeleton Condition Rating" AssociatedControlID="TextBoxSkeletonConditionRating" />
                    <asp:TextBox ID="TextBoxSkeletonConditionRating" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonImagePath" runat="server" Text="Skeleton Image Path" AssociatedControlID="TextBoxSkeletonImagePath" />
                    <asp:TextBox ID="TextBoxSkeletonImagePath" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonPrice" runat="server" Text="Skeleton Price" AssociatedControlID="TextBoxSkeletonPrice" />
                    <asp:TextBox ID="TextBoxSkeletonPrice" runat="server"></asp:TextBox>
                </div>
                <!-- Add the rest of the fields for the Inventory table as needed -->
                <div>
                    <asp:Label ID="LabelSkeletonImageFileName" runat="server" Text="SkeletonImageFileName" AssociatedControlID="TextBoxSkeletonImageFileName" />
                    <asp:TextBox ID="TextBoxSkeletonImageFileName" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonAvalible" runat="server" Text="SkeletonAvalible" AssociatedControlID="TextBoxSkeletonAvalible" />
                    <asp:TextBox ID="TextBoxSkeletonAvalible" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonQuantity" runat="server" Text="Skeleton Quantity" AssociatedControlID="TextBoxSkeletonQuantity" />
                    <asp:TextBox ID="TextBoxSkeletonQuantity" runat="server"></asp:TextBox>
                </div>
                <%--<div>
                    <asp:Label ID="LabelSkeletonForSell" runat="server" Text="Skeleton For Sale" AssociatedControlID="TextBoxSkeletonForSell" />
                    <asp:TextBox ID="TextBoxSkeletonForSell" runat="server"></asp:TextBox>
                </div>--%>
               <%-- <asp:Label ID="LabelSkeletonForSell" runat="server" Text="Skeleton For Sale" />
                <div>
                    <asp:RadioButton ID="RadioButtonSkeletonForSellYes" runat="server" GroupName="SkeletonForSell" Text="Yes" />
                    <asp:RadioButton ID="RadioButtonSkeletonForSellNo" runat="server" GroupName="SkeletonForSell" Text="No" />
                </div>--%>
                 <%-- <div>
                      <asp:Label ID="LabelSkeletonForSell" runat="server" Text="Skeleton For Buy" AssociatedControlID="RadioButtonListSkeletonForSell" />
                      <asp:RadioButtonList ID="RadioButtonListSkeletonForSell" runat="server">
                          <asp:ListItem Text="Yes" Value="Yes" />
                          <asp:ListItem Text="No" Value="No" />
                      </asp:RadioButtonList>
                  </div>
                <div>
                    <asp:Label ID="LabelSkeletonForBuy" runat="server" Text="Skeleton For Buy" AssociatedControlID="RadioButtonListSkeletonForBuy" />
                    <asp:RadioButtonList ID="RadioButtonListSkeletonForBuy" runat="server">
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" />
                    </asp:RadioButtonList>
                </div>
                <div>
                    <asp:Label ID="LabelSkeletonForLease" runat="server" Text="Skeleton For Lease" AssociatedControlID="RadioButtonListSkeletonForLease" />
                    <asp:RadioButtonList ID="RadioButtonListSkeletonForLease" runat="server">
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" />
                    </asp:RadioButtonList>
                </div>
                
                --%>
                <div class="container">
                    
                    <asp:Button ID="ButtonAddInventory" runat="server" Text="Add Inventory" OnClick="ButtonAddInventory_Click" />
                </div>

                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

              <div class="container">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="SkeletonsID" HeaderText="SkeletonsID" InsertVisible="False" ReadOnly="True" SortExpression="SkeletonsID" />
                            <asp:BoundField DataField="SkeletonsOwner" HeaderText="SkeletonsOwner" SortExpression="SkeletonsOwner" />
                            <asp:BoundField DataField="SkeletonsType" HeaderText="SkeletonsType" SortExpression="SkeletonsType" />
                            <asp:BoundField DataField="SkeletonDescription" HeaderText="SkeletonDescription" SortExpression="SkeletonDescription" />
                            <asp:BoundField DataField="SkeletonConditionRating" HeaderText="SkeletonConditionRating" SortExpression="SkeletonConditionRating" />
                            <asp:BoundField DataField="SkeletonImagePath" HeaderText="SkeletonImagePath" SortExpression="SkeletonImagePath" />
                            <asp:BoundField DataField="SkeletonPrice" HeaderText="SkeletonPrice" SortExpression="SkeletonPrice" />
                            <asp:BoundField DataField="SkeletonAddedDate" HeaderText="SkeletonAddedDate" SortExpression="SkeletonAddedDate" />
                            <asp:BoundField DataField="SkeletonAddedTime" HeaderText="SkeletonAddedTime" SortExpression="SkeletonAddedTime" />
                            <asp:BoundField DataField="SkeletonImageFileName" HeaderText="SkeletonImageFileName" SortExpression="SkeletonImageFileName" />
                            <asp:BoundField DataField="SkeletonQuantity" HeaderText="SkeletonQuantity" SortExpression="SkeletonQuantity" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSkelenventory %>" SelectCommand="SELECT [SkeletonsID], [SkeletonsOwner], [SkeletonsType], [SkeletonDescription], [SkeletonConditionRating], [SkeletonImagePath], [SkeletonPrice], [SkeletonAddedDate], [SkeletonAddedTime], [SkeletonImageFileName], [SkeletonQuantity] FROM [Inventory]"></asp:SqlDataSource>
                </div>
                   </ContentTemplate>
            </asp:UpdatePanel>
            </LoggedInTemplate>
        </asp:LoginView>
      
     
</asp:Content>
