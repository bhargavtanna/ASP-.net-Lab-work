<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_8.aspx.cs" Inherits="unit_3_ASP.program_8" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 8 - Marksheet Verification Hub</title>
</head>
<body style="font-family: Arial; margin: 20px;">
    <form id="form1" runat="server">
        <div>
            <h2>Student Marksheet Processing Center</h2>
            
            Student Name: <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            <br /><br />
            
            Web Programming Marks: <asp:TextBox ID="txtWebMarks" runat="server"></asp:TextBox>
            <br /><br />
            
            Database Design Marks: <asp:TextBox ID="txtDbMarks" runat="server"></asp:TextBox>
            <br /><br />
            
            <asp:Button ID="btnCalculate" runat="server" Text="Compute Total Scores" OnClick="btnCalculate_Click" />
            <br /><br />
            
            <asp:Label ID="lblSummary" runat="server" Font-Size="16px"></asp:Label>
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
