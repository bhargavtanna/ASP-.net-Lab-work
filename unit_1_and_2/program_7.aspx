<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAdmission.aspx.cs" Inherits="AdmissionDemo.StudentAdmission" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Admission Form</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 500px;
            margin: 30px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px gray;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        .textbox {
            width: 100%;
            padding: 6px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background: blue;
            color: white;
            border: none;
            font-size: 16px;
        }

        .error {
            color: red;
            font-size: 12px;
        }

        .success {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

<div class="container">

<h2 align="center">Student Admission Form</h2>

<table>

<tr>
<td>Student Name</td>
<td>
<asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvName" runat="server"
ControlToValidate="txtName"
ErrorMessage="* Name Required"
CssClass="error" />
</td>
</tr>

<tr>
<td>Email</td>
<td>
<asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfvEmail" runat="server"
ControlToValidate="txtEmail"
ErrorMessage="* Email Required"
CssClass="error" />

<asp:RegularExpressionValidator ID="revEmail" runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
CssClass="error" />
</td>
</tr>

<tr>
<td>Password</td>
<td>
<asp:TextBox ID="txtPassword" runat="server"
TextMode="Password"
CssClass="textbox"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfvPassword" runat="server"
ControlToValidate="txtPassword"
ErrorMessage="* Password Required"
CssClass="error" />
</td>
</tr>

<tr>
<td>Confirm Password</td>
<td>
<asp:TextBox ID="txtConfirmPassword" runat="server"
TextMode="Password"
CssClass="textbox"></asp:TextBox>

<asp:CompareValidator ID="cvPassword" runat="server"
ControlToCompare="txtPassword"
ControlToValidate="txtConfirmPassword"
ErrorMessage="Password Not Matched"
CssClass="error" />
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<asp:RadioButton ID="rbMale" runat="server"
GroupName="Gender"
Text="Male" />

<asp:RadioButton ID="rbFemale" runat="server"
GroupName="Gender"
Text="Female" />
</td>
</tr>

<tr>
<td>Date of Birth</td>
<td>
<asp:TextBox ID="txtDOB" runat="server"
TextMode="Date"
CssClass="textbox"></asp:TextBox>
</td>
</tr>

<tr>
<td>Course</td>
<td>
<asp:DropDownList ID="ddlCourse" runat="server" CssClass="textbox">
<asp:ListItem>Select Course</asp:ListItem>
<asp:ListItem>BCA</asp:ListItem>
<asp:ListItem>B.Sc IT</asp:ListItem>
<asp:ListItem>B.Com</asp:ListItem>
<asp:ListItem>BBA</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Mobile No.</td>
<td>
<asp:TextBox ID="txtMobile" runat="server"
CssClass="textbox"></asp:TextBox>

<asp:RegularExpressionValidator ID="revMobile"
runat="server"
ControlToValidate="txtMobile"
ValidationExpression="[0-9]{10}"
ErrorMessage="Enter 10 Digit Mobile No."
CssClass="error" />
</td>
</tr>

<tr>
<td>Address</td>
<td>
<asp:TextBox ID="txtAddress"
runat="server"
TextMode="MultiLine"
Rows="3"
CssClass="textbox"></asp:TextBox>
</td>
</tr>

<tr>
<td colspan="2">

<asp:CheckBox ID="chkAgree"
runat="server"
Text="I Agree Terms & Conditions" />

<asp:CheckBox ID="CheckBox1" runat="server" Text="I Agree Terms & Conditions" />

<!-- Changed to CustomValidator and added OnServerValidate -->
<asp:CustomValidator ID="cvAgree" runat="server" 
    ErrorMessage="* Accept Terms" 
    CssClass="error" 
    OnServerValidate="cvAgree_ServerValidate" />

</td>
</tr>

<tr>
<td colspan="2">

<asp:Button ID="btnSubmit"
runat="server"
Text="Submit"
CssClass="button"
OnClick="btnSubmit_Click" />

</td>
</tr>

<tr>
<td colspan="2" align="center">

<asp:Label ID="lblMessage"
runat="server"
CssClass="success"></asp:Label>

</td>
</tr>

</table>

</div>

</form>

</body>
</html>


