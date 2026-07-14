<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="program_6.aspx.cs" Inherits="LoginDemo.Program6" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .login-box {
            width: 350px;
            margin: 100px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px gray;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: blue;
            color: white;
            border: none;
        }

        .message {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">

            <h2 align="center">Login</h2>

            <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label><br />
            <asp:TextBox ID="txtUserID" runat="server" CssClass="textbox"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server"
                TextMode="Password"
                CssClass="textbox"></asp:TextBox><br />

            <asp:Button ID="btnLogin" runat="server"
                Text="Login"
                CssClass="button"
                OnClick="btnLogin_Click" />

            <br /><br />

            <asp:Label ID="lblMessage" runat="server"
                CssClass="message"></asp:Label>

        </div>
    </form>
</body>
</html>




