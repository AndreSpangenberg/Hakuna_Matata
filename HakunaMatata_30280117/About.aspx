<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HakunaMatata_30280117.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleAbout.css" rel="stylesheet" />
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
                <li class="active"><a href="About.aspx">About</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
            </ul>
        </div>
    </header>
         <div class="Aboutbox">
         <h2 class="auto-style1">About</h2>
         <br />
         <form runat="server">
           <asp:Label Text="Hakuna Matata is one of KwaZulu-Natal’s newest reserves, set on the White Umfolozi River and encompassing 
           the beautiful Hakuna Matata Valley in Zululand. It’s a gorgeous region with a pristine coastline, rolling hills, 
           waving grasslands, forests, rivers, mangrove swamps and cattle ranches. This game reserve is situated 
           among the big 5 animals. Hakuna Matata game reserve is home to lodges, game-drives, activities and spa-facilities. 
           It also forms part of a proposed 22,000-hectare protected area (nature reserve). Encompassing mistbelt grasslands, 
           thornveld and river frontage, Hakuna Matata is a bush lover’s paradise."
           CssClass ="lbl1" runat="server" ID="lbl1" />
           
        </form>
    </div>

</body>
</html>
