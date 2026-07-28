<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_9.aspx.cs" Inherits="unit_3_ASP.program_9" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 9 - Calculator Exception Handling</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div style="width: 350px; padding: 15px; border: 1px solid black; background-color: #fafafa;">
            <h3>Simple Calculator Dashboard</h3>
            
            First Number:<br />
            <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
            <br /><br />
            
            Second Number:<br />
            <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
            <br /><br />
            
            Choose Operation:<br />
            <asp:Button ID="btnAdd" runat="server" Text="+" Width="40px" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSub" runat="server" Text="-" Width="40px" OnClick="btnSub_Click" />
            <asp:Button ID="btnMul" runat="server" Text="*" Width="40px" OnClick="btnMul_Click" />
            <asp:Button ID="btnDiv" runat="server" Text="/" Width="40px" OnClick="btnDiv_Click" />
            <br /><br />
            
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" Font-Size="16px"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
