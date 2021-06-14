<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot_Password_Forgot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 218px;
        }
        .style2
        {
            width: 248px;
            height: 87px;
        }
        .style3
        {
            height: 87px;
        }
    </style>
</head>
<body background="../wallpaper/photo.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 315px; top: 263px; position: absolute; height: 222px; width: 765px">
        <table class="style1">
            <tr>
                <td bgcolor="Black" colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        Font-Names="Bahnschrift SemiBold Condensed" Font-Size="XX-Large" 
                        ForeColor="White" 
                        style="z-index: 1; left: 274px; top: 12px; position: absolute" 
                        Text="Forgot Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style2">
                    <asp:Label ID="Label2" runat="server" 
                        Font-Names="Bahnschrift SemiBold Condensed" Font-Size="X-Large" 
                        ForeColor="White" style="z-index: 1; left: 61px; top: 93px; position: absolute" 
                        Text="Enter Email:- "></asp:Label>
                </td>
                <td bgcolor="#999999" class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" 
                        
                        style="z-index: 1; left: 283px; top: 91px; position: absolute; height: 37px; width: 282px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*Must enter an Email!!" 
                        ForeColor="Red" style="z-index: 1; left: 294px; top: 68px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="*Email not registred!!!" ForeColor="Red" 
                        onservervalidate="CustomValidator1_ServerValidate" 
                        style="z-index: 1; left: 296px; top: 126px; position: absolute"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Yellow" 
                        BorderStyle="Solid" ForeColor="White" onclick="Button1_Click" 
                        style="z-index: 1; left: 323px; top: 173px; position: absolute" 
                        Text="Send Email" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 660px; top: 507px; position: absolute"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        style="z-index: 1; left: 671px; top: 549px; position: absolute" Visible="False">Login</asp:LinkButton>
    </form>
</body>
</html>
