<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 101%;
            height: 448px;
        }
        .style2
        {
            width: 201px;
        }
        .style3
        {
            width: 100%;
            height: 281px;
        }
        .style4
        {
            width: 100%;
            height: 283px;
        }
        .style5
        {
            width: 200px;
        }
        .style6
        {
            height: 53px;
        }
        .style7
        {
            width: 201px;
            height: 74px;
        }
        .style8
        {
            height: 74px;
        }
        .style9
        {
            width: 201px;
            height: 79px;
        }
        .style10
        {
            height: 79px;
        }
        .style11
        {
            width: 201px;
            height: 75px;
        }
        .style12
        {
            height: 75px;
        }
        </style>
</head>
<body background="../wallpaper/photo.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 456px; top: 101px; position: absolute; height: 452px; width: 626px">
        <table class="style1" border = "3px">
            <tr>
                <td bgcolor="#999999" colspan="2">
                    <asp:Label ID="Label1" runat="server" 
                        Font-Names="Bahnschrift SemiBold SemiConden" Font-Size="X-Large" 
                        ForeColor="White" 
                        style="z-index: 1; left: 268px; top: 16px; position: absolute; margin-bottom: 0px" 
                        Text="Sign Up"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style7">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="User Name" 
                        AssociatedControlID="TextBox1"></asp:Label>
                </td>
                <td bgcolor="Black" class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="214px" 
                        ViewStateMode="Enabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Must Enter a value" ForeColor="Red" 
                        style="z-index: 1; left: 438px; top: 89px; position: absolute" 
                        ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Name already Taken!!!" 
                        ForeColor="Red" onservervalidate="CustomValidator2_ServerValidate" 
                        style="z-index: 1; left: 434px; top: 89px; position: absolute"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style9">
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Password" 
                        AssociatedControlID="TextBox2"></asp:Label>
                </td>
                <td bgcolor="#999999" class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" TextMode="Password" 
                        Width="212px" ViewStateMode="Enabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Must Enter a value" ForeColor="Red" 
                        style="z-index: 1; left: 436px; top: 174px; position: absolute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style2">
                    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Course" 
                        AssociatedControlID="DropDownList1"></asp:Label>
                </td>
                <td bgcolor="Black">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" 
                        
                        style="z-index: 1; left: 216px; top: 245px; position: absolute; width: 216px" 
                        DataSourceID="SqlDataSource1" DataTextField="course_name" 
                        DataValueField="course_name" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [course_name] FROM [Course]" ViewStateMode="Enabled"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style11">
                    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Institute" 
                        AssociatedControlID="DropDownList2"></asp:Label>
                </td>
                <td bgcolor="#999999" class="style12">
                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large" 
                        Width="217px" 
                        style="z-index: 1; left: 218px; top: 326px; position: absolute" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style2">
                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Profile-Pic" 
                        AssociatedControlID="FileUpload1"></asp:Label>
                </td>
                <td bgcolor="Black">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="277px" 
                        ViewStateMode="Enabled" />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Select File" ForeColor="Red" 
                        onservervalidate="CustomValidator1_ServerValidate" 
                        style="z-index: 1; left: 501px; top: 403px; position: absolute"></asp:CustomValidator>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" 
        
        
        style="z-index: 1; left: 455px; top: 575px; position: absolute; height: 278px; width: 630px">
        <table class="style3" border = "3px">
            <tr>
                <td bgcolor="#999999" colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                        Font-Names="Bahnschrift SemiBold SemiConden" ForeColor="White" 
                        style="z-index: 1; left: 233px; top: 18px; position: absolute" 
                        Text="Verify Mobile Number"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style5">
                    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Enter Mobile no." 
                        AssociatedControlID="TextBox3"></asp:Label>
                </td>
                <td bgcolor="Black">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Width="231px" 
                        ViewStateMode="Enabled"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Number inavlid" ForeColor="Red" 
                        style="z-index: 1; left: 453px; top: 72px; position: absolute" 
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Number Taken!!" ForeColor="Red" 
                        onservervalidate="CustomValidator4_ServerValidate" 
                        style="z-index: 1; left: 453px; top: 74px; position: absolute"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" colspan="2" class="style6">
                    
                    <asp:Button ID="Button3" runat="server" 
                        style="z-index: 1; left: 238px; top: 238px; position: absolute" 
                        Text="Verify Mobile" onclick="Button3_Click" ViewStateMode="Enabled" />
                    
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style5">
                    <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Enter OTP" 
                        AssociatedControlID="TextBox7"></asp:Label>
                </td>
                <td bgcolor="Black">
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" Width="231px" 
                        ViewStateMode="Enabled"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" 
                        style="z-index: 1; left: 464px; top: 185px; position: absolute; height: 26px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" colspan="2">
                    <asp:Button ID="Button1" runat="server" 
    style="z-index: 1; left: 254px; top: 126px; position: absolute" 
    Text="Send OTP" onclick="Button1_Click" ViewStateMode="Enabled" />


                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" 
        
        
        style="z-index: 1; left: 452px; top: 871px; position: absolute; height: 283px; width: 639px">
        <table class="style4" border = "3px">
            <tr>
                <td bgcolor="Black" colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        Font-Names="Bahnschrift SemiBold SemiConden" ForeColor="White" 
                        style="z-index: 1; left: 261px; top: 20px; position: absolute" 
                        Text="Verify Email Address"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style5">
                    <asp:Label ID="Label11" runat="server" ForeColor="White" 
                        Text="Enter Email Add." AssociatedControlID="TextBox5"></asp:Label>
                </td>
                <td bgcolor="#999999">
                    <asp:TextBox ID="TextBox5" runat="server" ViewStateMode="Enabled"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Must Enter Email" ForeColor="Red" 
                        style="z-index: 1; left: 400px; top: 77px; position: absolute; width: 139px;" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Email already taken!!" 
                        ForeColor="Red" onservervalidate="CustomValidator3_ServerValidate1" 
                        style="z-index: 1; left: 390px; top: 76px; position: absolute; height: 22px; width: 169px"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" colspan="2">
                   
                    <asp:Button ID="Button4" runat="server" 
                        style="z-index: 1; left: 257px; top: 122px; position: absolute" 
                        Text="Send OTP" onclick="Button4_Click" ViewStateMode="Enabled" />
                   
                </td>
            </tr>
            <tr>
                <td bgcolor="#999999" class="style5">
                    <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Enter OTP" 
                        AssociatedControlID="TextBox6"></asp:Label>
                </td>
                <td bgcolor="#999999">
                    <asp:TextBox ID="TextBox6" runat="server" ViewStateMode="Enabled"></asp:TextBox>
                    <asp:Label ID="Label14" runat="server" 
                        style="z-index: 1; left: 401px; top: 182px; position: absolute"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" colspan="2" class="style6">
                    
                    <asp:Button ID="Button5" runat="server" 
                        style="z-index: 1; left: 247px; top: 235px; position: absolute" 
                        Text="Verify Email" onclick="Button5_Click" ViewStateMode="Enabled" />
                    
                    <asp:Button ID="Button6" runat="server" BackColor="Red" BorderColor="Yellow" 
                        BorderStyle="Solid" BorderWidth="3px" Font-Size="XX-Large" ForeColor="White" 
                        onclick="Button6_Click" 
                        style="z-index: 1; left: 204px; top: 299px; position: absolute" 
                        Text="Sign Up" />
                    
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
