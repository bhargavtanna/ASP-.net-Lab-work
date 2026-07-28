<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CssDemo.aspx.cs" Inherits="YourProjectNamespace.CssDemo" %>

<!DOCTYPE html>
<html xmlns="http://w3.org">
<head runat="server">
    <title>ASP.NET CSS Cascade Demonstration</title>
    
    <link href="site.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .container {
            border: 2px solid #333333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Cascading Style Sheets in ASP.NET</h2>

            <asp:Button ID="btnToggleTheme" runat="server" 
                Text="Change Theme Color" 
                CssClass="btn-primary" 
                OnClick="btnToggleTheme_Click" />
        </div>
    </form>
</body>
</html>