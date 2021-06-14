<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="wallpaper/photo.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="MV Boli" Font-Size="XX-Large" ForeColor="White" 
        style="z-index: 1; left: 548px; top: 75px; position: absolute" 
        Text="Let's Support Juniors"></asp:Label>
    <hr size="1px" 
        style="background-color: #FFFF00; z-index: 1; left: 8px; top: 144px; position: absolute; height: 16px; width: 1624px;" />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        Font-Names="Bahnschrift SemiBold" Font-Size="Large" ForeColor="White" 
        style="z-index: 1; left: 535px; top: 201px; position: absolute; width: 426px; height: 139px" 
        
        Text="This website is specially designed for the studens for college as well as schools who want to sell their old study material and for those who are confused which material to buy" 
        BackColor="Red" BorderColor="Red" BorderStyle="Solid"></asp:Label>
    <asp:Label ID="Label3" runat="server" BackColor="#0066FF" BorderColor="#0066FF" 
        BorderStyle="Solid" Font-Names="Bahnschrift SemiBold" Font-Size="Large" 
        ForeColor="White" 
        style="z-index: 1; left: 538px; top: 360px; position: absolute; width: 441px" 
        Text="This website provides automated filter in which we show you the materials posted from your college mates only, not from anywhere else"></asp:Label>
    <asp:Label ID="Label4" runat="server" BackColor="Lime" BorderColor="Lime" 
        BorderStyle="Solid" Font-Names="Bahnschrift SemiBold" Font-Size="Large" 
        Font-Underline="True" ForeColor="White" 
        style="z-index: 1; left: 611px; top: 491px; position: absolute; width: 269px" 
        Text="To get started, click below"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/wallpaper/letsgetstartedbutton.png" 
        
        style="z-index: 1; left: 605px; top: 546px; position: absolute; width: 297px" 
        onclick="ImageButton1_Click" />
    </form>
</body>
</html>
