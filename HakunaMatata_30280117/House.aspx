<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="House.aspx.cs" Inherits="HakunaMatata_30280117.House" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 501px;
            background-color: #999966;
        }
        .auto-style2 {
            width: 100%;
            height: 360px;
        }
        .auto-style3 {
            width: 320px;
        }
        .auto-style5 {
            width: 320px;
            height: 19px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            margin-left: 3px;
        }
        .auto-style9 {
            width: 320px;
            height: 185px;
        }
        .auto-style11 {
            height: 185px;
        }
        .auto-style12 {
            width: 346px;
            height: 19px;
        }
        .auto-style13 {
            width: 346px;
            height: 185px;
        }
        .auto-style14 {
            width: 346px;
        }
        .auto-style15 {
            margin-left: 1px;
        }
        .auto-style16 {
            margin-left: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Hakuna Matata Book Accommodation"></asp:Label>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Number of rooms: 2"></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Text="Price per day: R2095"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" Text="Number of rooms: 4"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White" Text="Price per day: R3650"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Text="Number of rooms: 6"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" Text="Price per day: R4500"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style16" Height="137px" ImageUrl="~/Images/houseMain.jpg" Width="271px" />
                    </td>
                    <td class="auto-style13">
                        <asp:Image ID="Image2" runat="server" CssClass="auto-style8" Height="133px" ImageUrl="~/Images/houseMain.jpg" Width="271px" />
                    </td>
                    <td class="auto-style11">
                        <asp:Image ID="Image3" runat="server" CssClass="auto-style15" Height="125px" ImageUrl="~/Images/houseMain.jpg" Width="272px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Number of days: "></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="txt2" runat="server" Width="68px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<asp:Button ID="btn2" runat="server" Font-Bold="True" OnClick="btn2_Click" Text="BOOK" Width="96px" />
                        <br />
                    </td>
                    <td class="auto-style14">&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Number of days: "></asp:Label>
&nbsp;
                        <asp:TextBox ID="txt4" runat="server" Width="80px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
&nbsp;
                        <asp:Button ID="btn4" runat="server" Font-Bold="True" OnClick="btn4_Click" Text="BOOK" Width="96px" />
                        <br />
                    </td>
                    <td>&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Number of days: "></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="txt6" runat="server" Width="72px"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<asp:Button ID="btn6" runat="server" Font-Bold="True" OnClick="btn6_Click" Text="BOOK" Width="96px" />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Black" Height="34px" OnClick="Button1_Click" Text="BACK" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
