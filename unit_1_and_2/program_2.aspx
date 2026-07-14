<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationDemo.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .register-box {
            width: 450px;
            margin: 30px auto;
            padding: 25px;
            background: white;
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

        .textbox, .dropdown {
            width: 100%;
            padding: 6px;
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
        <div class="register-box">
            <h2>User Registration</h2>

            <table>
                <tr>
                    <td>Full Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
                        &nbsp;
                        <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                </tr>

                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>City</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server" CssClass="dropdown">
                            <asp:ListItem>Select City</asp:ListItem>
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Vadodara</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Mobile Number</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:CheckBox ID="chkTerms" runat="server"
                            Text="I agree to the Terms and Conditions" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnRegister" runat="server"
                            Text="Register" CssClass="button" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnReset" runat="server"
                            Text="Reset" CausesValidation="False" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
