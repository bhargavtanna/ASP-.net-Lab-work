<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_5.aspx.cs" Inherits="unit_3_ASP.program_5" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 5 - ViewState and QueryString</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div>
            <h2>State Management (ViewState & QueryString)</h2>
            
            Enter Counter Start Number: 
            <asp:TextBox ID="txtCount" runat="server"></asp:TextBox>
            <br /><br />
            
            <asp:Button ID="btnSetView" runat="server" Text="Store in ViewState" OnClick="btnSetView_Click" />
            <asp:Button ID="btnIncrement" runat="server" Text="Click to Count Up" OnClick="btnIncrement_Click" />
            <br /><br />
            
            <asp:Label ID="lblViewResult" runat="server" Font-Bold="true"></asp:Label>
            
            <hr />
            
            Send Data to another page via QueryString URL parameter:<br />
            Name Input: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnQuerySend" runat="server" Text="Redirect with QueryString" OnClick="btnQuerySend_Click" />
            <br /><br />
            <asp:Label ID="lblQueryReceived" runat="server" ForeColor="Purple"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
