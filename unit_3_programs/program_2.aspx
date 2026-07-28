<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemeDemo.aspx.cs" Inherits="YourProjectNamespace.ThemeDemo" %>

<!DOCTYPE html>
<html xmlns="http://w3.org">
<head runat="server">
    <title>ASP.NET Themes and Skins Demonstration</title>
</head>
<body style="padding: 30px; font-family: sans-serif;">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblHeader" runat="server" SkinID="HeaderLabel" Text="ASP.NET Themes & Skins Demo" />
            <br /><br />

            <asp:Label ID="lblDescription" runat="server" Text="This text changes font and colour dynamically based on the chosen theme." />
            <br /><br />

            <asp:Button ID="btnBlue" runat="server" Text="Switch to Blue" OnClick="btnBlue_Click" />
            <asp:Button ID="btnGreen" runat="server" Text="Switch to Green" OnClick="btnGreen_Click" />
        </div>
    </form>
</body>
</html>