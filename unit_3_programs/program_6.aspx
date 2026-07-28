<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_6.aspx.cs" Inherits="unit_3_ASP.program_6" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 6 - Web.config Configuration</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div>
            <h2>Web.config System Tags Demo</h2>
            
            <p>Click below to pull the structural app settings string variable values defined inside the configuration XML file structure markup:</p>
            
            <asp:Button ID="btnReadConfig" runat="server" Text="Fetch Web.config Values" OnClick="btnReadConfig_Click" />
            <br /><br />
            
            <asp:Label ID="lblAppName" runat="server" Font-Bold="true"></asp:Label><br />
            <asp:Label ID="lblAppVersion" runat="server" Font-Bold="true"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
