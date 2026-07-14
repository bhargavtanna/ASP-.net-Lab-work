<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginDemo.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .login-box {
            width: 350px;
            margin: 100px auto;
            padding: 25px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px gray;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .label {
            font-weight: bold;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #0078D7;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>Login</h2>

            <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox"></asp:TextBox><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="label"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br />

            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me" /><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" />

            <br /><br />

            <asp:HyperLink ID="lnkForgot" runat="server" NavigateUrl="#">Forgot Password?</asp:HyperLink>
        </div>
    </form>
</body>
</html>