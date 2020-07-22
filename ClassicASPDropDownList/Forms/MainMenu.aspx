<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="ClassicASPDropDownList.Forms.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF3300" Text="Classic ASP.Net Dropdown List Demo"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnDisplaySelection" runat="server" OnClick="btnDisplaySelection_Click" Text="Display Selection" Width="244px" />
            <br />
            <br />
            Countries<br />
            <asp:DropDownList ID="ddlCountries" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
