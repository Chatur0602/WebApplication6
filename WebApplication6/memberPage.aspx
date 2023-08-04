<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memberPage.aspx.cs" Inherits="WebApplication6.memberPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>My Dashboard</h1>
            <a href="editProfile.aspx">Edit Profile</a>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]">
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName"></asp:BoundField>
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName"></asp:BoundField>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" ReadOnly="True"></asp:BoundField>
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                    <asp:BoundField DataField="Usertype" HeaderText="Usertype" SortExpression="Usertype" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                </Fields>
            </asp:DetailsView>
        <div>
        </div>
            <br />
        </div>
    </form>
</body>
</html>
