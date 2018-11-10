<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="loginuser.aspx.vb" Inherits="CBELibrary4.loginuser" %>

<!DOCTYPE html>
  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <title>Login</title>
</head>


<body>
    <form id="form2" runat="server">
    <div id="logo">
        <img src="/images/logo1.png"></div>
    <p id="log">
      
        (Not yet?)<a id="link" href="loginuser.aspx"
            class="w3-text-orange">Login</a>
    </p>


    <ul id="Ul1" runat="server">

        <li><a href="home.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        <li><a href="catalog.aspx">Catalog</a></li>

     
    <li>
        <asp:ImageButton ID="imgs" runat="server" ImageUrl="/images/search-icon.png"
            Height="25px" Width="30px" Style="margin-top: 10px; margin-left: 16px;" />
    </li>
    <li>
        <asp:TextBox ID="tsearch" runat="server"
            Height="25px" Width="300px" Style="margin-top: 10px; margin-left: 16px;"
            BorderColor="#000066"
            BorderStyle="Groove"
            ForeColor="#666666" TextMode="Search">Search</asp:TextBox>
    </li>
</ul>



 <div style="background-color:#130a4b;width:1355px;height:15px;margin-top:70px"></div>

    
        <div id="cs" style="height: 469px;margin-left: 400px;width: 500px; background-color:whitesmoke"">
      
        <p id="hcol">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="col" runat="server" CssClass="hcol" Height="40px" Text='<%#Eval("Username")%>' Style="margin-top: 0px; margin-left: 32px;" Width="363px" BorderColor="#003366" BorderWidth="2px" Font-Size="20pt" ForeColor="#CCCCCC">Enter Username</asp:TextBox>
        &nbsp;<br />
        <p id="hrol">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="rol" runat="server" CssClass="hrol" Height="40px" Text='<%#Eval("Password")%>' Style="margin-top: 0px; margin-left: 36px;" Width="363px" TextMode="Password" BorderColor="#003366" BorderWidth="2px" Font-Size="20pt" ForeColor="#999999">*********</asp:TextBox>
        &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="c" runat="server" CssClass="w3-button w3-btn w3-animate-opacity w3-card-16" Height="47px" Style="margin-left: 36px; margin-top: 16px" Text="Login" Width="367px" BackColor="#FF9900" Font-Size="23pt" ForeColor="#FFFFCC" />

    &nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#333399">Register</asp:LinkButton>
&nbsp;not a member?
            </div>  
      </form>



    <div id="footer1">
        Copyright@ 2017 CBELibrary All rights reserved<br>
        <a href="#">admin@gmail.com</a><br>
        <a href="#">09324254664</a>
    </div>

 


</body>
</html>
