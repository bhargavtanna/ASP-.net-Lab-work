<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="BlogDemo.Blog" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Blog</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #0078D7;
            color: white;
            text-align: center;
            padding: 15px;
        }

        .container {
            width: 90%;
            margin: 20px auto;
            display: flex;
        }

        .content {
            width: 70%;
            background: white;
            padding: 20px;
            margin-right: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px gray;
        }

        .sidebar {
            width: 30%;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px gray;
        }

        .blog-image {
            width: 100%;
            height: 250px;
        }

        .textbox {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #0078D7;
            color: white;
            border: none;
            cursor: pointer;
        }

        .footer {
            text-align: center;
            background-color: #333;
            color: white;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>My Blog</h1>
    </div>

    <div class="container">

        <!-- Blog Content -->
        <div class="content">

            <h2>Welcome to My Blog</h2>

            <asp:Image ID="imgBlog" runat="server"
                ImageUrl="~/Images/blog.jpg"
                CssClass="blog-image" />

            <p>
                This is a sample blog page created using ASP.NET Web Forms.
                You can display blog articles, news, technology updates,
                educational content, and much more.
            </p>

            <h3>Blog Categories</h3>

            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Technology</asp:ListItem>
                <asp:ListItem>Education</asp:ListItem>
                <asp:ListItem>Programming</asp:ListItem>
                <asp:ListItem>Travel</asp:ListItem>
            </asp:BulletedList>

        </div>

        <!-- Sidebar -->
        <div class="sidebar">

            <h3>Search Blog</h3>

            <asp:TextBox ID="txtSearch" runat="server"
                CssClass="textbox"
                placeholder="Search here"></asp:TextBox>

            <asp:Button ID="btnSearch" runat="server"
                Text="Search"
                CssClass="button" />

            <br /><br />

            <h3>Recent Posts</h3>

            <asp:ListBox ID="lstPosts" runat="server" Width="100%">
                <asp:ListItem>Introduction to ASP.NET</asp:ListItem>
                <asp:ListItem>Web Forms Tutorial</asp:ListItem>
                <asp:ListItem>HTML & CSS Basics</asp:ListItem>
                <asp:ListItem>C# Programming</asp:ListItem>
                <asp:ListItem>SQL Server Guide</asp:ListItem>
            </asp:ListBox>

        </div>

    </div>

    <div class="footer">
        © 2026 My Blog. All Rights Reserved.
    </div>

</form>

</body>
</html>


