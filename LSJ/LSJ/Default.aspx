<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
        RepeatColumns="3">
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <ItemTemplate>
                     prod_name:
                     <asp:Label ID="prod_nameLabel" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                     <br />
                     prod_photo:
                     <asp:Label ID="prod_photoLabel" runat="server" 
                         Text='<%# Eval("prod_photo") %>' />
                     <br />
                     prod_price:
                     <asp:Label ID="prod_priceLabel" runat="server" Text='<%# Eval("prod_price") %>'></asp:Label>
                     <br />
                     <br />
                 </ItemTemplate>
                 <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             </asp:DataList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" 
        SelectCommand="SELECT prod_name, prod_photo, prod_price FROM product_for_sell WHERE (cat_id = (SELECT cat_id FROM Category WHERE (cat_name = @cat_name)))">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" Name="cat_name" 
                         PropertyName="SelectedValue" />
                 </SelectParameters>
    </asp:SqlDataSource>
    <div>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="250px">
            <asp:ListItem>&lt;&lt;&lt;Select Category&gt;&gt;&gt;</asp:ListItem>
            <asp:ListItem>Books</asp:ListItem>
            <asp:ListItem>Stationary</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Old notes</asp:ListItem>
            <asp:ListItem>Papers</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
