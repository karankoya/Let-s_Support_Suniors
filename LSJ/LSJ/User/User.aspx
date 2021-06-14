<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
       
 
 
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <p>
       
        <asp:DropDownList  ID="DropDownList1" runat="server" Height="25px" Width="250px" 
            AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 10px; top: 89px; position: absolute" 
            AppendDataBoundItems="True" CausesValidation="True" 
            ValidationGroup="category">
            <asp:ListItem>Select Category</asp:ListItem>
            <asp:ListItem>Books</asp:ListItem>
            <asp:ListItem>Stationary</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Old notes</asp:ListItem>
            <asp:ListItem>Papers</asp:ListItem>
        </asp:DropDownList>
     </p>
     <p>   
        <asp:ImageButton ID="sell" runat="server" BorderColor="Silver" 
            BorderWidth="5px" Height="70px" ImageUrl="~/wallpaper/sell.png" 
            onclick="sell_Click" 
            style="z-index: 1; left: 1000px; top: 89px; position: absolute" Width="150px"/>
        
    </p>
       
             
                 
           <p>
               &nbsp;<asp:Panel ID="Panel1" runat="server">
                 <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                     BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                     DataSourceID="SqlDataSource1" GridLines="Both" Height="25px" RepeatColumns="3" 
                     style="z-index: 1; left: -27px; top: 180px; position: absolute; text-align: center" 
                     Width="1200px">
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                     <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                     <ItemStyle ForeColor="#000066" />
                     <ItemTemplate>
                         <table align="center" class="style1">
                             <tr>
                                 <td>
                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Image ID="Image1" runat="server" Height="150px" 
                                         ImageUrl='<%# Eval("prod_photo") %>' Width="150px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label4" runat="server" Text="Rs."></asp:Label>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("prod_price") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/ViewDetails.aspx">View Details</asp:HyperLink>
                                 </td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" 
                     SelectCommand="SELECT [prod_name], [prod_price], [prod_photo] FROM [product_for_sell]"></asp:SqlDataSource>
             </asp:Panel>
         </p>

         <p>
         &nbsp;<asp:Panel ID="Panel2" runat="server">
                 <asp:DataList ID="DataList2" runat="server" BackColor="White" 
                     BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                     DataSourceID="SqlDataSource2" GridLines="Both" Height="25px" RepeatColumns="3" 
                     style="z-index: 1; left: -27px; top: 190px; position: absolute; text-align: center" 
                     Width="1200px"  >
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                     <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                     <ItemStyle ForeColor="#000066" />
                     <ItemTemplate>
                         <table align="center" class="style1">
                             <tr>
                                 <td>
                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Image ID="Image2" runat="server" Height="150px" 
                                         ImageUrl='<%# Eval("prod_photo") %>' Width="150px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label7" runat="server" Text="Rs."></asp:Label>
                                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("prod_price") %>'></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:HyperLink ID="HyperLink2"  NavigateUrl="~/User/ViewDetails.aspx" runat="server">View Details</asp:HyperLink>
                                 </td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 </asp:DataList>
                   
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" 
                     SelectCommand="SELECT prod_name, prod_photo, prod_price FROM product_for_sell WHERE (cat_id = (SELECT cat_id FROM Category WHERE (cat_name = @cat_name)))">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="DropDownList1" Name="cat_name" 
                             PropertyName="SelectedValue" />
                     </SelectParameters>
                 </asp:SqlDataSource></p>
             </asp:Panel>
         </p>
      
</asp:Content>

