<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="program_4.aspx.cs" Inherits="unit_3_ASP.program_4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 4 - State Management</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div>
            <h2>State Management (Cookies, Session, Application)</h2>
            
            Type something: 
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <br /><br />
            
            <asp:Button ID="btnSave" runat="server" Text="Save to All States" OnClick="btnSave_Click" />
            <asp:Button ID="btnLoad" runat="server" Text="Load from States" OnClick="btnLoad_Click" />
            <br /><br />
            
            <asp:Label ID="lblCookie" runat="server" ForeColor="Blue"></asp:Label><br />
            <asp:Label ID="lblSession" runat="server" ForeColor="Green"></asp:Label><br />
            <asp:Label ID="lblApplication" runat="server" ForeColor="Red"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>