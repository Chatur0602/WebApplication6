<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminRegistration.aspx.cs" Inherits="WebApplication6.adminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content\adminRegistrationStyle.css" />
    <style type="text/css">
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
    <form id="form1" runat="server">
        <div class ="center">
            <img id="back" onclick="location.href='home.aspx';" src="../Images/backIcon48.png" style="height:24px; width:24px"/> 
            <h1>Admin Registration</h1>
    <table >
        
         <tr class="txt_field">
         
            <td class="auto-style1" >
                <asp:Label ID="Label8" runat="server" Text="Master Pin:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox class ="textBox" ID="pin" runat="server" BorderStyle="Solid"> </asp:TextBox>
                
            </td>  
        </tr>

        <tr class="txt_field">
         
            <td class="auto-style1" >
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox class ="textBox" ID="fname" runat="server" BorderStyle="Solid"> </asp:TextBox>
                
            </td>  
        </tr>
        
        <tr class="txt_field">
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox class ="textBox" ID="lname" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td >
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="gender" runat="server" BorderStyle="Solid">
                    <asp:ListItem>F</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="txt_field">
            <td> 
                <asp:Label ID="Label4" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox class ="textBox" ID="country" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td >
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox class ="textBox" ID="email" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td >
                <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
            </td>
            <td >
                <asp:TextBox class ="textBox" ID="username" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td >
                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox class ="textBox" ID="pwd" runat="server" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr class="txt_field">
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Up" />
            </td> 
            <td>
                <asp:Label ID="errMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="usertype" runat="server" Text="admin" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="id" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    
        </div>
    </form>
</body>
</html>
