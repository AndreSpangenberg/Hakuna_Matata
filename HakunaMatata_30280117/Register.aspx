<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HakunaMatata_30280117.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleRegister.css" rel="stylesheet" />
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
                <li class ="active"><a href="#">Register</a></li>
                <li><a href="Cart.aspx">Cart</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
            </ul>
        </div>
    </header>
    <div class="Registerbox">
        <img src="Images/avatar.png" alt="Alternative Text" class="user" />
        <h2 class="auto-style1">Register</h2>
        <br />
        <form runat="server">
           <asp:Label Text="Email" CssClass ="lblRegEmail" runat="server" />
           <asp:TextBox runat="server" CssClass="txtRegEmail" placeholder="Enter Email" ID="txtRegEmail"/>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtRegEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
           <br />
           <br />
           <asp:Label Text="Password" CssClass ="lblRegPass1" runat="server" />
           <asp:TextBox runat="server" CssClass="txtRegPass1" placeholder="********" ID="txtRegPass1" TextMode="Password" />
           <asp:Label Text="Confirm Password" CssClass ="lblRegPass2" runat="server" />
           <asp:TextBox runat="server" CssClass="txtRegPass2" placeholder="********" ID="txtRegPass2" TextMode="Password" />
           <br />
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords doesn't match" ControlToCompare="txtRegPass1" ControlToValidate="txtRegPass2" ForeColor="Red" Font-Bold="True"></asp:CompareValidator>
           <br />
           <asp:Label ID="lblDisplay" runat="server" ForeColor="Red" Font-Bold="True" Text=""></asp:Label>
           <br />
           <br />
           <asp:Button Text="Register" CssClass="btnRegister" runat="server" ID="btnRegister" OnClick="btnRegister_Click" />
           
        </form>
     </div>
</body>
</html>
