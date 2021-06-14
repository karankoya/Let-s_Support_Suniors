<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 101%;
            height: 409px;
        }
        .style5
        {
            height: 126px;
            width: 283px;
        }
        .style10
        {
            height: 115px;
            width: 283px;
        }
        .style13
        {
            height: 126px;
            width: 126px;
        }
        .style14
        {
            height: 115px;
            width: 126px;
        }
    </style>
</head>
<body background="../wallpaper/photo.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BorderColor="#999999" BorderStyle="Ridge" 
        style="z-index: 1; left: 423px; top: 205px; position: absolute; height: 413px; width: 585px">
        <table class="style1">
            <tr>
                <td bgcolor="#999999" colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        Font-Names="Bahnschrift SemiBold SemiConden" Font-Size="XX-Large" 
                        ForeColor="White" 
                        style="z-index: 1; left: 252px; top: 14px; position: absolute" Text="Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style13">
                    <asp:Label ID="Label2" runat="server" 
                        Font-Names="Bahnschrift SemiBold Condensed" Font-Size="X-Large" 
                        ForeColor="White" 
                        style="z-index: 1; left: 43px; top: 128px; position: absolute" Text="Username"></asp:Label>
                </td>
                <td bgcolor="Black" class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*Must enter a value!!!!!" 
                        ForeColor="Red" 
                        style="z-index: 1; left: 190px; top: 172px; position: absolute; width: 210px"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*No user exists with below username" 
                        ForeColor="Red" onservervalidate="CustomValidator1_ServerValidate" 
                        style="z-index: 1; left: 188px; top: 103px; position: absolute; width: 300px"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style14">
                    <asp:Label ID="Label3" runat="server" Font-Names="Bahnschrift Condensed" 
                        Font-Size="X-Large" ForeColor="White" 
                        style="z-index: 1; left: 44px; top: 250px; position: absolute" Text="Password"></asp:Label>
                </td>
                <td bgcolor="#999999" class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="36px" 
                        TextMode="Password" Width="276px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*Password is compulsory" 
                        ForeColor="Red" 
                        style="z-index: 1; left: 193px; top: 292px; position: absolute; width: 214px"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*Password Incorrect" ForeColor="Red" 
                        onservervalidate="CustomValidator2_ServerValidate" 
                        style="z-index: 1; left: 191px; top: 221px; position: absolute; width: 170px"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Yellow" 
                        BorderStyle="Solid" BorderWidth="3px" Font-Size="Large" ForeColor="White" 
                        onclick="Button1_Click" 
                        style="z-index: 1; left: 250px; top: 351px; position: absolute" Text="Login" />
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0099FF" 
                        onclick="LinkButton1_Click" 
                        style="z-index: 1; left: 19px; top: 358px; position: absolute">Forgot Password?</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Yellow" 
                        onclick="LinkButton2_Click" 
                        style="z-index: 1; left: 369px; top: 358px; position: absolute">New User?</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
