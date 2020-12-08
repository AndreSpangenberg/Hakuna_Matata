<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HakunaMatata.aspx.cs" Inherits="HakunaMatata_30280117.HakunaMatata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleHakunaMatata.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class ="main">
            <div class="logo">
                <img src="Images/mainLogoY.png" />
            </div>
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="login.aspx">Login</a></li>
                <li><a href="Register.aspx">Register</a></li>
                <li><a href="Cart.aspx">Cart</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
            </ul>
        </div>
    </header>
    <form runat="server">
        <div class="box1">
            <img src="Images/GameDriveMain.jpg" class="gameDrive"/>
            <asp:Button Text="BOOK GAME DRIVE" CssClass="btnGameDrive" runat="server" ID="btnGameDrive" OnClick="btnGameDrive_Click" />
        </div>
        <div class="box2">
            <img src="Images/houseMain.jpg" class="house"/>
            <asp:Button Text="BOOK ACCOMMODATION" CssClass="btnHouse" runat="server" ID="btnHouse" OnClick="btnHouse_Click" />
        </div>
        <div class="box3">
            <img src="Images/SpaMain1.jpg" class="spa" />
            <asp:Button Text="BOOK SPA" CssClass="btnSpa" runat="server" ID="btnSpa" OnClick="btnSpa_Click" />
            
        </div>
        <div class="box4">
            <img src="Images/package.jpg" class="package"/>
            <asp:Button Text="BOOK PACKAGE" CssClass="btnPackage" runat="server" ID="btnPackage" OnClick="btnPackage_Click" />
        </div>
    </form>

</body>
</html>
