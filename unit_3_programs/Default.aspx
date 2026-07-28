<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="unit_3_ASP.Default" %>

<!DOCTYPE html>
<html xmlns="http://w3.org">
<head runat="server">
    <title>My ASP.NET Projects Index</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
            margin: 40px;
        }
        .box {
            background-color: white;
            padding: 30px;
            border: 1px solid #ccc;
            max-width: 600px;
            margin: 0 auto;
        }
        h2 {
            color: #333;
            margin-top: 0;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin-bottom: 15px;
        }
        .nav-link {
            display: block;
            padding: 15px;
            background-color: #f9f9f9;
            color: #0066cc;
            text-decoration: none;
            font-weight: bold;
            border: 1px solid #ddd;
            border-left: 5px solid #0066cc;
        }
        .nav-link:hover {
            background-color: #0066cc;
            color: white;
        }
        .description {
            display: block;
            font-size: 13px;
            color: #666;
            font-weight: normal;
            margin-top: 5px;
        }
        .nav-link:hover .description {
            color: #e0e0e0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>ASP.NET Assignment Hub</h2>
            <hr />
            
            <ul>
                <li>
                    <a class="nav-link" href="program_1.aspx">
                        🚀 Program 1: Cascading Style Sheets (CSS)
                        <span class="description">Demonstrates Inline, Internal, and External CSS styling priorities.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_2.aspx">
                        🎨 Program 2: Themes and Skins
                        <span class="description">Demonstrates global App_Themes, default skins, and named SkinIDs.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_3.aspx">
                        🏗️ Program 3: Master Pages Layout
                        <span class="description">Demonstrates ContentPlaceHolders and shared site layout templates.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_4.aspx">
                        💾 Program 4: Cookies, Session & Application State
                        <span class="description">Demonstrates data persistence across clients, sessions, and the entire runtime lifecycle.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_5.aspx">
                        🔄 Program 5: ViewState & QueryString State
                        <span class="description">Demonstrates preserving data during postbacks and passing variables via URL parameters.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_6.aspx">
                        ⚙️ Program 6: Web.config Configuration Tags
                        <span class="description">Demonstrates reading appSettings key value strings out of system XML structure configurations.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_7.aspx">
                        🔐 Program 7: Login Exception Handling
                        <span class="description">Demonstrates try-catch error blocks to securely validate form authorization values.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_8.aspx">
                        📊 Program 8: Marksheet Exception Handling
                        <span class="description">Demonstrates capturing FormatExceptions when parsing unsafe math numeric textbox inputs.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_9.aspx">
                        🧮 Program 9: Calculator Exception Handling
                        <span class="description">Demonstrates capturing FormatException and custom DivideByZeroException issues.</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="program_10.aspx">
                        🎭 Program 10: Dynamic Theme Selection
                        <span class="description">Demonstrates switching App_Themes runtime configurations using DropDownList selections.</span>
                    </a>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>