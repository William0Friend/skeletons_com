<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserAccountPage.aspx.cs" Inherits="Skeletons_com.User.UserAccountPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table id="table1" class="table">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" LoginText="Logged In" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
                    <AnonymousTemplate>
                    
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <table id="table2" class="auto-style1">
                            <tr>
                                <td rowspan="9">
                                    <asp:Label ID="Label10" runat="server" Text="View First Name"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label19" runat="server" Text="Update First Name:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label11" runat="server" Text="View Last Name"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label20" runat="server" Text="Update Last Name:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="View Full Name"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label21" runat="server" Text="Update Full Name:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Text="View Address"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label22" runat="server" Text="Update User Address:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label14" runat="server" Text="View Phone Number"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label23" runat="server" Text="Update Phone Number:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Text="View Email Address"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label24" runat="server" Text="Update Address:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label16" runat="server" Text="View UserName"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label25" runat="server" Text="Update User Name:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label17" runat="server" Text="View User_ID"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label26" runat="server" Text="Verify your ID #:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    <br />  
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    &nbsp;</td>
                                <td class="auto-style6"></td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td rowspan="9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>       
                            <tr>
                                <td colspan="3">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetUsers]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:CheckBoxField DataField="EmailConfirmed" HeaderText="EmailConfirmed" SortExpression="EmailConfirmed" />
                                            <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                                            <asp:BoundField DataField="SecurityStamp" HeaderText="SecurityStamp" SortExpression="SecurityStamp" />
                                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                            <asp:CheckBoxField DataField="PhoneNumberConfirmed" HeaderText="PhoneNumberConfirmed" SortExpression="PhoneNumberConfirmed" />
                                            <asp:CheckBoxField DataField="TwoFactorEnabled" HeaderText="TwoFactorEnabled" SortExpression="TwoFactorEnabled" />
                                            <asp:BoundField DataField="LockoutEndDateUtc" HeaderText="LockoutEndDateUtc" SortExpression="LockoutEndDateUtc" />
                                            <asp:CheckBoxField DataField="LockoutEnabled" HeaderText="LockoutEnabled" SortExpression="LockoutEnabled" />
                                            <asp:BoundField DataField="AccessFailedCount" HeaderText="AccessFailedCount" SortExpression="AccessFailedCount" />
                                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                  </ContentTemplate>
     </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
     <ContentTemplate>
                                <td colspan="3">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection2 %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="User_ID" DataSourceID="SqlDataSource3">
                                        <Columns>
                                            <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                                            <asp:BoundField DataField="User_Email_Address" HeaderText="User_Email_Address" SortExpression="User_Email_Address" />
                                            <asp:BoundField DataField="AspNetUserId" HeaderText="AspNetUserId" SortExpression="AspNetUserId" />
                                            <asp:BoundField DataField="User_First_Name" HeaderText="User_First_Name" SortExpression="User_First_Name" />
                                            <asp:BoundField DataField="User_Last_Name" HeaderText="User_Last_Name" SortExpression="User_Last_Name" />
                                            <asp:BoundField DataField="User_Full_Name" HeaderText="User_Full_Name" SortExpression="User_Full_Name" />
                                            <asp:BoundField DataField="User_Address" HeaderText="User_Address" SortExpression="User_Address" />
                                            <asp:BoundField DataField="User_Phone_Number" HeaderText="User_Phone_Number" SortExpression="User_Phone_Number" />
                                            <asp:BoundField DataField="User_User_Name" HeaderText="User_User_Name" SortExpression="User_User_Name" />
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            </ContentTemplate>
                               </asp:UpdatePanel>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                      
                    </LoggedInTemplate>
                </asp:LoginView>
            </td>
        </tr>
        <tr>
            <td>
                                    <asp:Button CssClass="btn btn-dark" ID="Button4" runat="server" OnClick="Button4_Click" Text="Review" />
                                    <asp:Button CssClass="btn btn-danger" ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />
                                    <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" Width="87px" />
                                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" OnClick="Button3_Click" Text="End Session" />
                                    <asp:Label ID="Label18" runat="server" Text="Message"></asp:Label>
                                </td>
        </tr>
        </table>
</asp:Content>
