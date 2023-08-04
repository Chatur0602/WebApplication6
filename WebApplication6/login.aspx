<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="WebApplication6.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kozy Kitchen</title>
    <link rel="stylesheet" href="Content\loginStyle.css" />
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
    <div class="center">
        <img id="back" onclick="location.href='home.aspx';" src="../Images/backIcon48.png" style="height:24px; width:24px"/> 
      <h1>Login</h1>
      <form id="form1" runat="server">
        <div class="txt_field">
          &nbsp;<tr><td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox class="textBox" ID="username" runat="server" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
        </div>
        <div class="txt_field">
          <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox class="textBox" ID="pwd" runat="server" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
        </div>&nbsp;<tr><td class="auto-style2"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
                    </td>
                    
                </tr>
            <div class="signup_link">
          Not a member? <a href="registrationPage.aspx">Signup</a>
            <br />
               <asp:Label ID="errorMsg" runat="server" Visible="false"></asp:Label>
        </div>
      </form>
    </div>
</body>
</html>
