<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageMember.aspx.cs" Inherits="WebApplication6.manageMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content\manageMemberStyle.css" />
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
    <form id="form2" runat="server">
        <div class ="center">
            <img id="back" onclick="location.href='home.aspx';" src="../Images/backIcon48.png" style="height:24px; width:24px"/> 
            <h1>Manage Member</h1>
    <table >
        
        <tr class="txt_field">
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Uname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Uname_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>

        <tr class="txt_field">
         
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="fname" class="textBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        
        <tr class="txt_field">
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lname" class="textBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>

        <tr class="txt_field">
            <td >
                <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:Label ID="genderLabel" runat="server" Text="" ></asp:Label>
            </td>
        </tr>

        <tr class="txt_field">
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="country" class="textBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>

        <tr class="txt_field">
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email" class="textBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>

        <tr class="txt_field">
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pwd" class="textBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>

        
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            &nbsp;
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" />
                &nbsp;<asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
                &nbsp;
                <asp:Label ID="usertype" runat="server" Text="member" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="id" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
        </div>
    </form>


    
</body>
</html>
