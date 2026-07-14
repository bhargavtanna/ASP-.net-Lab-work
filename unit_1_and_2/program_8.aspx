<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marksheet.aspx.cs" Inherits="StudentDemo.Marksheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Marksheet</title>

    <style>
        body{font-family:Arial;background:#f2f2f2;}
        .box{
            width:550px;
            margin:20px auto;
            background:white;
            padding:20px;
            box-shadow:0 0 10px gray;
        }
        table{width:100%;}
        td{padding:8px;}
        .txt{width:100%;padding:6px;}
        .btn{
            width:100%;
            padding:10px;
            background:blue;
            color:white;
            border:none;
        }
        .error{color:red;}
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 align="center">Student Marksheet</h2>

<table>

<tr>
<td>Roll No</td>
<td>
<asp:TextBox ID="txtRoll" runat="server" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ID="rf1" runat="server"
ControlToValidate="txtRoll"
ErrorMessage="Required"
CssClass="error"/>
</td>
</tr>

<tr>
<td>Name</td>
<td>
<asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ID="rf2" runat="server"
ControlToValidate="txtName"
ErrorMessage="Required"
CssClass="error"/>
</td>
</tr>

<tr>
<td>Course</td>
<td>
<asp:DropDownList ID="ddlCourse" runat="server" CssClass="txt">
<asp:ListItem>BCA</asp:ListItem>
<asp:ListItem>BBA</asp:ListItem>
<asp:ListItem>B.Com</asp:ListItem>
<asp:ListItem>B.Sc IT</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Semester</td>
<td>
<asp:DropDownList ID="ddlSem" runat="server" CssClass="txt">
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Email</td>
<td>
<asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
<asp:RegularExpressionValidator ID="rev1" runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
CssClass="error"/>
</td>
</tr>

<tr>
<td>Mobile</td>
<td>
<asp:TextBox ID="txtMobile" runat="server" CssClass="txt"></asp:TextBox>
<asp:RegularExpressionValidator ID="rev2" runat="server"
ControlToValidate="txtMobile"
ValidationExpression="[0-9]{10}"
ErrorMessage="10 Digit Only"
CssClass="error"/>
</td>
</tr>

<tr><td>Subject 1</td><td><asp:TextBox ID="txtM1" runat="server" CssClass="txt"></asp:TextBox></td></tr>
<tr><td>Subject 2</td><td><asp:TextBox ID="txtM2" runat="server" CssClass="txt"></asp:TextBox></td></tr>
<tr><td>Subject 3</td><td><asp:TextBox ID="txtM3" runat="server" CssClass="txt"></asp:TextBox></td></tr>
<tr><td>Subject 4</td><td><asp:TextBox ID="txtM4" runat="server" CssClass="txt"></asp:TextBox></td></tr>
<tr><td>Subject 5</td><td><asp:TextBox ID="txtM5" runat="server" CssClass="txt"></asp:TextBox></td></tr>

<tr>
<td colspan="2">
<asp:Button ID="btnSubmit"
runat="server"
Text="Submit"
CssClass="btn"
OnClick="btnSubmit_Click"/>
</td>
</tr>

</table>

</div>

</form>

</body>
</html>

