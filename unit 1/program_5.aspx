<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="PasswordDemo.ChangePassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .password-box {
            width: 400px;
            margin: 80px auto;
            padding: 25px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px gray;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        .textbox {
            width: 100%;
            padding: 8px;
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

        <div class="password-box">

            <h2>Change Password</h2>

            <table>

                <tr>
                    <td>Current Password</td>
                    <td>
                        <asp:TextBox ID="txtCurrentPassword" runat="server"
                            TextMode="Password"
                            CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>New Password</td>
                    <td>
                        <asp:TextBox ID="txtNewPassword" runat="server"
                            TextMode="Password"
                            CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server"
                            TextMode="Password"
                            CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnChangePassword" runat="server"
                            Text="Change Password"
                            CssClass="button" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnCancel" runat="server"
                            Text="Cancel"
                            CausesValidation="False" />
                    </td>
                </tr>

            </table>

        </div>

    </form>

</body>
</html>
