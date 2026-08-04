<%@ Page Title="Employee Recruitment" Language="C#" AutoEventWireup="true" CodeBehind="program_4.aspx.cs" Inherits="unit_4_programs.program_4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Recruitment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input:focus, .form-group textarea:focus, .form-group select:focus {
            outline: none;
            border-color: #007bff;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        h3 {
            color: #555;
            margin-top: 20px;
        }
        .btn-group {
            text-align: center;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }
        .btn-success {
            background-color: #28a745;
            color: white;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .btn-warning {
            background-color: #ffc107;
            color: black;
        }
        .btn-warning:hover {
            background-color: #e0a800;
        }
        .btn-danger {
            background-color: #dc3545;
            color: white;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .btn-info {
            background-color: #17a2b8;
            color: white;
        }
        .btn-info:hover {
            background-color: #138496;
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
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        table th {
            background-color: #007bff;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>Employee Recruitment Form</h2>
            <hr />

            <form id="form1" runat="server">
                <div class="form-group">
                    <label>Employee Name:</label>
                    <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Phone:</label>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Position:</label>
                    <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Department:</label>
                    <asp:DropDownList ID="ddlDepartment" runat="server">
                        <asp:ListItem>Select Department</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Sales</asp:ListItem>
                        <asp:ListItem>Operations</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label>Salary:</label>
                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Address:</label>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="btn-group">
                    <asp:Button ID="btnAdd" runat="server" Text="Add Employee" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
                </div>

                <h3>Search Employee</h3>
                <div class="form-group">
                    <label>Search by Employee Name:</label>
                    <asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>
                </div>

                <div class="btn-group">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-info" OnClick="btnSearch_Click" />
                    <a href="Menu.aspx" class="btn btn-secondary">Back to Menu</a>
                </div>

                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                </div>

                <h3>Employees List</h3>
                <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="true">
                </asp:GridView>
            </form>
        </div>
    </div>
</body>
</html>
