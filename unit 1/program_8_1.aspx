<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="StudentDemo.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Student Result</title>

<style>
body{font-family:Arial;background:#f2f2f2;}
.box{
width:400px;
margin:80px auto;
background:white;
padding:20px;
box-shadow:0 0 10px gray;
}
table{width:100%;}
td{padding:8px;}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 align="center">Student Result</h2>

<table>

<tr><td>Roll No</td><td><asp:Label ID="lblRoll" runat="server"></asp:Label></td></tr>

<tr><td>Name</td><td><asp:Label ID="lblName" runat="server"></asp:Label></td></tr>

<tr><td>Percentage</td><td><asp:Label ID="lblPer" runat="server"></asp:Label></td></tr>

<tr><td>Grade</td><td><asp:Label ID="lblGrade" runat="server"></asp:Label></td></tr>

<tr><td>Result</td><td><asp:Label ID="lblResult" runat="server"></asp:Label></td></tr>

</table>

</div>

</form>

</body>
</html>


