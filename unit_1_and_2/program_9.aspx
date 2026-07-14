<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorDemo.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .box {
            width: 400px;
            margin: 80px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px gray;
            border-radius: 5px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        .txt {
            width: 100%;
            padding: 6px;
        }

        .btn {
            width: 70px;
            padding: 8px;
            background: blue;
            color: white;
            border: none;
            cursor: pointer;
        }

        .error {
            color: red;
        }

        .result {
            color: green;
            font-weight: bold;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 align="center">Simple Calculator</h2>

<table>

<tr>
<td>First Number</td>
<td>
<asp:TextBox ID="txtNum1" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfv1"
runat="server"
ControlToValidate="txtNum1"
ErrorMessage="Required"
CssClass="error" />

<asp:RegularExpressionValidator ID="rev1"
runat="server"
ControlToValidate="txtNum1"
ValidationExpression="^\d+(\.\d+)?$"
ErrorMessage="Numbers Only"
CssClass="error" />
</td>
</tr>

<tr>
<td>Second Number</td>
<td>
<asp:TextBox ID="txtNum2" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfv2"
runat="server"
ControlToValidate="txtNum2"
ErrorMessage="Required"
CssClass="error" />

<asp:RegularExpressionValidator ID="rev2"
runat="server"
ControlToValidate="txtNum2"
ValidationExpression="^\d+(\.\d+)?$"
ErrorMessage="Numbers Only"
CssClass="error" />
</td>
</tr>

<tr>
<td colspan="2" align="center">

<asp:Button ID="btnAdd" runat="server"
Text="+"
CssClass="btn"
OnClick="btnAdd_Click" />

<asp:Button ID="btnSub" runat="server"
Text="-"
CssClass="btn"
OnClick="btnSub_Click" />

<asp:Button ID="btnMul" runat="server"
Text="*"
CssClass="btn"
OnClick="btnMul_Click" />

<asp:Button ID="btnDiv" runat="server"
Text="/"
CssClass="btn"
OnClick="btnDiv_Click" />

</td>
</tr>

<tr>
<td>Result</td>
<td>
<asp:Label ID="lblResult"
runat="server"
CssClass="result"></asp:Label>
</td>
</tr>

</table>

</div>

</form>

</body>
</html>


