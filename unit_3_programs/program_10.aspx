<%@ Page Language="C#" AutoEventWireup="true" CodeFile="program_10.aspx.cs" Inherits="unit_3_ASP.program_10" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Program 10 - Dynamic Theme Selection</title>
</head>
<body style="padding: 20px;">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitle" runat="server" SkinID="HeaderLabel" Text="Dynamic Theme Portal" />
            <br /><br />
            
            <asp:Label ID="lblStatus" runat="server" Text="Select your visual layout from the dropdown selection menu below:" />
            <br /><br />
            
            Choose Style Theme: 
            <asp:DropDownList ID="ddlThemes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlThemes_SelectedIndexChanged">
                <asp:ListItem Text="Blue Layout Mode" Value="BlueTheme"></asp:ListItem>
                <asp:ListItem Text="Green Layout Mode" Value="GreenTheme"></asp:ListItem>
            </asp:DropDownList>
            
            <br /><br />
            <asp:Button ID="btnSample" runat="server" Text="Themed Action Button" />
            
            <br /><br />
            <a href="Default.aspx">Back to Hub</a>
        </div>
    </form>
</body>
</html>
