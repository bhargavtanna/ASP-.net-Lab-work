<%@ Page Title="Unit 4 Programs" Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="unit_4_programs.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit 4 Programs</title>
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
        .menu-container {
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .programs-list {
            list-style: none;
            padding: 0;
            margin: 20px 0;
        }
        .programs-list li {
            margin-bottom: 15px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .programs-list a {
            display: block;
            padding: 15px;
            color: #333;
            text-decoration: none;
        }
        .programs-list a:hover {
            background-color: #f0f0f0;
        }
        .program-title {
            font-size: 18px;
            color: #333;
            margin-bottom: 5px;
        }
        .program-desc {
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="menu-container">
            <h1>Unit 4 Programs</h1>
            <p style="text-align: center; color: #666;">Choose a program from the list below</p>

            <ul class="programs-list">
                <li>
                    <a href="program_1.aspx">
                        <div class="program-title">1. User Sign Up</div>
                        <div class="program-desc">Users can sign up by filling form and data will be stored in database.</div>
                    </a>
                </li>
                <li>
                    <a href="program_2.aspx">
                        <div class="program-title">2. Student Registration</div>
                        <div class="program-desc">Register students with automatic User ID and password generation.</div>
                    </a>
                </li>
                <li>
                    <a href="program_3.aspx">
                        <div class="program-title">3. Password Change</div>
                        <div class="program-desc">Change password by verifying current password from database.</div>
                    </a>
                </li>
                <li>
                    <a href="program_4.aspx">
                        <div class="program-title">4. Employee Recruitment</div>
                        <div class="program-desc">Add, Update, Delete and Search employee records in database.</div>
                    </a>
                </li>
                <li>
                    <a href="program_5.aspx">
                        <div class="program-title">5. Student Marksheet</div>
                        <div class="program-desc">Manage student marks with Add, Update, Delete and Search features.</div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>
