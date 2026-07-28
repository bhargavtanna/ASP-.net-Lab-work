<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_7.aspx.cs" Inherits="unit_3_ASP.program_7" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 7 - Login Page Exception Handling</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div style="width: 300px; padding: 15px; border: 1px solid black;">
            <h3>User Login Dashboard</h3>
            
            Username:<br />
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br /><br />
            
            Password:<br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <br /><br />
            
            <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
            <br /><br />
            
            <asp:Label ID="lblMsg" runat="server" Font-Bold="true"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
