<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HakunaMatata_30280117.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleLogin.css" rel="stylesheet" />
  
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
                <li class="active"><a href="login.aspx">Login</a></li>
                <li><a href="Register.aspx">Register</a></li>
                <li><a href="Cart.aspx">Cart</a></li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
            </ul>
        </div>
     </header>   
     <div class="loginbox">
        <img src="Images/avatar.png" alt="Alternative Text" class="user" />
        <h2 class="auto-style1">Login</h2>
        <br />
        <form runat="server">
           <asp:Label Text="Email" CssClass ="lblemail" runat="server" />
           <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" ID="txtEmail"/>
           <asp:Label Text="Password" CssClass ="lblpass" runat="server" />
           <asp:TextBox runat="server" CssClass="txtpass" placeholder="********" ID="txtpassword" TextMode="Password" />
           <asp:Button Text="Sign in" CssClass="btnsubmit" runat="server" ID="btnSignIn" OnClick="btnSignIn_Click" />
           <asp:Label ID="lblNotRegistered" runat="server" ForeColor="White" Font-Bold="True" Text="Not registered?"></asp:Label>
           <asp:LinkButton ID="btnRegister" runat="server" ForeColor="Red" OnClick="btnRegister_Click">Register NOW</asp:LinkButton>
           <br />
           <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red"></asp:Label>
        </form>
    </div>
     
</body>
</html>
