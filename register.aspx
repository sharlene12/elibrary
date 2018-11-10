<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="CBELibrary4.register" %>

<!DOCTYPE html>
  <link rel="icon" href="/images/bookcase.ico"  sizes="16x16"/>
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/allstyles.css" />
  <script src="/scripts/jslides.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <title>Register</title>
    <style type="text/css">
        #hcol {
            width: 637px;
        }
        #hrol {
            width: 585px;
        }
    </style>
</head>


<body>


<form id="ford" runat="server">
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

    <div style="background-color:whitesmoke;width:1150px;height:400px;margin-left:120px;">
  
       
         <div id="cs" style="margin-left: 50px;margin-top:30px">

            <p id="hcol">
                Name&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999" Height="30px" Width="358px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
            </p>
            <p style="width: 617px">
                Address&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999" Width="376px"></asp:TextBox>
            </p>
            <p style="width: 449px">
                Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlist" runat="server" AutoPostBack="True" Height="18px" Width="75px" CssClass="w3-dropdown">
                    <asp:ListItem>Choose..</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="24px" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999" Width="116px" Visible="False"></asp:TextBox>
            </p>


            <p style="width: 449px">
                Number&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="27px" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999" TextMode="Phone" Width="163px"></asp:TextBox>
            </p>
        </div>

        <div id="Div1" style="margin-left: 600px; margin-top: -170px;">
            <p style="width: 562px">
                Email Address&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Height="29px" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999" TextMode="Email" Width="378px"></asp:TextBox>
            </p>
            <p style="width: 584px">
                Username&nbsp;
                <asp:TextBox ID="col" runat="server" CssClass="hcol" Height="33px" Style="margin-top: 15px; margin-left: 6px;" Width="358px" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#CCCCCC">Enter name</asp:TextBox>
            </p>
            &nbsp;<br />
            <p id="hrol">
                Password&nbsp;&nbsp;
                <asp:TextBox ID="rol" runat="server" CssClass="hrol" Height="28px" Style="margin-top: 0px; margin-left: 6px;" Width="363px" TextMode="Password" BorderColor="#003366" BorderWidth="2px" Font-Size="16pt" ForeColor="#999999">*********</asp:TextBox>
            </p>
            &nbsp;<br />
        </div>
        <br />

        <asp:Button ID="c" runat="server" CssClass="w3-button w3-btn w3-animate-opacity w3-card-16" Height="47px" Style="margin-left: 100px; margin-top: 16px" Text="Register" Width="367px" BackColor="#FF9900" Font-Size="23pt" ForeColor="#FFFFCC" />

      
 
          </div>
    </form>
         <div id="footer1">
        Copyright@ 2017 CBELibrary All rights reserved<br>
        <a href="#">admin@gmail.com</a><br>
        <a href="#">09324254664</a>
    </div>
  

</body>
</html>
