<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="HakunaMatata_30280117.Package" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 502px;
            background-color: #FF6600;
        }
        .auto-style2 {
            margin-left: 275px;
        }
    </style>
</head>
<body style="height: 500px">
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="HAKUNA MATATA ACTIVITY PACKAGE"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" BackColor="Red" CssClass="auto-style2" Font-Bold="True" ForeColor="White" GroupingText="Activity Package details" Height="229px" Width="447px">
                <br />
                <asp:Label ID="Label2" runat="server" Text="The Activity package includes:"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Fishing"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Game drive for 2"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="2 full day spa package"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="2 bedroom, 3 day accommodation"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Total Price R15 000"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBook" runat="server" Font-Bold="True" OnClick="btnBook_Click" Text="BOOK" Width="98px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" Text="BACK" Width="86px" />
        </div>
    </form>
</body>
</html>
