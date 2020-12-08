<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HakunaMatata_30280117.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleContact.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
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
                <li class="active"><a href="Contact.aspx">Contact</a></li>
            </ul>
        </div>
    </header>
    <div class="Contactbox">
         <h2 class="auto-style1">HAKUNA MATATA contact details:</h2>
         <br />
         <form runat="server">
             <asp:Label Text="Contact us:" CssClass ="lblContact" runat="server" ID="lblContact" />
             <br />
             <br />
             <asp:Label Text="Home: 0113264714" CssClass ="lblNum" runat="server" ID="lblNum" />
             <br />
             <asp:Label Text="Piet van der Merwe: 0833264718" CssClass ="lblNum1" runat="server" ID="lblNum1" />
             <br />
             <asp:Label Text="Sandra Prinsloo: 0767964579" CssClass ="lblNum2" runat="server" ID="lblNum2" />
             <br />
             <br />
             <asp:Label Text="Email us:" CssClass ="lblEmail" runat="server" ID="lblEmail" />
             <br />
             <asp:Label Text="hakunamatata@gamil.com" CssClass ="lblAddress" runat="server" ID="lblAddress" />
           
        </form>
    </div>
   
</body>
</html>
