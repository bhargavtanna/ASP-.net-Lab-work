<%@ Page Title="Password Change" Language="C#" AutoEventWireup="true" CodeBehind="program_3.aspx.cs" Inherits="unit_4_programs.program_3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Change</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input:focus, .form-group textarea:focus {
            outline: none;
            border-color: #007bff;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .btn-group {
            text-align: center;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            display: inline-block;
        }
        .btn-secondary:hover {
            background-color: #545b62;
        }
        .message {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>Change Password</h2>
            <hr />

            <form id="form1" runat="server">
                <div class="form-group">
                    <label>User ID:</label>
                    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Current Password:</label>
                    <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>New Password:</label>
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Confirm New Password:</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <div class="btn-group">
                    <asp:Button ID="btnChange" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnChange_Click" />
                    <a href="Menu.aspx" class="btn btn-secondary">Back to Menu</a>
                </div>

                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
