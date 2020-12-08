<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Spa.aspx.cs" Inherits="HakunaMatata_30280117.Spa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 536px;
            background-color: #66CCFF;
        }
        .auto-style2 {
            width: 98%;
            height: 39px;
        }
        .auto-style3 {
            width: 316px;
        }
        .auto-style4 {
            width: 100%;
            height: 52px;
        }
        .auto-style5 {
            width: 310px;
        }
        .auto-style6 {
            width: 353px;
        }
        .auto-style7 {
            width: 349px;
        }
        .auto-style8 {
            margin-left: 15px;
        }
    </style>
</head>
<body style="height: 512px">
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="HAKUNA MATATA SPA BOOKING"></asp:Label>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Choose your spa treatments:"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="(Please note that you can only pick one at a time)"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Full body massage (R470 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Full back massage (R270 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Head, neck and shoulder massage (R350 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Facial treamtment (R399 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton5" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Foot massage (R250 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton6" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Hand massage (R250 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton7" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Spa Manicure (R300 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton8" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Spa Pedicure (R320 pp)" />
                        <br />
                        <asp:RadioButton ID="RadioButton9" runat="server" ForeColor="White" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Full Day Spa Package (R4999 pp)" />
                    </td>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="239px" ImageUrl="~/Images/SpaMain1.jpg" Width="322px" />
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Enjoy our spa facilities before your treatment by relaxing in our steam room, sauna, Swiss shower or heated indoor spa pool, easing away any stress and relaxing your mind and body. Hakuna Matata spa offers a variety of treatments and spa packages to cater to your senses. Experience serene bliss in our treatment rooms, which have shifting colours that appeal to different aspects of your psyche. Promoting a relaxed frame of mind and soft, soothing music adds to the effects, allowing "></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White">you to drift away while therapists gently knead the stress from your muscles with a variety of style of massages.</asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
            <br />
            <br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;<asp:Button ID="btnReturn" runat="server" Height="37px" OnClick="btnReturn_Click" Text="BACK" Width="154px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBook" runat="server" Height="37px" OnClick="btnBook_Click" Text="BOOK" Width="154px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
