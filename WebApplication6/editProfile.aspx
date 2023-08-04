<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editProfile.aspx.cs" Inherits="WebApplication6.editProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kozy Kitchen</title>
    <link rel="stylesheet" href="Content\editProfileStyle.css" />
    <style>
        #back {
            position: absolute;
            line-height: 12px;
            width: 40px;
            margin-top: 5px;
            margin-left: 5px;
        }

        
    </style>
</head>
    
    <body>
    <div class="bg"> </div>
    <div class = "center" style="width:400px">
        <img id="back" onclick="location.href='home.aspx';" src="../Images/backIcon48.png" style="height:24px; width:24px"/> 
    <form id="form1" runat="server">
        
            <h1>My Profile</h1>
    <table>
        
        <tr class="txt_field">
            <td class="auto-style2">
                First Name</td>
            <td class="auto-style3">
                <asp:TextBox class="textBox" ID="fname" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Visible="false" />
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                Last Name</td>
            <td class="auto-style3">
                <asp:TextBox class="textBox" ID="lname" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td rowspan="6">
                <asp:Image class="imgplaceholder" ID="Image1" runat="server" Height="150px" Width="200px" AlternateText="Profile picture" title="Profile picture" Visible="false"/>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="genderLabel" runat="server" Text="" >gg</asp:Label>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                Country</td>
            <td class="auto-style3">
                <asp:TextBox class="textBox" ID="country" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                Email</td>
            <td class="auto-style3">
                <asp:TextBox class="textBox" ID="email" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style1">
                Username</td>
            <td class="auto-style1">
                <asp:TextBox class="textBox" ID="username" runat="server" ReadOnly="True" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                Password</td>
            <td class="auto-style3">
                <asp:TextBox class="textBox" ID="pwd" runat="server" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            &nbsp;
            </td>
            <td colspan="2">
                &nbsp;<asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="usertype" runat="server" Text="member" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="id" runat="server" Visible="False"></asp:Label>
            &nbsp;<asp:Label ID="img" runat="server" Text="" Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
        </form>
        </div>
        <p>
                &nbsp;</p>
    
</body>
</html>
