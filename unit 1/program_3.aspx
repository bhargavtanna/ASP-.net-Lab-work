<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ContactDemo.ContactUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .contact-box {
            width: 500px;
            margin: 40px auto;
            padding: 25px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px gray;
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

        <div class="contact-box">
            <h2>Contact Us</h2>

            <table>
                <tr>
                    <td>Name</td>
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
                    <td>Mobile No.</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Subject</td>
                    <td>
                        <asp:DropDownList ID="ddlSubject" runat="server" CssClass="dropdown">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>General Inquiry</asp:ListItem>
                            <asp:ListItem>Technical Support</asp:ListItem>
                            <asp:ListItem>Feedback</asp:ListItem>
                            <asp:ListItem>Complaint</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Message</td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server"
                            TextMode="MultiLine"
                            Rows="5"
                            CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server"
                            Text="Submit" CssClass="button" />
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








