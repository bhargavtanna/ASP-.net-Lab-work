<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="BillingDemo.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hardware Store Billing</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .box {
            width: 600px;
            margin: 40px auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px gray;
            border-radius: 8px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        .image {
            width: 200px;
            height: 150px;
            border: 1px solid gray;
        }

        .txt {
            width: 100%;
            padding: 6px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: blue;
            color: white;
            border: none;
        }

        .result {
            color: green;
            font-size: 18px;
            font-weight: bold;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 align="center">Hardware Store Billing</h2>

<table>

<tr>
<td>Select Item</td>

<td>
<asp:ListBox ID="lstItems"
runat="server"
AutoPostBack="true"
OnSelectedIndexChanged="lstItems_SelectedIndexChanged">

<asp:ListItem Value="100">Hammer</asp:ListItem>
<asp:ListItem Value="250">Screw Driver</asp:ListItem>
<asp:ListItem Value="500">Electric Drill</asp:ListItem>
<asp:ListItem Value="150">Pliers</asp:ListItem>
<asp:ListItem Value="300">Wrench</asp:ListItem>

</asp:ListBox>

</td>
</tr>


<tr>
<td>Item Image</td>

<td>
<asp:Image ID="imgItem"
runat="server"
CssClass="image" />
</td>

</tr>


<tr>
<td>Price</td>

<td>
<asp:Label ID="lblPrice"
runat="server"></asp:Label>
</td>

</tr>


<tr>
<td>Quantity</td>

<td>
<asp:TextBox ID="txtQuantity"
runat="server"
CssClass="txt"></asp:TextBox>
</td>

</tr>


<tr>
<td colspan="2">

<asp:Button ID="btnCalculate"
runat="server"
Text="Calculate Bill"
CssClass="btn"
OnClick="btnCalculate_Click" />

</td>
</tr>


<tr>
<td>Total Cost</td>

<td>
<asp:Label ID="lblTotal"
runat="server"
CssClass="result"></asp:Label>
</td>

</tr>


</table>

</div>

</form>

</body>
</html>


