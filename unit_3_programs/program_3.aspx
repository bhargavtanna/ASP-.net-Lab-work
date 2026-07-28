<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YourProjectNamespace.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .welcome-box { border-left: 5px solid #3498db; padding-left: 15px; background: #eef2f7; padding: 15px; }
        .action-button { background: #3498db; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBodyContent" runat="server">
    <div class="welcome-box">
        <h2>Welcome to the Application Homepage</h2>
        <p>This concrete text area represents the isolated child Content Page layout.</p>
    </div>
    
    <p style="line-height: 1.6;">
        Notice that structural headers, navigation link menus, system tracking footers, 
        and core layouts are absent from this isolated source file. They are inherited 
        transparently via the parent template configuration.
    </p>

    <asp:Button ID="btnAction" runat="server" Text="Execute Homepage Task" CssClass="action-button" OnClick="btnAction_Click" />
    <br /><br />
    <asp:Label ID="lblStatus" runat="server" Font-Bold="true" ForeColor="#27ae60"></asp:Label>
</asp:Content>